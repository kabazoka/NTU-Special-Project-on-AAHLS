# AAHLS Lab#B Matrix Multiplication Project using Vitis HLS for Xilinx U50

Lab #B of the course 2024-Fall-Application-Acceleration-with-High-Level-Synthesis at NTU

- [GitHub Repository](https://github.com/kabazoka/NTU-Special-Project-on-AAHLS/tree/main/lab_B)

---

## **Table of Contents**

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

---

## **Introduction**

This tutorial guides you through the process of creating a matrix multiplication project using Vitis High-Level Synthesis (HLS) for the Xilinx Alveo U50 accelerator card. You’ll learn how to:

- Set up the development environment.
- Understand the matrix multiplication kernel and testbench.
- Synthesize the design and generate the hardware description.
- Integrate the kernel into a Vitis application for hardware acceleration.
- Build and run the application on the FPGA.

By the end of this tutorial, you’ll have a working matrix multiplication application accelerated on the Xilinx U50 FPGA.

---

## **Prerequisites**

Before starting, ensure you have the following:

- **Vitis Unified Software Platform**: Version **2022.1** or later.
- **Xilinx Alveo U50 Accelerator Card**: Installed and configured.
- **Xilinx Runtime (XRT)**: Installed on your host machine.
- **Git**: For cloning repositories.
- **C/C++ Compiler**: GCC or similar.
- **Basic Knowledge**: Familiarity with C/C++ programming and FPGA concepts.

---

## **Setting Up the Environment**

### **1. Install Vitis and XRT**

- **Vitis Installation**: Download and install the Vitis Unified Software Platform version **2022.1** from the [Xilinx website](https://www.xilinx.com/support/download.html).
- **XRT Installation**: Install the appropriate Xilinx Runtime (XRT) for your operating system and Alveo card. Ensure you have a version compatible with Vitis 2022.1.

### **2. Set Up Environment Variables**

Source the Vitis and XRT setup scripts to configure your environment:

```sh
# Source Vitis setup script
source /opt/xilinx/Vitis/2022.1/settings64.sh

# Source XRT setup script
source /opt/xilinx/xrt/setup.sh
```

> **Note**: The installation paths may vary based on your system configuration. Adjust the paths if Vitis or XRT are installed in different locations.

### **3. Verify the Alveo U50 Card**

Check if the Alveo U50 card is properly installed:

```sh
xbutil validate
```

Ensure that all tests pass and the device is recognized.

---

## **Project Overview**

The project consists of the following components:

- **Kernel Code (`matrix_mul.cpp`)**: Implements the matrix multiplication algorithm to be synthesized into hardware.
- **Header File (`matrix_mul.h`)**: Contains function declarations and shared definitions.
- **Testbench (`testbench.cpp`)**: Used for simulation and verification of the kernel.
- **Vitis HLS Script (`run_hls.tcl`)**: Automates the HLS flow.
- **Host Application (`host.cpp`)**: Manages communication between the host and the FPGA kernel.
- **Makefile**: Automates the build process for the Vitis application.

---

## **Understanding the Kernel Code**

### **1. Kernel Function: `matrix_mul`**

- **Purpose**: Performs matrix multiplication of two input matrices **A** and **B**, producing output matrix **C**.
- **Signature**:

  ```cpp
  void matrix_mul(const data_t *A, const data_t *B, data_t *C, int M, int N, int P);
  ```

  - `A`, `B`, `C`: Pointers to input and output matrices in global memory.
  - `M`, `N`, `P`: Dimensions of the matrices.

### **2. Data Types and Macros**

- **`data_t`**: Typedef for `float`, representing the data type used in computations.
- **`MAX_SIZE`**: Defines the maximum allowable dimension for matrices (e.g., 4096).

### **3. Interface Pragmas**

- **AXI Master Interfaces (`m_axi`)**:
  - Used for memory-mapped access to global memory.
  - Ports: `A`, `B`, `C`.
  - Bundles: `gmem0`, `gmem1`, `gmem2`.

- **AXI Lite Interfaces (`s_axilite`)**:
  - Used for control signals and scalar arguments.
  - Ports: `A`, `B`, `C`, `M`, `N`, `P`, and `return`.

### **4. HLS Pragmas**

- **`#pragma HLS INTERFACE`**: Defines the interface protocols for function arguments.
- **`#pragma HLS ARRAY_PARTITION`**:
  - Partitions arrays to enable parallel access.
  - Used on `local_A`, `local_B`, and `local_C` arrays to optimize memory access patterns.
- **`#pragma HLS PIPELINE`**:
  - Pipelines loops to improve throughput.
  - Applied with an initiation interval (`II`) of 1.
- **`#pragma HLS UNROLL`**:
  - Unrolls loops completely or partially to exploit parallelism.
  - Used in the innermost loop over `k` in the matrix multiplication.

### **5. Local Buffers**

- **`local_A`, `local_B`, `local_C`**:
  - Arrays stored in on-chip memory (BRAM or URAM).
  - Hold portions of matrices **A**, **B**, and **C** for faster access during computation.

### **6. Algorithm Steps**

1. **Data Transfer from Global to Local Memory**:
   - Reads matrices **A** and **B** from global memory into local buffers `local_A` and `local_B`.
   - Loops are pipelined to optimize data transfer rates.

2. **Initialization of Output Matrix**:
   - Initializes `local_C` to zero before computation.
   - Ensures no residual data affects the results.

3. **Matrix Multiplication Computation**:
   - Performs the nested loop computation to calculate each element of the output matrix.
   - Inner loop over `k` is unrolled for parallel multiplication and addition.

4. **Data Transfer from Local to Global Memory**:
   - Writes the computed matrix `local_C` back to global memory into `C`.
   - Loops are pipelined to maximize throughput.

### **7. Function Attributes**

- **`extern "C"`**:
  - Prevents C++ name mangling.
  - Ensures that the function can be linked correctly during the HLS process.

---

## **Understanding the Testbench**

### **1. Reference Function: `reference_mmul`**

- **Purpose**: Provides a software implementation of matrix multiplication for verification purposes.
- **Signature**:

  ```cpp
  void reference_mmul(const data_t *A, const data_t *B, data_t *C_ref, int M, int N, int P);
  ```

  - `A`, `B`, `C_ref`: Pointers to input matrices and reference output matrix.
  - `M`, `N`, `P`: Dimensions of the matrices.

- **Implementation**: Uses standard nested loops to compute the product of matrices **A** and **B**, storing the result in `C_ref`.

### **2. Main Function**

- **Initialization**:
  - Allocates memory for matrices **A**, **B**, **C** (kernel output), and `C_ref` (reference output).
  - Initializes matrices **A** and **B** with predefined or random values.

- **Kernel Invocation**:
  - Calls `reference_mmul` to compute the expected result.
  - Calls `matrix_mul` (the kernel) to compute the result using the HLS implementation.

- **Verification**:
  - Compares each element of the kernel output **C** with the reference output `C_ref`.
  - Uses a small epsilon tolerance to account for floating-point inaccuracies.
  - Reports mismatches and counts the total number of errors.

- **Cleanup**:
  - Deallocates memory for all matrices.
  - Returns the number of errors as the exit code.

### **3. Error Handling and Reporting**

- **Tolerance Level**:
  - A predefined epsilon (e.g., `1e-3`) is used to determine acceptable differences between computed values.

- **Output Messages**:
  - Reports "TEST PASSED!" if there are no errors.
  - Reports "TEST FAILED" along with the number of errors if mismatches are found.

---

## **Running C Simulation**

### **1. Vitis HLS Project Script (`run_hls.tcl`)**

- Automates the HLS process using Tcl commands.
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
    - Creates a clock with a specified period (e.g., `3.33` ns).

  - **Simulation and Synthesis**:
    - Runs C simulation (`csim_design`) to verify functionality.
    - Runs C synthesis (`csynth_design`) to generate the RTL.
    - Exports the design as an IP core (`export_design -format ip_catalog`).

### **2. Execution**

Run the HLS script using:

```sh
vitis_hls -f run_hls.tcl
```

> **Note**: Ensure that the `vitis_hls` executable is in your PATH. If not, source the Vitis settings script as shown in the environment setup.

### **3. Analyzing Results**

- **C Simulation**:
  - Verifies that the kernel behaves as expected in a high-level simulation.
  - Look for "All tests passed successfully!" in the console output.

- **Synthesis Reports**:
  - Located in `matrix_mul_hls/solution1/syn/report/`.
  - Contains information on latency, resource utilization, and timing.

---

## **Synthesizing the Design**

- **C Synthesis**:
  - Translates the high-level C++ code into an RTL implementation.
  - Optimizes the design based on the HLS pragmas and target device constraints.

- **Exporting Design**:
  - Generates the necessary files to integrate the kernel into a larger system or application.
  - Exports as an IP core compatible with Vitis.

> **Note**: Co-simulation (`cosim_design`) is optional and can be performed for additional verification.

---

## **Exporting the Kernel**

The exported IP core is located in:

```sh
matrix_mul_hls/solution1/impl/ip
```

It contains the synthesized kernel ready for integration into a Vitis application.

---

## **Creating the Vitis Application**

### **1. Directory Structure**

Create a new directory for the Vitis application:

```sh
mkdir -p matrix_mul_vitis/src
```

Place the kernel files (`matrix_mul.cpp`, `matrix_mul.h`) and the host application (`host.cpp`) in the `src` directory.

### **2. Build Automation**

- **Makefile**:
  - Automates the compilation and linking of the kernel and host application.
  - Defines variables for target, device, sources, compiler flags, and linker flags.
  - Contains targets for building the kernel (`.xo` and `.xclbin` files) and the host application.

---

## **Understanding the Host Application**

### **1. Initialization**

- **Data Structures**:
  - Allocates aligned memory buffers for matrices **A**, **B**, and **C** using `std::vector` with `aligned_allocator`.

- **Data Generation**:
  - Populates matrices **A** and **B** with predefined values suitable for testing and verification.

### **2. OpenCL Setup**

- **Device Discovery**:
  - Uses `xcl::get_xil_devices()` to enumerate available FPGA devices.
  - Reads the compiled kernel binary (`matrix_mul.xclbin`).

- **Context and Command Queue**:
  - Creates an OpenCL context and command queue for the selected device.
  - Enables profiling by setting `CL_QUEUE_PROFILING_ENABLE`.

- **Kernel Creation**:
  - Programs the device with the kernel binary.
  - Creates an OpenCL kernel object from the program.

### **3. Buffer Management**

- **Memory Buffers**:
  - Creates OpenCL buffers for matrices **A**, **B**, and **C** with appropriate access flags.
  - Associates host memory pointers with these buffers.

### **4. Kernel Execution**

- **Setting Kernel Arguments**:
  - Sets the kernel arguments corresponding to the buffers and scalar parameters (`M`, `N`, `P`).

- **Data Transfer to Device**:
  - Enqueues commands to transfer input matrices **A** and **B** to the device global memory.

- **Kernel Launch**:
  - Enqueues the kernel execution command.

- **Data Transfer from Device**:
  - Enqueues commands to transfer the output matrix **C** back to host memory.

- **Synchronization**:
  - Waits for all enqueued commands to complete using `q.finish()`.

### **5. Verification**

- **Reference Computation**:
  - Computes the expected result on the host using the same reference function as in the testbench.

- **Result Comparison**:
  - Compares each element of the output matrix **C** with the reference result.
  - Reports mismatches and counts errors.

### **6. Performance Measurement**

- **Execution Time**:
  - Measures the execution time of the kernel.
  - Calculates performance metrics such as GFLOPS.

- **Reporting**:
  - Outputs execution time, performance, and verification results for each matrix size tested.

---

## **Building and Running the Application**

### **1. Building with Makefile**

Run the `make` command to build the kernel and host application:

```sh
make all
```

### **2. Running the Application**

Execute the host application:

```sh
./host
```

### **3. Expected Output**

Successful execution should display results for each matrix size tested:

```bash
Matrix Size: 128 x 128
Execution Time: 0.002 seconds
Performance: 2.10 GFLOPS
Verification: PASSED
----------------------------------------
Matrix Size: 256 x 256
Execution Time: 0.010 seconds
Performance: 3.35 GFLOPS
Verification: PASSED
----------------------------------------
...
```

If there are errors, the application will report the number of mismatches.

### **4. Cleaning the Build**

Use the `make clean` command to remove generated files:

```sh
make clean
```

---

## **Conclusion**

You have successfully created a matrix multiplication project using Vitis HLS for the Xilinx U50 accelerator card. This tutorial covered:

- Setting up the development environment with Vitis 2022.1.
- Understanding the kernel and testbench code.
- Running C simulation and analyzing results.
- Synthesizing the design and exporting the kernel.
- Building and running the Vitis application on FPGA hardware.
- Measuring performance and verifying correctness across different matrix sizes.

By following this tutorial, you now have a foundation for developing more complex FPGA-accelerated applications using Vitis HLS and the Xilinx Alveo U50 card.

---

## **References**

- **Vitis Unified Software Platform Documentation**: [Xilinx Vitis Docs](https://docs.xilinx.com/)
- **Vitis HLS User Guide**: [UG1399 (v2022.1)](https://docs.xilinx.com/r/en-US/ug1399-vitis-hls)
- **Vitis Application Acceleration Development Flow**: [UG1393 (v2022.1)](https://docs.xilinx.com/r/en-US/ug1393-vitis-application-acceleration)
- **Xilinx Runtime (XRT) Documentation**: [XRT Docs](https://xilinx.github.io/XRT/master/html/index.html)
- **Xilinx Alveo U50 Data Center Accelerator Card**: [Product Page](https://www.xilinx.com/products/boards-and-kits/alveo/u50.html)
- **Vitis Tutorials Repository**: [GitHub](https://github.com/Xilinx/Vitis-Tutorials)

---

**Note**: This tutorial assumes the use of Vitis **2022.1** and the corresponding tools. Adjustments may be necessary for other versions. Always refer to the official Xilinx documentation for the most up-to-date information.

---
