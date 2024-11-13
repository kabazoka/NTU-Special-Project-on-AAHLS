# Matrix Multiplication Project using Vitis HLS for Xilinx U50

## Table of Contents

- [Matrix Multiplication Project using Vitis HLS for Xilinx U50](#matrix-multiplication-project-using-vitis-hls-for-xilinx-u50)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Prerequisites](#prerequisites)
  - [Setting Up the Environment](#setting-up-the-environment)
  - [Creating the Matrix Multiplication Kernel](#creating-the-matrix-multiplication-kernel)
  - [Writing the Testbench](#writing-the-testbench)
  - [Running C Simulation](#running-c-simulation)
  - [Synthesizing the Design](#synthesizing-the-design)
  - [Synthesizing the Design](#synthesizing-the-design-1)
    - [Update the HLS Script](#update-the-hls-script)
    - [Run Synthesis](#run-synthesis)
    - [Analyze Synthesis Reports](#analyze-synthesis-reports)
  - [Exporting the Kernel](#exporting-the-kernel)
    - [Export IP](#export-ip)
    - [Locate the Exported Files](#locate-the-exported-files)
  - [Creating the Vitis Application](#creating-the-vitis-application)
    - [Directory Structure](#directory-structure)
    - [Copy the Kernel and Header Files](#copy-the-kernel-and-header-files)
    - [Write the Host Application](#write-the-host-application)
    - [Code Explanation](#code-explanation)
    - [Include the Header File](#include-the-header-file)
  - [Building and Running the Application](#building-and-running-the-application)
    - [Create a Makefile](#create-a-makefile)
    - [Build the Application](#build-the-application)
    - [Run the Application](#run-the-application)
    - [Expected Output](#expected-output)
  - [Conclusion](#conclusion)
  - [References](#references)

## Introduction

This tutorial guides you through the process of creating a matrix multiplication project using Vitis High-Level Synthesis (HLS) for the Xilinx Alveo U50 accelerator card. You’ll learn how to:
- Write the matrix multiplication kernel using C++.
- Create a testbench for simulation and verification.
- Synthesize the design and generate the hardware description.
- Integrate the kernel into a Vitis application for hardware acceleration.
- Build and run the application on the FPGA.

By the end of this tutorial, you’ll have a working matrix multiplication application accelerated on the Xilinx U50 FPGA.

## Prerequisites

Before starting, ensure you have the following:
- Vitis Unified Software Platform: Version 2020.2 or later.
- Xilinx Alveo U50 Accelerator Card: Installed and configured.
- Xilinx Runtime (XRT): Installed on your host machine.
- Git: For cloning repositories.
- C/C++ Compiler: GCC or similar.
- Basic Knowledge: Familiarity with C/C++ programming and FPGA concepts.

## Setting Up the Environment

1. **Install Vitis and XRT**
    - **Vitis Installation**: Download and install the Vitis Unified Software Platform from the Xilinx website.
    - **XRT Installation**: Install the appropriate Xilinx Runtime (XRT) for your operating system and Alveo card.

2. **Set Up Environment Variables**

    Source the Vitis and XRT setup scripts to configure your environment:

    ```sh
    # Source Vitis setup script
    source /opt/xilinx/Vitis/2020.2/settings64.sh

    # Source XRT setup script
    source /opt/xilinx/xrt/setup.sh
    ```

3. **Verify the Alveo U50 Card**

    Check if the Alveo U50 card is properly installed:

    ```sh
    xbutil validate
    ```

## Creating the Matrix Multiplication Kernel

We will write a matrix multiplication kernel in C++ that will be synthesized using Vitis HLS.

1. **Directory Structure**

    Create a project directory:

    ```sh
    mkdir -p matrix_mul_hls/src
    cd matrix_mul_hls
    ```

2. **Create the Header File**

    Create a file named `matrix_mul.h` in the `src` directory:

    ```cpp
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
    ```

3. **Write the Kernel Code**

    Create a file named `matrix_mul.cpp` in the `src` directory:

    ```cpp
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
    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem0
    #pragma HLS INTERFACE m_axi port=B offset=slave bundle=gmem1
    #pragma HLS INTERFACE m_axi port=C offset=slave bundle=gmem2

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
    ```

4. **Code Explanation**

    - **Interfaces**: AXI Master interfaces (`m_axi`) for accessing global memory and AXI Lite interfaces (`s_axilite`) for control signals.
    - **HLS Pragmas**:
      - `#pragma HLS PIPELINE II=1`: Pipelines loops with an initiation interval of 1.
      - `#pragma HLS UNROLL`: Unrolls loops for parallelism.
      - `#pragma HLS ARRAY_PARTITION`: Partitions arrays for parallel access.
    - **Local Buffers**: `local_A`, `local_B`, and `local_C` store matrices in on-chip memory for faster access.

## Writing the Testbench

Create a testbench to verify the functionality of the kernel.

1. **Create the Testbench File**

    Create a file named `testbench.cpp` in the `src` directory:

    ```cpp
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
    ```

2. **Code Explanation**

    - **Reference Implementation**: `reference_mmul` provides a software implementation for verification.
    - **Random Initialization**: Matrices A and B are filled with random floating-point values.
    - **Verification**: Compares the output from the kernel with the reference within a small epsilon tolerance.
    - **Error Reporting**: Outputs mismatches and the total number of errors.

## Running C Simulation

Before synthesizing the design, verify its functionality through C simulation.

1. **Create a Vitis HLS Project Script**

    Create a script named `run_hls.tcl` in the project directory:

    ```tcl
    # File: run_hls.tcl

    open_project matrix_mul_hls
    set_top matrix_mul
    add_files ./src/matrix_mul.cpp
    add_files -tb ./src/testbench.cpp
    open_solution -reset solution1
    set_part xcu50-fsvh2104-2-e
    create_clock -period 3.33 -name default
    csim_design
    ```

2. **Run the HLS Script**

    Execute the HLS script:

    ```sh
    vitis_hls -f run_hls.tcl
    ```

3. **Analyze the Simulation Results**

    Check the console output to ensure that the test passed:

    ```sh
    TEST PASSED!
    ```

    If the test failed, revisit your kernel and testbench code to fix any issues.

## Synthesizing the Design

Now that the simulation passes, proceed to synthesize the design.
## Synthesizing the Design

### Update the HLS Script

Modify `run_hls.tcl` to include synthesis and analysis:

```tcl
# File: run_hls.tcl

open_project matrix_mul_hls
set_top matrix_mul
add_files ./src/matrix_mul.cpp
add_files -tb ./src/testbench.cpp
open_solution -reset solution1
set_part xcu50-fsvh2104-2-e
create_clock -period 3.33 -name default
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
```

### Run Synthesis

Execute the HLS script:

```sh
vitis_hls -f run_hls.tcl
```

### Analyze Synthesis Reports

After synthesis, review the reports generated in:

```
matrix_mul_hls/solution1/syn/report/
```

Check for:
- **Latency**: Ensure the latency meets your performance requirements.
- **Resource Utilization**: Verify that the design fits within the resources of the U50 card.

## Exporting the Kernel

Export the synthesized kernel for integration into a Vitis application.

### Export IP

The `export_design` command in the HLS script exports the design as an IP core.

### Locate the Exported Files

The exported IP can be found in:

```
matrix_mul_hls/solution1/impl/ip
```

## Creating the Vitis Application

Now, integrate the HLS kernel into a Vitis application to create a hardware-accelerated matrix multiplication program.

### Directory Structure

Create a new directory for the Vitis application:

```sh
mkdir -p ../matrix_mul_vitis/src
cd ../matrix_mul_vitis
```

### Copy the Kernel and Header Files

Copy the kernel and header files to the `src` directory:

```sh
cp ../matrix_mul_hls/src/matrix_mul.cpp ./src/
cp ../matrix_mul_hls/src/matrix_mul.h ./src/
```

### Write the Host Application

Create a file named `host.cpp` in the `src` directory:

```cpp
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
```

### Code Explanation

- **OpenCL Host Code**: Uses OpenCL APIs to interact with the FPGA kernel.
- **xcl2.hpp**: Helper functions provided by Xilinx to simplify OpenCL programming.
- **Memory Buffers**: Allocates memory buffers for matrices A, B, and C.
- **Kernel Execution**: Sets kernel arguments, enqueues the kernel, and handles data migration.
- **Verification**: Compares the FPGA result with the software computation.

### Include the Header File

Ensure that `host.cpp` includes `matrix_mul.h` and that definitions are consistent.

## Building and Running the Application

### Create a Makefile

Create a `Makefile` in the project directory:

```makefile
# File: Makefile

TARGET := hw
DEVICE := xilinx_u50_gen3x16_xdma_201920_3

XSA := $(DEVICE)
XO  := matrix_mul.xo
XCLBIN := matrix_mul.xclbin

VPP := v++
VPP_FLAGS := -t $(TARGET) --platform $(XSA) --save-temps
VPP_FLAGS += --kernel_frequency 300

HOST_SRCS := ./src/host.cpp
KERNEL_SRCS := ./src/matrix_mul.cpp

CXX := g++
CXXFLAGS := -I/opt/xilinx/xrt/include -O2 -fmessage-length=0 -std=c++14
LDFLAGS := -L/opt/xilinx/xrt/lib -lxilinxopencl -lpthread -lrt -lstdc++ -Wl,--rpath,/opt/xilinx/xrt/lib

# Include path for xcl2.hpp
CXXFLAGS += -I/opt/xilinx/Vitis/2020.2/include

.PHONY: all clean

all: $(XCLBIN) host

$(XO): $(KERNEL_SRCS)
    $(VPP) -c $(VPP_FLAGS) -k matrix_mul -o'$@' '$<'

$(XCLBIN): $(XO)
    $(VPP) -l $(VPP_FLAGS) -o'$@' '$<'

host: $(HOST_SRCS)
    $(CXX) $(CXXFLAGS) -o '$@' '$<' $(LDFLAGS)

clean:
    rm -rf *.xclbin *.xo host *.o _x .Xil
```

### Build the Application

Run the `make` command:

```sh
make all
```

This command compiles the kernel and the host application.

### Run the Application

Execute the application:

```sh
./host
```

### Expected Output

You should see output indicating that the device was programmed successfully and that the test passed:

```
Trying to program device: xilinx_u50_gen3x16_xdma_201920_3
Device programmed successfully!
TEST PASSED!
```

If the test fails, check for errors in the host code or the kernel.

## Conclusion

You have successfully created a matrix multiplication project using Vitis HLS for the Xilinx U50 accelerator card. This comprehensive guide covered:
- Writing the matrix multiplication kernel and header file.
- Creating a testbench for simulation and verification.
- Synthesizing the design using Vitis HLS.
- Exporting the kernel and integrating it into a Vitis application.
- Building and running the application on FPGA hardware.

By following this tutorial, you now have a foundation for developing more complex FPGA-accelerated applications using Vitis HLS and the Xilinx Alveo U50 card.

## References

- Vitis HLS User Guide: UG1399
- Vitis Application Acceleration Development Flow: UG1393
- Xilinx Runtime (XRT) Documentation: [XRT Docs](https://xilinx.github.io/XRT/)
- Xilinx Alveo U50 Data Center Accelerator Card: [Product Page](https://www.xilinx.com/products/boards-and-kits/alveo/u50.html)
- Vitis Tutorials Repository: [GitHub](https://github.com/Xilinx/Vitis-Tutorials)

Note: This tutorial assumes the use of Vitis 2022.1 and the corresponding tools. Adjustments may be necessary for other versions.
