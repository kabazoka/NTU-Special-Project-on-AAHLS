// File: src/matrix_mul.h

#ifndef MATRIX_MUL_H
#define MATRIX_MUL_H

#include <ap_int.h>

typedef float data_t;

extern "C" {
void matrix_mul(
    const data_t *A,
    const data_t *B,
    data_t *C,
    int M,
    int N,
    int P
);
}

#endif // MATRIX_MUL_H
