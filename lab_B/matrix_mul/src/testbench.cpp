// File: src/testbench.cpp

#include <iostream>
#include <cstdlib>
#include <cmath>
#include "matrix_mul.h"

#define MAX_SIZE 4096  // Maximum matrix size

void reference_mmul(
    const data_t *A,
    const data_t *B,
    data_t *C_ref,
    int M,
    int N,
    int P
) {
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < P; j++) {
            data_t sum = 0;
            for (int k = 0; k < N; k++) {
                sum += A[i * N + k] * B[k * P + j];
            }
            C_ref[i * P + j] = sum;
        }
    }
}

int main() {
    // Matrix sizes to test
    const int sizes[] = {128, 256, 512, 1024, 2048, 4096};
    const int num_sizes = sizeof(sizes) / sizeof(sizes[0]);

    bool all_tests_passed = true;

    for (int idx = 0; idx < num_sizes; idx++) {
        int size = sizes[idx];
        int M = size;
        int N = size;
        int P = size;

        size_t size_A = M * N;
        size_t size_B = N * P;
        size_t size_C = M * P;

        data_t *A = new data_t[size_A];
        data_t *B = new data_t[size_B];
        data_t *C = new data_t[size_C];
        data_t *C_ref = new data_t[size_C];

        // Initialize matrices
        for (size_t i = 0; i < size_A; i++) A[i] = 1.0f;
        for (size_t i = 0; i < size_B; i++) B[i] = (i % N) + 1.0f;

        // Compute reference result
        reference_mmul(A, B, C_ref, M, N, P);

        // Call the kernel
        matrix_mul(A, B, C, M, N, P);

        // Verify results
        int errors = 0;
        const float epsilon = 1e-3;
        for (size_t i = 0; i < size_C; i++) {
            if (std::abs(C[i] - C_ref[i]) > epsilon) {
                errors++;
            }
        }

        if (errors == 0) {
            std::cout << "Test PASSED for matrix size " << size << " x " << size << std::endl;
        } else {
            std::cout << "Test FAILED for matrix size " << size << " x " << size << " with " << errors << " errors." << std::endl;
            all_tests_passed = false;
        }

        delete[] A;
        delete[] B;
        delete[] C;
        delete[] C_ref;
    }

    if (all_tests_passed) {
        std::cout << "All tests passed successfully!" << std::endl;
        return 0;  // Success
    } else {
        std::cout << "Some tests failed. Please check the errors." << std::endl;
        return 1;  // Failure
    }
}
