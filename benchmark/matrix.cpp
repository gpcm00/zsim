#include <iostream>
#include <cstdlib>
#include <cstring>
#include <thread>
#include <chrono>
#include <vector>
#include <functional> 

#include "coup_hooks.h"

using namespace std;W

// atomic add for floating point is too hard, so we are making a fixed point
// arithmetic with 1/(2^16) resolution
typedef union fixed_point_t {
    struct {
        short r,i;
    };
    int n;

    fixed_point_t() = default;
    fixed_point_t(int val) : n(val) {};

    inline fixed_point_t operator+(fixed_point_t& fp){
        fixed_point_t ret;
        ret.n = n + fp.n;
        return ret;
    };

    inline fixed_point_t operator+=(fixed_point_t& fp){
        n += fp.n;
        return *this;
    };

    inline fixed_point_t operator-(fixed_point_t& fp){
        fixed_point_t ret;
        ret.n = n - fp.n;
        return ret;
    }

    inline fixed_point_t operator-=(fixed_point_t& fp){
        n -= fp.n;
        return *this;
    }

    inline fixed_point_t operator*(fixed_point_t& fp){
        fixed_point_t ret;
        long r = (long)n * (long)fp.n;
        int error_correction = (r & (1<<16))? 1 : 0;
        ret.n = (int)(r >> 16) + error_correction;
        return ret;
    }

    // don't care about division for this benchmark

} fixed_point_t;

// convert a float to a fixed point
fixed_point_t float2fixp(float n) {
    fixed_point_t ret;
    const float ratio = 1.0f * (1<<16);
    ret.n = (int)(n * ratio);
    return ret;
}

// convert fix point to float
float fixp2float(fixed_point_t n) {
    float ret;
    const float ratio = 1.0f/(1<<16);
    ret = n.n * ratio;
    return ret;
}

// naive matrix implementation
class Matrix {
    fixed_point_t* elements;
    unsigned row, col;
   
public:
    Matrix(unsigned r, unsigned c) : row(r), col(c) {
    /* if we use native c++ algorithms, memory access pattern will
       be unpredictable, so it is better to do things from scratch */
        unsigned total_sz = row*col*sizeof(fixed_point_t);
        elements = (fixed_point_t*)malloc(total_sz);
        memset(elements, 0, total_sz);
    }

    ~Matrix() = default;

    fixed_point_t get(unsigned r, unsigned c) {
        unsigned offset = r * col + c;
        unsigned total_sz = row * col;
        if(offset > total_sz) {
            throw runtime_error("Getting invalid element");
        }
        return elements[offset];
    }

    void set(unsigned r, unsigned c, fixed_point_t fp) {
        unsigned offset = r * col + c;
        unsigned total_sz = row * col;
        if(offset > total_sz) {
            throw runtime_error("Setting invalid element");
        }
        elements[offset] = fp;
    }

    unsigned size() { return row * col; }
    unsigned rows() { return row; }
    unsigned columns() { return col; }

    Matrix operator+(Matrix& m) {
        if(m.col != col || m.row != row) {
            throw runtime_error("Row and column do not match");
        }

        Matrix ret(row, col);

        unsigned total_sz = row*col;
        for(unsigned i = 0; i < total_sz; i++) {
            ret.elements[i] = elements[i] + m.elements[i];
        }
        return ret;
    }

    Matrix operator-(Matrix& m) {
        if(m.col != col || m.row != row) {
            throw runtime_error("Row and column do not match");
        }

        Matrix ret(row, col);

        unsigned total_sz = row*col;
        for(unsigned i = 0; i < total_sz; i++) {
            ret.elements[i] = elements[i] - m.elements[i];
        }
        return ret;
    }

    Matrix operator*(Matrix& m) {
        if(col != m.row) {
            throw runtime_error("Matrix multiplication error");
        }

        Matrix ret(row, m.col);

        for(unsigned k = 0; k < m.col; k++) {
            for(unsigned r = 0; r < row; r++) {
                unsigned ret_off = r * m.col + k;
                for(unsigned c = 0; c < col; c++) {
                    unsigned m_off = c * m.col + k;
                    unsigned off = r * col + c;
                    fixed_point_t tmp = elements[off] * m.elements[m_off];
                    ret.elements[ret_off] += tmp;
                }
            }
        }
        return ret;
    }

    void erase() {
        if(elements != NULL) {
            free(elements); 
        }
        elements = NULL;
        row = 0; 
        col = 0; 
    }

    friend class Decomposed_Matrix;
};

void display_matrix(Matrix a) {
    for(unsigned r = 0; r < a.rows(); r++)
        for(unsigned c = 0; c < a.columns(); c++)
            printf("[%d, %d] %f\n", r, c, fixp2float(a.get(r,c)));
}

class Decomposed_Matrix {
    const unsigned sz = 16;
    Matrix& A;

public:
    Matrix* Res;

    unsigned size() {return sz;}

    Matrix cpy_A_matrix(unsigned pt) {
        /*
            decompose A matrix into ONE chunk of size sz
            For example if size is 3, and A is a 5 by 5 matrix
                a11 a12 a13 a14 a15
                a21 a22 a23 a24 a25
            A = a31 a32 a33 a34 a35
                a41 a42 a43 a44 a45
                a51 a52 a53 a54 a55

            then chunk 0 will be        chunk 1 will be     
                    a11 a12 a13                  a14 a15 0        
            A_0 =   a21 a22 a23          A_1 =   a24 a25 0         
                    a31 a32 a33                  a34 a35 0
            
            chunk 2                      chunk 3
                    a41 a42 a43                  a44 a45 0
            A_2 =   a51 a52 a53           A_3 =  a54 a55 0
                     0   0   0                    0   0  0

            However, this code allows A to be whatever size you want,
            and we are decomposing into sizes of 16... I used size 3 for simplicity

            This function only returns one chunk based on the pt variable
        */
        
        Matrix newMat(sz, sz);

        // check how many times we need to decompose the matrix in rows and columns
        unsigned num_r_pieces = (A.rows() + (sz - (A.rows() % sz))) / sz;
        unsigned num_c_pieces = (A.columns() + (sz - (A.columns() % sz))) / sz;

        unsigned col_pt = pt % num_c_pieces;    // current col decomposition
        unsigned row_pt = pt / num_c_pieces;    // current row decomposition

        if(col_pt >= num_c_pieces) {
            throw runtime_error("Too many decompositions");
        }

        // do the actual copying
        for(unsigned r = 0; r < sz; r++) {
            unsigned r_offs = (row_pt * sz + r); 
            if(r_offs >= A.rows()) 
                continue;
            for(unsigned c = 0; c < sz; c++) {
                unsigned c_offs = (col_pt * sz + c);
                if(c_offs >= A.columns()) 
                    continue;
                newMat.set(r, c, A.get(r_offs, c_offs));
            }
        }

        return newMat;
    };

    Matrix cpy_B_matrix(Matrix& B, unsigned pt) {
        /*
            similar to cpy_A_matrix, but this function
            decomposes B into chunks of 16 x number of columns in B
        */
        Matrix newMat(sz, B.columns());

        // check how many rows we need to decompose
        unsigned num_r_pieces = (B.rows() + (sz - (B.rows() % sz))) / sz;

        if(pt >= num_r_pieces) {
            throw runtime_error("Invalid decomposition on the operand matrix");
        }

        // copy the elements of B into the new calculation matrix
        for(unsigned r = 0; r < sz; r++) {
            unsigned row_offs = (pt * sz + r);
            if(row_offs >= B.rows()) {
                continue;
            }
            for(unsigned c = 0; c < B.columns(); c++) {
                newMat.set(r, c, B.get(row_offs, c));
            }
        }

        return newMat;
    }

    Decomposed_Matrix(Matrix& Mat) : A(Mat) {};

    void mult(Matrix& B, unsigned ptA) {

        /* multiply chunk A to its corresponding chunk in B */

        if(Res->row != A.row && Res->col != B.col) {
            printf("%d - %d, %d\n", ptA, Res->row, Res->col);
            throw runtime_error("Invalid matrix multiplication");
        }

        printf("Initiating decomposition: %d\n", ptA);

        // re-implementation of the ceiling function - kinda
        unsigned num_c_pieces_A = (A.col + (sz - (A.col % sz))) / sz;
        unsigned num_r_pieces_A = (A.row + (sz - (A.row % sz))) / sz;

        unsigned num_r_pieces_B = (B.row + (sz - (B.row % sz))) / sz;

        // these variables point to the first variable on the row and column
        unsigned col_pt = ptA % num_c_pieces_A;    
        unsigned row_pt = ptA / num_c_pieces_A;

        Matrix CalA = cpy_A_matrix(ptA);
        Matrix CalB = cpy_B_matrix(B, col_pt);

        // multiply!
        for(unsigned k = 0; k < CalB.col; k++) {
            unsigned k_offs = k;

            for(unsigned i = 0; i < CalA.row; i++) {
                unsigned i_offs = row_pt * sz + i;
                
                long tmp = 0;     // long for extra precision
                #pragma omp simd
                for(unsigned j = 0; j < CalA.col; j++) {
                    long calc = (long)CalA.elements[i*CalA.col + j].n * (long)CalB.elements[j*CalB.col + k].n;
                    tmp += calc;
                }

                // scale result back to fixed_point_t
                int result = (int)(tmp >> 16) + ((tmp & (1<<16))? 1 : 0);

                // avoid seg fault for matrix that cannot fit into chunks of 16 exactly
                if(i_offs < Res->row && k_offs < Res->col) {
                    coup_add(&Res->elements[i_offs * Res->col + k_offs].n, result, 1029);    // finally where the magic happens
                }
            }
        }

        printf("Done %d\n", ptA);

        CalA.erase();
        CalB.erase();
    }
};

int main() {

    Matrix A = Matrix(100,256);
    Matrix B = Matrix(256,100);

    // add something to the matrix
    float v = 0.01;
    for(unsigned r = 0; r < A.rows(); r++) {
        for(unsigned c = 0; c < A.columns(); c++) {
            A.set(r, c, float2fixp(v));
            v += 0.01;
        }
    }

    // same as above
    v = 0.01;
    for(unsigned r = 0; r < B.rows(); r++) {
        for(unsigned c = 0; c < B.columns(); c++) {
            B.set(r, c, float2fixp(v));
            v += 0.01;
        }
    }

    Matrix C = A * B;         // to verify that the algorithm is working   
    
    Decomposed_Matrix DA(A);

    zsim_roi_begin();
    
    Matrix CC = Matrix(A.rows(), B.columns());    // result matrix
    DA.Res = &CC;

    // check how many chunks we need
    unsigned num_c_pieces_A = (A.columns() + (DA.size() - (A.columns() % DA.size()))) / DA.size();
    unsigned num_r_pieces_A = (A.rows() + (DA.size() - (A.rows() % DA.size()))) / DA.size();

    // one thread per chunk
    vector<thread> jobs;
    printf("%d threads will be created\n", num_c_pieces_A * num_r_pieces_A);

    // assign each thread to emulate DSA
    unsigned ptA = 0;
    for(unsigned rA = 0; rA < num_r_pieces_A; rA++) {
        for(unsigned cA = 0; cA < num_c_pieces_A; cA++) {
            printf("issuing thread %d\n", ptA);
            jobs.emplace_back(&Decomposed_Matrix::mult, &DA, ref(B), ptA++);
        }
    }

    for(unsigned i = 0; i < jobs.size(); i++) {
        if(jobs[i].joinable()){
            jobs[i].join();
            printf("Joined %d\n", i);
        }
    }


    zsim_roi_end();

    // sanity check to make sure that the multiplication is right
    for(unsigned r = 0; r < C.rows(); r++) {
        for(unsigned c = 0; c < C.columns(); c++) {
            fixed_point_t c_tmp = C.get(r, c);
            fixed_point_t cc_tmp = CC.get(r, c);
            fixed_point_t error = c_tmp - cc_tmp;
            fixed_point_t limit = float2fixp(0.001);
            if(error.n > limit.n) {            // decomposed matrix is more precise
                printf("FAIL - ");
                printf("[%d, %d] %f\t %f\n", r, c, fixp2float(c_tmp), fixp2float(cc_tmp));
            }
        }
    }

    printf("end\n");

    return 0;
}

