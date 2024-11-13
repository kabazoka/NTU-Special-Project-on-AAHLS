// File: src/matrix_mul.cpp

#include "matrix_mul.h"
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>

// Matrix multiplication kernel
extern "C" {
void matrix_mul(
    const data_t *A,
    const data_t *B,
    data_t *C,
    int M,
    int N,
    int K
) {
#pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem0 depth=4096
#pragma HLS INTERFACE m_axi port=B offset=slave bundle=gmem1 depth=4096
#pragma HLS INTERFACE m_axi port=C offset=slave bundle=gmem2 depth=4096

#pragma HLS INTERFACE s_axilite port=A     bundle=control
#pragma HLS INTERFACE s_axilite port=B     bundle=control
#pragma HLS INTERFACE s_axilite port=C     bundle=control
#pragma HLS INTERFACE s_axilite port=M     bundle=control
#pragma HLS INTERFACE s_axilite port=N     bundle=control
#pragma HLS INTERFACE s_axilite port=K     bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    data_t local_A[MAX_SIZE][MAX_SIZE];
    data_t local_B[MAX_SIZE][MAX_SIZE];
    data_t local_C[MAX_SIZE][MAX_SIZE];

#pragma HLS ARRAY_PARTITION variable=local_A dim=2 complete
#pragma HLS ARRAY_PARTITION variable=local_B dim=1 complete

    // Read A and B matrices from global memory to local memory
    readA: for (int i = 0; i < M; i++) {
        readA_inner: for (int j = 0; j < K; j++) {
#pragma HLS PIPELINE II=1
            local_A[i][j] = A[i * K + j];
        }
    }

    readB: for (int i = 0; i < K; i++) {
        readB_inner: for (int j = 0; j < N; j++) {
#pragma HLS PIPELINE II=1
            local_B[i][j] = B[i * N + j];
        }
    }

    // Initialize local_C matrix
    initC: for (int i = 0; i < M; i++) {
        initC_inner: for (int j = 0; j < N; j++) {
#pragma HLS PIPELINE II=1
            local_C[i][j] = 0;
        }
    }

    // Perform matrix multiplication
    mmult: for (int i = 0; i < M; i++) {
        mmult_j: for (int j = 0; j < N; j++) {
#pragma HLS PIPELINE II=1
            data_t sum = 0;
            mmult_k: for (int k = 0; k < K; k++) {
#pragma HLS UNROLL
                sum += local_A[i][k] * local_B[k][j];
            }
            local_C[i][j] = sum;
        }
    }

    // Write result matrix C back to global memory
    writeC: for (int i = 0; i < M; i++) {
        writeC_inner: for (int j = 0; j < N; j++) {
#pragma HLS PIPELINE II=1
            C[i * N + j] = local_C[i][j];
        }
    }
}
}

