#include <iostream>
#include <vector>
#include <thread>
#include <map>
#include <random>
#include "coup_hooks.h"
#include "zsim_hooks.h"

using namespace std;


void histogramBuckets(const vector<int>& numbers, map<int, int>& histogram, int start, int end) { 
    for (int i = start; i < end; ++i) { 
        coup_add(&histogram[numbers[i]], 1, 1029);
    } 
}

void generateRandomNumbers(vector<int>& numbers, int numElements) { 
    
    mt19937 gen(12345); // using a seed so we can see the same results
    uniform_int_distribution<int> dist(0, 100); 
    for (int i = 0; i < numElements; ++i) { 
        numbers.push_back(dist(gen)); 
    } 
}

int main(int argc, char** argv){

    if(argc != 2) {
        printf("usage: %s [number of threads]\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    unsigned nthreads = stoi(argv[1]);
    int numElements = 100000;
    vector<int> numbers; 
    generateRandomNumbers(numbers, numElements);

    map<int, int> histogram;

    vector<thread> threads;
    int chunkSize = numElements / nthreads;
    zsim_roi_begin();

    for (int i = 0; i < nthreads; ++i) { 
        int start = i * chunkSize; 
        int end;
        if (i == nthreads - 1) { // makes sure to get everything left on last thread
            end = numElements;
        } else {
            end = start + chunkSize;
        }
            threads.emplace_back(histogramBuckets, ref(numbers), ref(histogram), start, end); 
    }

    zsim_roi_end();

    for (auto& th : threads) { 
        th.join();
    }

    

    for (const auto& pair : histogram) { 
        cout << "Value: " << pair.first << " Count: " << pair.second << endl; 
    }

    return 0;
}