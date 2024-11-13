// File: src/matrix_mul.h

#ifndef MATRIX_MUL_H
#define MATRIX_MUL_H

#define MAX_SIZE 256
typedef float data_t;

// Matrix multiplication kernel function declaration
extern "C" {
void matrix_mul(
    const data_t *A,
    const data_t *B,
    data_t *C,
    int M,
    int N,
    int K
);
}

#endif // MATRIX_MUL_H

