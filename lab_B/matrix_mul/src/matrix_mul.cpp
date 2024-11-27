// File: src/matrix_mul.cpp

#include "matrix_mul.hpp"

void matrix_mul(
    const data_t *A,
    const data_t *B,
    data_t *C,
    int M,
    int N,
    int P
) {
#pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=B offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=C offset=slave bundle=gmem2

#pragma HLS INTERFACE s_axilite port=A     bundle=control
#pragma HLS INTERFACE s_axilite port=B     bundle=control
#pragma HLS INTERFACE s_axilite port=C     bundle=control
#pragma HLS INTERFACE s_axilite port=M     bundle=control
#pragma HLS INTERFACE s_axilite port=N     bundle=control
#pragma HLS INTERFACE s_axilite port=P     bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    const int TILE_SIZE = 64;
    data_t local_A[TILE_SIZE][TILE_SIZE];
    data_t local_B[TILE_SIZE][TILE_SIZE];
    data_t local_C[TILE_SIZE][TILE_SIZE];

#pragma HLS ARRAY_PARTITION variable=local_A dim=2 complete
#pragma HLS ARRAY_PARTITION variable=local_B dim=1 complete
#pragma HLS ARRAY_PARTITION variable=local_C dim=2 complete

    for (int i = 0; i < M; i += TILE_SIZE) {
        for (int j = 0; j < P; j += TILE_SIZE) {
            // Initialize local_C
            for (int ii = 0; ii < TILE_SIZE; ii++) {
                for (int jj = 0; jj < TILE_SIZE; jj++) {
#pragma HLS PIPELINE II=1
                    local_C[ii][jj] = 0;
                }
            }

            for (int k = 0; k < N; k += TILE_SIZE) {
                // Load tiles into local buffers
                for (int ii = 0; ii < TILE_SIZE; ii++) {
                    for (int kk = 0; kk < TILE_SIZE; kk++) {
#pragma HLS PIPELINE II=1
                        local_A[ii][kk] = A[(i + ii) * N + (k + kk)];
                    }
                }

                for (int kk = 0; kk < TILE_SIZE; kk++) {
                    for (int jj = 0; jj < TILE_SIZE; jj++) {
#pragma HLS PIPELINE II=1
                        local_B[kk][jj] = B[(k + kk) * P + (j + jj)];
                    }
                }

                // Compute local_C += local_A * local_B
                for (int ii = 0; ii < TILE_SIZE; ii++) {
                    for (int jj = 0; jj < TILE_SIZE; jj++) {
#pragma HLS PIPELINE II=1
                        data_t sum = local_C[ii][jj];
                        for (int kk = 0; kk < TILE_SIZE; kk++) {
#pragma HLS UNROLL
                            sum += local_A[ii][kk] * local_B[kk][jj];
                        }
                        local_C[ii][jj] = sum;
                    }
                }
            }

            // Write back results to global memory
            for (int ii = 0; ii < TILE_SIZE; ii++) {
                for (int jj = 0; jj < TILE_SIZE; jj++) {
#pragma HLS PIPELINE II=1
                    C[(i + ii) * P + (j + jj)] = local_C[ii][jj];
                }
            }
        }
    }
}
