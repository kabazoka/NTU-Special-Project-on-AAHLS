// File: src/testbench.cpp

#include <iostream>
#include <cstdlib>
#include "matrix_mul.h"

void reference_mmul(
    const data_t *A,
    const data_t *B,
    data_t *C_ref,
    int M,
    int N,
    int K
) {
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            data_t sum = 0;
            for (int k = 0; k < K; k++) {
                sum += A[i * K + k] * B[k * N + j];
            }
            C_ref[i * N + j] = sum;
        }
    }
}

int main() {
    const int M = 64;
    const int N = 64;
    const int K = 64;

    data_t *A = new data_t[M * K];
    data_t *B = new data_t[K * N];
    data_t *C = new data_t[M * N];
    data_t *C_ref = new data_t[M * N];

    // Initialize matrices A and B with random values
    for (int i = 0; i < M * K; i++) {
        A[i] = static_cast<data_t>(rand()) / RAND_MAX;
    }
    for (int i = 0; i < K * N; i++) {
        B[i] = static_cast<data_t>(rand()) / RAND_MAX;
    }

    // Call the reference implementation
    reference_mmul(A, B, C_ref, M, N, K);

    // Call the HLS kernel
    matrix_mul(A, B, C, M, N, K);

    // Compare the results
    int errors = 0;
    const float epsilon = 1e-3;
    for (int i = 0; i < M * N; i++) {
        if (abs(C[i] - C_ref[i]) > epsilon) {
            errors++;
            std::cout << "Mismatch at index " << i << ": C = " << C[i]
                      << ", C_ref = " << C_ref[i] << std::endl;
        }
    }

    if (errors == 0) {
        std::cout << "TEST PASSED!" << std::endl;
    } else {
        std::cout << "TEST FAILED with " << errors << " errors." << std::endl;
    }

    delete[] A;
    delete[] B;
    delete[] C;
    delete[] C_ref;

    return errors;
}

