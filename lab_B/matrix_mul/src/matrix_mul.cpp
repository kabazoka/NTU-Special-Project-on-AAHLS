#include "../include/matrix_mul.hpp"

void matrix_mul(
    const data_t *A,
    const data_t *B,
    data_t *C,
    int M,
    int N,
    int P
) {
#pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem0 max_read_burst_length=256
#pragma HLS INTERFACE m_axi port=B offset=slave bundle=gmem1 max_read_burst_length=256
#pragma HLS INTERFACE m_axi port=C offset=slave bundle=gmem2 max_write_burst_length=256

#pragma HLS INTERFACE s_axilite port=A     bundle=control
#pragma HLS INTERFACE s_axilite port=B     bundle=control
#pragma HLS INTERFACE s_axilite port=C     bundle=control
#pragma HLS INTERFACE s_axilite port=M     bundle=control
#pragma HLS INTERFACE s_axilite port=N     bundle=control
#pragma HLS INTERFACE s_axilite port=P     bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    const int TILE_SIZE = 16;
    const int UNROLL_FACTOR = 4;

    data_t local_A[TILE_SIZE][TILE_SIZE];
    data_t local_B0[TILE_SIZE][TILE_SIZE];
    data_t local_B1[TILE_SIZE][TILE_SIZE];
    data_t local_C[TILE_SIZE][TILE_SIZE];

#pragma HLS ARRAY_PARTITION variable=local_A complete dim=2
#pragma HLS ARRAY_PARTITION variable=local_B0 complete dim=1
#pragma HLS ARRAY_PARTITION variable=local_B1 complete dim=1
#pragma HLS ARRAY_PARTITION variable=local_C complete dim=2

#pragma HLS DATAFLOW

    for (int i = 0; i < M; i += TILE_SIZE) {
        for (int j = 0; j < P; j += TILE_SIZE) {

            // Initialize local_C
            init_c:
            for (int ii = 0; ii < TILE_SIZE; ii++) {
#pragma HLS PIPELINE II=1
                for (int jj = 0; jj < TILE_SIZE; jj++) {
                    local_C[ii][jj] = 0;
                }
            }

            bool toggle = false;

            for (int k = 0; k < N; k += TILE_SIZE) {

                // Load tiles from A into local buffers
                load_a:
                for (int ii = 0; ii < TILE_SIZE; ii++) {
#pragma HLS PIPELINE II=1
                    for (int kk = 0; kk < TILE_SIZE; kk++) {
                        local_A[ii][kk] = A[(i + ii) * N + (k + kk)];
                    }
                }

                // Load tiles from B into double buffers (local_B0 and local_B1)
                load_b:
                for (int kk = 0; kk < TILE_SIZE; kk++) {
#pragma HLS PIPELINE II=1
                    for (int jj = 0; jj < TILE_SIZE; jj++) {
                        if (toggle)
                            local_B0[kk][jj] = B[(k + kk) * P + (j + jj)];
                        else
                            local_B1[kk][jj] = B[(k + kk) * P + (j + jj)];
                    }
                }
                toggle = !toggle;

                // Compute local_C += local_A * local_B
                compute:
                for (int ii = 0; ii < TILE_SIZE; ii++) {
                    for (int jj = 0; jj < TILE_SIZE; jj++) {
#pragma HLS PIPELINE II=1
                        data_t sum = 0;
                        for (int kk = 0; kk < TILE_SIZE; kk += UNROLL_FACTOR) {
#pragma HLS UNROLL factor=UNROLL_FACTOR
                            for (int u = 0; u < UNROLL_FACTOR; u++) {
#pragma HLS UNROLL
                                sum += local_A[ii][kk + u] * 
                                       (toggle ? local_B1[kk + u][jj] : local_B0[kk + u][jj]);
                            }
                        }
                        local_C[ii][jj] += sum;
                    }
                }
            }

            // Write back results to global memory
            store_c:
            for (int ii = 0; ii < TILE_SIZE; ii++) {
#pragma HLS PIPELINE II=1
                for (int jj = 0; jj < TILE_SIZE; jj++) {
                    C[(i + ii) * P + (j + jj)] = local_C[ii][jj];
                }
            }
        }
    }
}