#include <iostream>
#include <thread>
#include <random>
#include "coup_hooks.h"
#include "zsim_hooks.h"

using namespace std;

void histogramBuckets(const int* numbers, int* histogram, int start, int end) { 
    for (int i = start; i < end; ++i) { 
        coup_add(&histogram[numbers[i]], 1, 1029);
    } 
}

void generateRandomNumbers(int* numbers, int numElements) { 
    mt19937 gen(12345); // using a seed so we can see the same results
    uniform_int_distribution<int> dist(0, 100); 
    for (int i = 0; i < numElements; ++i) { 
        numbers[i] = dist(gen); 
    } 
}

int main(int argc, char** argv){

    if(argc != 2) {
        cout << "usage: " << argv[0] << " [number of threads]" << endl;
        return EXIT_FAILURE;
    }

    unsigned nthreads = stoi(argv[1]);
    int numElements = 100000;
    int* numbers = new int[numElements]; 
    generateRandomNumbers(numbers, numElements);

    int histogram[101] = {0}; // Assuming values range from 0 to 100

    thread* threads = new thread[nthreads];
    int chunkSize = numElements / nthreads;
    zsim_roi_begin();
    for (int i = 0; i < nthreads; ++i) { 
        int start = i * chunkSize; 
        int end;
        if (i == nthreads - 1) { // ensures to get everything left on last thread
            end = numElements;
        } else {
            end = start + chunkSize;
        }
        threads[i] = thread(histogramBuckets, numbers, histogram, start, end); 
    }

    zsim_roi_end();
    
    for (int i = 0; i < nthreads; ++i) { 
        threads[i].join();
    }

    for (int i = 0; i < 101; ++i) { 
        cout << "Value: " << i << " Count: " << histogram[i] << endl; 
    }

    delete[] numbers;
    delete[] threads;

    return 0;
}
