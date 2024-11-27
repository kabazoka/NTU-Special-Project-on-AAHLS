// File: src/matrix_mul.h

#ifndef MATRIX_MUL_H
#define MATRIX_MUL_H

#ifndef __HOST__
// Include HLS headers only when not compiling for the host
#include <ap_int.h>
// Other HLS-specific includes
#endif

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
