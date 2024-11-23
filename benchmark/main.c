#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <errno.h>
#include <pthread.h>

#include "zsim_hooks.h"
#include "coup_hooks.h"

#define LEN(arr)    (sizeof(arr)/sizeof(arr[0]))

unsigned counter = 0;

void* inc_thread(void* addr) {
    int val = coup_load((int*)addr, 1029);
    printf("address = 0x%lx\n", addr);
    for(unsigned i = 0; i < 1048576; i++) {
        val++;
    }
    coup_add((int*)addr, val);

    return NULL;
}

int main(int argc, char** argv) {
    unsigned nthreads;
    pthread_t* thrd;

    if(argc != 2) {
        printf("usage: %s [number of threads]\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    nthreads = atoi(argv[1]);

    if(!(nthreads > 0)) {
        printf("usage: %s [number of threads]\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    thrd = (pthread_t*)malloc(nthreads * sizeof(pthread_t));
    if(thrd == NULL) {
        perror("malloc: ");
        exit(EXIT_FAILURE);
    }

    printf("initializing %d threads\n", nthreads);

    zsim_roi_begin();

    for(int i = 0; i < nthreads; i++) {
        if(errno = pthread_create(&thrd[i], NULL, inc_thread, (void*)&counter)) {
            perror("pthread_create: ");
            exit(EXIT_FAILURE);
        }
    }

    printf("Threads created\n");

    for(int i = 0; i < nthreads; i++) {
        if(errno = pthread_join(thrd[i], NULL)) {
            perror("pthread_join: ");
            exit(EXIT_FAILURE);
        }
    }

    zsim_roi_end();


    printf("Threads joined\n");
    printf("Counter = %d\n", counter);

    free(thrd);


    return 0;
}