#include <iostream>
#include "zsim_hooks.h"
#include "coup_hooks.h"
#include <thread>
#include <random>
#include <algorithm>

using namespace std;

struct CSCMatrix {
    int rows, cols;
    int* colPtr;
    int* rowIndices;
    int* values;
};

CSCMatrix generateRandomCSCMatrix(int M, int N, double sparsity) {
    CSCMatrix matrix;
    matrix.rows = M;
    matrix.cols = N;
    matrix.colPtr = new int[N + 1];
    fill(matrix.colPtr, matrix.colPtr + N + 1, 0);
    
    vector<int> rowIndices;
    vector<int> values;

    mt19937 generator(12345); // using a seed so we can see the same results
    uniform_int_distribution<int> distribution(0, 100); 
    uniform_real_distribution<double> dist(0.1); 

    for (int col = 0; col < N; ++col) {
        for (int row = 0; row < M; ++row) {
            if (dist(generator) > sparsity) {
                rowIndices.push_back(row);
                values.push_back(distribution(generator));
            }
        }
        matrix.colPtr[col + 1] = rowIndices.size();
    }

    matrix.rowIndices = new int[rowIndices.size()];
    matrix.values = new int[values.size()];

    copy(rowIndices.begin(), rowIndices.end(), matrix.rowIndices);
    copy(values.begin(), values.end(), matrix.values);

    return matrix;
}

void generateRandomVector(int* vector, int N) {
    default_random_engine generator;
    uniform_int_distribution<int> distribution(1, 5);

    for (int i = 0; i < N; ++i) {
        vector[i] = distribution(generator);
    }
}

void multiplyCSCMatVecChunk(const CSCMatrix &matrix, const int* vec, int* result, int startCol, int endCol) {
    int* localResult = new int[matrix.rows]();
    
    for (int col = startCol; col < endCol; ++col) {
        for (int idx = matrix.colPtr[col]; idx < matrix.colPtr[col + 1]; ++idx) {
            localResult[matrix.rowIndices[idx]] += matrix.values[idx] * vec[col]; // coup add
        }
    }

    for (int row = 0; row < matrix.rows; ++row) {
        coup_add(&result[row], localResult[row], 1029);
    }

    delete[] localResult;
}

void parallelMultiplyCSCMatVec(const CSCMatrix &matrix, const int* vec, int* result, int numThreads) {
    thread* threads = new thread[numThreads];
    int chunkSize = (matrix.cols + numThreads - 1) / numThreads;

    for (int i = 0; i < numThreads; ++i) {
        int startCol = i * chunkSize;
        int endCol = min(startCol + chunkSize, matrix.cols);

        threads[i] = thread(multiplyCSCMatVecChunk, cref(matrix), vec, result, startCol, endCol);
    }

    for (int i = 0; i < numThreads; ++i) {
        threads[i].join();
    }

    delete[] threads;
}

int main(int argc, char** argv) {

    if(argc != 2) {
        cout << "usage: " << argv[0] << " [number of threads]" << endl;
        return EXIT_FAILURE;
    }

    int M = 1000; // Number of rows
    int N = 10000; // Number of columns
    int numThreads = stoi(argv[1]); // Number of threads
    double sparsity = 0.7; // Sparsity level

    CSCMatrix matrix = generateRandomCSCMatrix(M, N, sparsity);
    int* vector = new int[N];
    generateRandomVector(vector, N);

    zsim_roi_begin();

    int* result = new int[M]();
    parallelMultiplyCSCMatVec(matrix, vector, result, numThreads);

    zsim_roi_end();

    cout << "Resultant Vector:" << endl;
    for (int i = 0; i < M; ++i) {
        cout << result[i] << " ";
    }
    cout << endl;

    delete[] matrix.colPtr;
    delete[] matrix.rowIndices;
    delete[] matrix.values;
    delete[] vector;
    delete[] result;

    return 0;
}
