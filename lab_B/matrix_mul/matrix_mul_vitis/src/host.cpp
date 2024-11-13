// File: src/host.cpp

#include <iostream>
#include <fstream>
#include <vector>
#include <cstdlib>
#include "xcl2.hpp"
#include "matrix_mul.h"

int main(int argc, char** argv) {
    const int M = 64;
    const int N = 64;
    const int K = 64;

    size_t matrix_size_bytes_A = sizeof(data_t) * M * K;
    size_t matrix_size_bytes_B = sizeof(data_t) * K * N;
    size_t matrix_size_bytes_C = sizeof(data_t) * M * N;

    std::vector<data_t, aligned_allocator<data_t>> A(M * K);
    std::vector<data_t, aligned_allocator<data_t>> B(K * N);
    std::vector<data_t, aligned_allocator<data_t>> C(M * N);

    // Initialize matrices A and B with random values
    for (int i = 0; i < M * K; i++) {
        A[i] = static_cast<data_t>(rand()) / RAND_MAX;
    }
    for (int i = 0; i < K * N; i++) {
        B[i] = static_cast<data_t>(rand()) / RAND_MAX;
    }

    // Get the device
    cl_int err;
    cl::Context context;
    cl::CommandQueue q;
    cl::Kernel kernel;

    auto devices = xcl::get_xil_devices();
    auto fileBuf = xcl::read_binary_file("matrix_mul.xclbin");
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    bool valid_device = false;

    for (unsigned int i = 0; i < devices.size(); i++) {
        auto device = devices[i];
        OCL_CHECK(err, context = cl::Context(device, NULL, NULL, NULL, &err));
        OCL_CHECK(err, q = cl::CommandQueue(context, device,
                                            CL_QUEUE_PROFILING_ENABLE, &err));

        std::cout << "Trying to program device: "
                  << device.getInfo<CL_DEVICE_NAME>() << std::endl;
        cl::Program program(context, {device}, bins, NULL, &err);

        if (err != CL_SUCCESS) {
            std::cout << "Failed to program device with xclbin file!" << std::endl;
        } else {
            std::cout << "Device programmed successfully!" << std::endl;
            OCL_CHECK(err, kernel = cl::Kernel(program, "matrix_mul", &err));
            valid_device = true;
            break;
        }
    }

    if (!valid_device) {
        std::cerr << "Failed to program any device found, exiting." << std::endl;
        exit(EXIT_FAILURE);
    }

    // Allocate buffers
    OCL_CHECK(err, cl::Buffer buffer_A(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
                                       matrix_size_bytes_A, A.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_B(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
                                       matrix_size_bytes_B, B.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_C(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY,
                                       matrix_size_bytes_C, C.data(), &err));

    // Set kernel arguments
    int arg_index = 0;
    OCL_CHECK(err, err = kernel.setArg(arg_index++, buffer_A));
    OCL_CHECK(err, err = kernel.setArg(arg_index++, buffer_B));
    OCL_CHECK(err, err = kernel.setArg(arg_index++, buffer_C));
    OCL_CHECK(err, err = kernel.setArg(arg_index++, M));
    OCL_CHECK(err, err = kernel.setArg(arg_index++, N));
    OCL_CHECK(err, err = kernel.setArg(arg_index++, K));

    // Copy input data to device global memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_A, buffer_B},
                                                    0 /* 0 means from host*/));

    // Launch the kernel
    OCL_CHECK(err, err = q.enqueueTask(kernel));

    // Copy result from device global memory to host
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_C},
                                                    CL_MIGRATE_MEM_OBJECT_HOST));
    q.finish();

    // Verification
    std::vector<data_t> C_ref(M * N, 0);
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            data_t sum = 0;
            for (int k = 0; k < K; k++) {
                sum += A[i * K + k] * B[k * N + j];
            }
            C_ref[i * N + j] = sum;
        }
    }

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

    return errors;
}
