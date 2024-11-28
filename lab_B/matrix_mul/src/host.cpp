// File: src/host.cpp

#include <iostream>
#include <vector>
#include <chrono>
#include "../include/xcl2.hpp"
// #include "matrix_mul.h"  // Remove or comment out
#include "../include/host.hpp"


int main(int argc, char** argv) {
    // Matrix sizes to test
    const int sizes[] = {128, 256, 512, 1024, 2048};

    // Device and context setup
    cl_int err;
    cl::Context context;
    cl::CommandQueue q;
    cl::Kernel kernel;

    auto devices = xcl::get_xil_devices();
    auto device = devices[0];
    auto fileBuf = xcl::read_binary_file("matrix_mul.xclbin");
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};

    context = cl::Context(device, NULL, NULL, NULL, &err);
    q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE, &err);
    cl::Program program(context, {device}, bins, NULL, &err);
    kernel = cl::Kernel(program, "matrix_mul", &err);

    for (int size : sizes) {
        int M = size;
        int N = size;
        int P = size;

        size_t size_A = M * N;
        size_t size_B = N * P;
        size_t size_C = M * P;

        size_t bytes_A = size_A * sizeof(data_t);
        size_t bytes_B = size_B * sizeof(data_t);
        size_t bytes_C = size_C * sizeof(data_t);

        // Allocate host memory
        std::vector<data_t, aligned_allocator<data_t>> A(size_A);
        std::vector<data_t, aligned_allocator<data_t>> B(size_B);
        std::vector<data_t, aligned_allocator<data_t>> C(size_C);
        std::vector<data_t> C_ref(size_C);

        // Initialize matrices
        for (size_t i = 0; i < size_A; i++) A[i] = 1.0f;
        for (size_t i = 0; i < size_B; i++) B[i] = (i % N) + 1.0f;

        // Compute reference result
        for (int i = 0; i < M; i++) {
            for (int j = 0; j < P; j++) {
                data_t sum = 0;
                for (int k = 0; k < N; k++) {
                    sum += A[i * N + k] * B[k * P + j];
                }
                C_ref[i * P + j] = sum;
            }
        }

        // Allocate device buffers
        cl::Buffer buffer_A(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, bytes_A, A.data(), &err);
        cl::Buffer buffer_B(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, bytes_B, B.data(), &err);
        cl::Buffer buffer_C(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, bytes_C, C.data(), &err);

        // Set kernel arguments
        kernel.setArg(0, buffer_A);
        kernel.setArg(1, buffer_B);
        kernel.setArg(2, buffer_C);
        kernel.setArg(3, M);
        kernel.setArg(4, N);
        kernel.setArg(5, P);

        // Copy data to device
        q.enqueueMigrateMemObjects({buffer_A, buffer_B}, 0);

        // Execute the kernel
        auto start = std::chrono::high_resolution_clock::now();
        q.enqueueTask(kernel);
        q.finish();
        auto end = std::chrono::high_resolution_clock::now();

        // Copy result back to host
        q.enqueueMigrateMemObjects({buffer_C}, CL_MIGRATE_MEM_OBJECT_HOST);
        q.finish();

        // Measure execution time
        std::chrono::duration<double> diff = end - start;
        double exec_time = diff.count();

        // Verify results
        int errors = 0;
        const float epsilon = 1e-3;
        for (size_t i = 0; i < size_C; i++) {
            if (abs(C[i] - C_ref[i]) > epsilon) {
                errors++;
            }
        }

        // Calculate performance
        double num_operations = 2.0 * M * N * P;
        double gflops = (num_operations / exec_time) / 1e9;

        // Report results
        std::cout << "Matrix Size: " << size << " x " << size << std::endl;
        std::cout << "Execution Time: " << exec_time << " seconds" << std::endl;
        std::cout << "Performance: " << gflops << " GFLOPS" << std::endl;
        if (errors == 0) {
            std::cout << "Verification: PASSED" << std::endl;
        } else {
            std::cout << "Verification: FAILED with " << errors << " errors" << std::endl;
        }
        std::cout << "----------------------------------------" << std::endl;
    }

    return 0;
}
