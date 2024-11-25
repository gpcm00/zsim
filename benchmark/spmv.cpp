#include <iostream>
#include "zsim_hooks.h"
#include "coup_hooks.h"
#include <thread>
#include <vector>
#include <random>


struct CSCMatrix {
    int rows, cols;
    std::vector<int> colPtr;
    std::vector<int> rowIndices;
    std::vector<int> values;
};

CSCMatrix generateRandomCSCMatrix(int M, int N, double sparsity) {
    CSCMatrix matrix;
    matrix.rows = M;
    matrix.cols = N;
    matrix.colPtr.resize(N + 1, 0);

    std::mt19937 generator(12345); // using a seed so we can see the same results
    std::uniform_int_distribution<int> distribution(0, 1000); 
    std::uniform_real_distribution<double> dist(0.1); 


    int nnz = 0; // Number of non-zero entries

    for (int col = 0; col < N; ++col) {
        for (int row = 0; row < M; ++row) {
            if (dist(generator) > sparsity) {
                matrix.rowIndices.push_back(row);
                matrix.values.push_back(distribution(generator));
                ++nnz;
            }
        }
        matrix.colPtr[col + 1] = nnz;
    }

    return matrix;
}

std::vector<int> generateRandomVector(int N) {
    std::vector<int> vector(N);
    std::default_random_engine generator;
    std::uniform_real_distribution<int> distribution(1, 5);

    for (int i = 0; i < N; ++i) {
        vector[i] = distribution(generator);
    }

    return vector;
}

void multiplyCSCMatVecChunk(const CSCMatrix &matrix, const std::vector<int> &vec, std::vector<int> &result, int startCol, int endCol) {
    std::vector<int> localResult(matrix.rows, 0.0);

    for (int col = startCol; col < endCol; ++col) {
        for (int idx = matrix.colPtr[col]; idx < matrix.colPtr[col + 1]; ++idx) {
            localResult[matrix.rowIndices[idx]] += matrix.values[idx] * vec[col];
        }
    }

    
    for (int row = 0; row < matrix.rows; ++row) {

        int val = coup_load(&result[row], 1029);
        val += localResult[row];
    }
}

std::vector<int> parallelMultiplyCSCMatVec(const CSCMatrix &matrix, const std::vector<int> &vec, int numThreads) {
    std::vector<int> result(matrix.rows, 0.0);
    
    std::vector<std::thread> threads;
    int chunkSize = (matrix.cols + numThreads - 1) / numThreads;

    for (int i = 0; i < numThreads; ++i) {
        int startCol = i * chunkSize;
        int endCol = std::min(startCol + chunkSize, matrix.cols);

        threads.emplace_back(multiplyCSCMatVecChunk, std::cref(matrix), std::cref(vec), std::ref(result), startCol, endCol);
    }

    for (auto &thread : threads) {
        thread.join();
    }

    return result;
}

int main(int argc, char** argv) {

    if(argc != 4) {
        printf("usage: %s [M of matrix] [N of matrix and vector] [number of threads]\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    int M = std::stoi(argv[1]); // Number of rows
    int N = std::stoi(argv[2]); // Number of columns
    int numThreads = std::stoi(argv[3]); // Number of threads
    double sparsity = 0.7; // Sparsity level
    

    CSCMatrix matrix = generateRandomCSCMatrix(M, N, sparsity);
    std::vector<int> vector = generateRandomVector(N);

    zsim_roi_begin();

    std::vector<int> result = parallelMultiplyCSCMatVec(matrix, vector, numThreads);

    zsim_roi_end();

    std::cout << "Resultant Vector:" << std::endl;
    for (int val : result) {
        std::cout << val << " ";
    }
    

    return 0;
}
