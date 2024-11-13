# Matrix Multiplication Project using Vitis HLS for Xilinx U50

Lab#B of the course 2024-Fall-Application-Acceleration-with-High-Level-Synthsis in NTU
[Github Repository](https://github.com/kabazoka/NTU-Special-Project-on-AAHLS/tree/main/lab_B)

## Table of Contents
1. [Introduction](#introduction)
2. [Prerequisites](#prerequisites)
3. [Setting Up the Environment](#setting-up-the-environment)
4. [Project Overview](#project-overview)
5. [Understanding the Kernel Code](#understanding-the-kernel-code)
6. [Understanding the Testbench](#understanding-the-testbench)
7. [Running C Simulation](#running-c-simulation)
8. [Synthesizing the Design](#synthesizing-the-design)
9. [Exporting the Kernel](#exporting-the-kernel)
10. [Creating the Vitis Application](#creating-the-vitis-application)
11. [Understanding the Host Application](#understanding-the-host-application)
12. [Building and Running the Application](#building-and-running-the-application)
13. [Conclusion](#conclusion)
14. [References](#references)

## Introduction

This tutorial guides you through the process of creating a matrix multiplication project using Vitis High-Level Synthesis (HLS) for the Xilinx Alveo U50 accelerator card. You’ll learn how to:
- Set up the development environment.
- Understand the matrix multiplication kernel and testbench.
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

### 1. Install Vitis and XRT

- **Vitis Installation**: Download and install the Vitis Unified Software Platform from the Xilinx website.
- **XRT Installation**: Install the appropriate Xilinx Runtime (XRT) for your operating system and Alveo card.

### 2. Set Up Environment Variables

Source the Vitis and XRT setup scripts to configure your environment:

```sh
# Source Vitis setup script
source /opt/xilinx/Vitis/2020.2/settings64.sh

# Source XRT setup script
source /opt/xilinx/xrt/setup.sh
```

### 3. Verify the Alveo U50 Card

Check if the Alveo U50 card is properly installed:

```sh
xbutil validate
```

## Project Overview

The project consists of the following components:
- **Kernel Code (matrix_mul.cpp)**: Implements the matrix multiplication algorithm to be synthesized into hardware.
- **Header File (matrix_mul.h)**: Contains function declarations and shared definitions.
- **Testbench (testbench.cpp)**: Used for simulation and verification of the kernel.
- **Vitis HLS Script (run_hls.tcl)**: Automates the HLS flow.
- **Host Application (host.cpp)**: Manages communication between the host and the FPGA kernel.
- **Makefile**: Automates the build process for the Vitis application.

## Understanding the Kernel Code

### 1. Kernel Function: `matrix_mul`

- **Purpose**: Performs matrix multiplication of two input matrices A and B, producing output matrix C.
- **Signature**:

```cpp
void matrix_mul(const data_t *A, const data_t *B, data_t *C, int M, int N, int K);
```

- **A, B, C**: Pointers to input and output matrices in global memory.
- **M, N, K**: Dimensions of the matrices.

### 2. Data Types and Macros

- **data_t**: Typedef for float, representing the data type used in computations.
- **MAX_SIZE**: Defines the maximum allowable dimension for matrices (e.g., 256).

### 3. Interface Pragmas

- **AXI Master Interfaces (m_axi)**:
    - Used for memory-mapped access to global memory.
    - Ports: A, B, C.
    - Bundles: gmem0, gmem1, gmem2.
- **AXI Lite Interfaces (s_axilite)**:
    - Used for control signals and scalar arguments.
    - Ports: A, B, C, M, N, K, and return.

### 4. HLS Pragmas

- `#pragma HLS INTERFACE`: Defines the interface protocols for function arguments.
- `#pragma HLS ARRAY_PARTITION`:
    - Partitions arrays to enable parallel access.
    - Used on local_A and local_B arrays to optimize memory access patterns.
- `#pragma HLS PIPELINE`:
    - Pipelines loops to improve throughput.
    - Applied with an initiation interval (II) of 1.
- `#pragma HLS UNROLL`:
    - Unrolls loops completely or partially to exploit parallelism.
    - Used in the innermost loop over k in the matrix multiplication.

### 5. Local Buffers

- **local_A, local_B, local_C**:
    - Arrays stored in on-chip memory (BRAM or URAM).
    - Hold portions of matrices A, B, and C for faster access during computation.

### 6. Algorithm Steps

1. **Data Transfer from Global to Local Memory**:
     - Reads matrices A and B from global memory into local buffers local_A and local_B.
     - Loops are pipelined to optimize data transfer rates.
2. **Initialization of Output Matrix**:
     - Initializes local_C to zero before computation.
     - Ensures no residual data affects the results.
3. **Matrix Multiplication Computation**:
     - Performs the nested loop computation to calculate each element of the output matrix.
     - Inner loop over k is unrolled for parallel multiplication and addition.
4. **Data Transfer from Local to Global Memory**:
     - Writes the computed matrix local_C back to global memory into C.
     - Loops are pipelined to maximize throughput.

### 7. Function Attributes

- **extern "C"**:
    - Prevents C++ name mangling.
    - Ensures that the function can be linked correctly during the HLS process.

## Understanding the Testbench

### 1. Reference Function: `reference_mmul`

- **Purpose**: Provides a software implementation of matrix multiplication for verification purposes.
- **Signature**:

```cpp
void reference_mmul(const data_t *A, const data_t *B, data_t *C_ref, int M, int N, int K);
```

- **A, B, C_ref**: Pointers to input matrices and reference output matrix.
- **M, N, K**: Dimensions of the matrices.
- **Implementation**: Uses standard nested loops to compute the product of matrices A and B, storing the result in C_ref.

### 2. Main Function

- **Initialization**:
    - Allocates memory for matrices A, B, C (kernel output), and C_ref (reference output).
    - Initializes matrices A and B with random floating-point values.
- **Kernel Invocation**:
    - Calls `reference_mmul` to compute the expected result.
    - Calls `matrix_mul` (the kernel) to compute the result using the HLS implementation.
- **Verification**:
    - Compares each element of the kernel output C with the reference output C_ref.
    - Uses a small epsilon tolerance to account for floating-point inaccuracies.
    - Reports mismatches and counts the total number of errors.
- **Cleanup**:
    - Deallocates memory for all matrices.
    - Returns the number of errors as the exit code.

### 3. Error Handling and Reporting

- **Tolerance Level**:
    - A predefined epsilon (e.g., 1e-3) is used to determine acceptable differences between computed values.
- **Output Messages**:
    - Reports “TEST PASSED!” if there are no errors.
    - Reports “TEST FAILED” along with the number of errors if mismatches are found.

## Running C Simulation

### 1. Vitis HLS Project Script (run_hls.tcl)

- Automates the HLS process using TCL commands.
- Key steps in the script:
    - **Project Setup**:
        - Opens or creates a project named `matrix_mul_hls`.
        - Sets the top function to `matrix_mul`.
    - **Adding Files**:
        - Adds `matrix_mul.cpp` as the source file.
        - Adds `testbench.cpp` as the testbench file.
    - **Solution Configuration**:
        - Opens or resets a solution named `solution1`.
        - Sets the target device part (e.g., `xcu50-fsvh2104-2-e`).
        - Creates a clock with a specified period (e.g., 3.33 ns).
    - **Simulation and Synthesis**:
        - Runs C simulation (`csim_design`) to verify functionality.
        - Runs C synthesis (`csynth_design`) to generate the RTL.
        - Runs co-simulation (`cosim_design`) to verify the RTL against the C model.
        - Exports the design as an IP core (`export_design -format ip_catalog`).

### 2. Execution

Run the HLS script using:

```sh
vitis_hls -f run_hls.tcl
```

### 3. Analyzing Results

- **C Simulation**:
    - Verifies that the kernel behaves as expected in a high-level simulation.
    - Look for “TEST PASSED!” in the console output.
- **Synthesis Reports**:
    - Located in `matrix_mul_hls/solution1/syn/report/`.
    - Contains information on latency, resource utilization, and timing.

## Synthesizing the Design

- **C Synthesis**:
    - Translates the high-level C++ code into an RTL implementation.
    - Optimizes the design based on the HLS pragmas and target device constraints.
- **Co-Simulation**:
    - Verifies that the synthesized RTL behaves identically to the C model.
    - Ensures correctness before proceeding to implementation.
- **Exporting Design**:
    - Generates the necessary files to integrate the kernel into a larger system or application.
    - Exports as an IP core compatible with Vitis.

## Exporting the Kernel

The exported IP core is located in:

```sh
matrix_mul_hls/solution1/impl/ip
```

Contains the synthesized kernel ready for integration into a Vitis application.

## Creating the Vitis Application

### 1. Directory Structure

Create a new directory for the Vitis application:

```sh
mkdir -p matrix_mul_vitis/src
```

Place the kernel files (`matrix_mul.cpp`, `matrix_mul.h`) and the host application (`host.cpp`) in the `src` directory.

### 2. Build Automation

- **Makefile**:
    - Automates the compilation and linking of the kernel and host application.
    - Defines variables for target, device, sources, compiler flags, and linker flags.
    - Contains targets for building the kernel (.xo and .xclbin files) and the host application.

## Understanding the Host Application

### 1. Initialization

- **Data Structures**:
    - Allocates aligned memory buffers for matrices A, B, and C using `std::vector` with `aligned_allocator`.
- **Random Data Generation**:
    - Populates matrices A and B with random floating-point values for testing.

### 2. OpenCL Setup

- **Device Discovery**:
    - Uses `xcl::get_xil_devices()` to enumerate available FPGA devices.
    - Reads the compiled kernel binary (`matrix_mul.xclbin`).
- **Context and Command Queue**:
    - Creates an OpenCL context and command queue for the selected device.
    - Enables profiling by setting `CL_QUEUE_PROFILING_ENABLE`.
- **Kernel Creation**:
    - Programs the device with the kernel binary.
    - Creates an OpenCL kernel object from the program.

### 3. Buffer Management

- **Memory Buffers**:
    - Creates OpenCL buffers for matrices A, B, and C with appropriate access flags.
    - Associates host memory pointers with these buffers.

### 4. Kernel Execution

- **Setting Kernel Arguments**:
    - Sets the kernel arguments corresponding to the buffers and scalar parameters (M, N, K).
- **Data Transfer to Device**:
    - Enqueues commands to transfer input matrices A and B to the device global memory.
- **Kernel Launch**:
    - Enqueues the kernel execution command.
- **Data Transfer from Device**:
    - Enqueues commands to transfer the output matrix C back to host memory.
- **Synchronization**:
    - Waits for all enqueued commands to complete using `q.finish()`.

### 5. Verification

- **Reference Computation**:
    - Computes the expected result on the host using the same reference function as in the testbench.
- **Result Comparison**:
    - Compares each element of the output matrix C with the reference result.
    - Reports mismatches and counts errors.

### 6. Error Handling and Reporting

- Reports whether the test passed or failed based on the comparison results.

## Building and Running the Application

### 1. Building with Makefile

Run the `make` command to build the kernel and host application:

```sh
make all
```

### 2. Running the Application

Execute the host application:

```sh
./host
```

### 3. Expected Output

Successful execution should display:

```
Trying to program device: xilinx_u50_gen3x16_xdma_201920_3
Device programmed successfully!
TEST PASSED!
```

If there are errors, the application will report the number of mismatches.

### 4. Cleaning the Build

Use the `make clean` command to remove generated files:

```sh
make clean
```

## Conclusion

You have successfully created a matrix multiplication project using Vitis HLS for the Xilinx U50 accelerator card. This tutorial covered:
- Setting up the development environment.
- Understanding the kernel and testbench code.
- Running C simulation and analyzing results.
- Synthesizing the design and exporting the kernel.
- Building and running the Vitis application on FPGA hardware.

By following this tutorial, you now have a foundation for developing more complex FPGA-accelerated applications using Vitis HLS and the Xilinx Alveo U50 card.

## References

- Vitis HLS User Guide: UG1399
- Vitis Application Acceleration Development Flow: UG1393
- Xilinx Runtime (XRT) Documentation: XRT Docs
- Xilinx Alveo U50 Data Center Accelerator Card: Product Page
- Vitis Tutorials Repository: GitHub

Note: This tutorial assumes the use of Vitis 2020.2 and the corresponding tools. Adjustments may be necessary for other versions.

If you have any questions or need further assistance with any step of the process, please don’t hesitate to ask!