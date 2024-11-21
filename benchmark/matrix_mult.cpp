#include <thread>
#include <mutex>
#include <condition_variable>
#include <iostream>
class Matrix {
    
    unsigned rows;
    unsigned columns;
    
    unsigned total;
    float* data;

public:
    Matrix(unsigned r, unsigned c) {
        rows = r;
        columns = c;

        total = r*c;

        data = (float*)malloc(total*sizeof(float));
    };

    ~Matrix() { free(data); };

    bool set(unsigned r, unsigned c, float d) {
        unsigned offs = c*rows + r;
        if(offs > total) return false;
        data[offs] = d;
        return true;
    }

};