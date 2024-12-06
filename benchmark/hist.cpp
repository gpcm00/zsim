#include <iostream>
#include "zsim_hooks.h"
#include "coup_hooks.h"
#include <thread>
#include <vector>
#include <map>
#include <random>


void histogramBuckets(const std::vector<int>& numbers, std::map<int, int>& histogram, int start, int end) { 
    for (int i = start; i < end; ++i) { 
        
        coup_add(&histogram[numbers[i]], 1, 1029);
        
    } 
}

void generateRandomNumbers(std::vector<int>& numbers, int numElements) { 
    
    std::mt19937 gen(12345); // using a seed so we can see the same results
    std::uniform_int_distribution<int> dist(0, 1000); 
    for (int i = 0; i < numElements; ++i) { 
        numbers.push_back(dist(gen)); 
    } 
}

int main(int argc, char** argv){

    if(argc != 2) {
        printf("usage: %s [number of threads]\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    unsigned nthreads = std::stoi(argv[1]);
    int numElements = 100000;
    std::vector<int> numbers; 
    generateRandomNumbers(numbers, numElements);

    std::map<int, int> histogram;

    std::vector<std::thread> threads;
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
            threads.emplace_back(histogramBuckets, std::ref(numbers), std::ref(histogram), start, end); 
    }

    for (auto& th : threads) { 
        th.join();
    }

    zsim_roi_end();

    for (const auto& pair : histogram) { 
        std::cout << "Value: " << pair.first << " Count: " << pair.second << std::endl; 
    }

    return 0;
}