#ifndef COUP_HOOKS_H
#define COUP_HOOKS_H
#include "zsim_hooks.h"

#ifdef __cplusplus
extern "C" {
#endif

#define ACC_ADD 1029
#define ACC_AND 1030
#define ACC_OR  1031
#define ACC_XOR 1032

void coup_add(int *addr, int val, unsigned coup_op) {
    // just an atomic add in assembly
    __asm__ __volatile__(
         " xchg %%rcx, %%rcx ;\n"
         " lock addl %0, %1  ;\n"
        : "=m"(*addr)          
        : "ir"(val), "m"(*addr) , "c"(coup_op)
        : "memory"
    );
}


int coup_load(int* var, unsigned coup_op) {
    int output;
    COMPILER_BARRIER();
    __asm__ __volatile__(
        " xchg %%rcx, %%rcx ;\n"        // magic op
        " mov %1, %0        ;\n"        // memory load
        " xor %0, %0        ;\n"        // identity operation
        : "=r"(output) 
        : "m"(*var), "c"(coup_op)
    );
    COMPILER_BARRIER();
    return output;
}


#ifdef __cplusplus
}
#endif

#endif
