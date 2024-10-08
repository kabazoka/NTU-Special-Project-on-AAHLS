# AAHLS Lab#3 Cloud Application
[Vitis OpenCL XRT and Lab3](https://www.youtube.com/watch?v=qQT9kRYt_yg)

[TA Session (Lab 3 updated)](https://www.youtube.com/watch?v=eUOD9qAWxPY)

[BOLEDU Lab OnlineFPGA U50 Usage Demo](https://youtu.be/tHzG5V8QFmw?si=oOauCv1N4VfyIY0S)

- Purpose
• Develop application accelerator with OpenCL for U50 PCIe FPGA (Cloud)
• A framework for future application acceleration project
- Implementation
• OpenCL programming framework (note: XRT API)
• Host and kernel interface
• Various scheme to improve system performance, e.g. Out-of-Order command queue
- Codes (host OpenCL, kernel) used a template for future project

## Code Explanation

[Pre-setup for environment, s/o to Kevin<3](https://hackmd.io/xVnrTaZqRtONEf6pCyv0JA#Alveo-u50-platformXRT-installation)


[Sample Code on Github](https://github.com/bol-edu/course-lab_3)

Here are the summaries for the four `host.cpp` files:

1. **vts_Opt1Baseline/host.cpp**:
   - This baseline host code initializes and executes an OpenCL kernel. It covers basic operations such as checking command line arguments, detecting the target platform and device, creating a context, and setting up the command queue.

2. **vts_Opt2KernelParallel/host.cpp**:
   - This file handles the main host code for initializing and executing an OpenCL kernel in a parallel setup. It includes functions for checking command line arguments, detecting the target platform and device, creating a context, and command queue.

3. **vts_Opt3DataBurst/host.cpp**:
   - Similar to the previous file, this host code is designed to work with OpenCL kernels. It focuses on handling data burst operations, including steps for platform and device detection, context creation, and command queue setup.

4. **vts_Opt4ArrayPartition/host.cpp**:
   - This file is responsible for managing array partitioning operations in an OpenCL environment. It includes comprehensive steps for platform and device detection, context creation, command queue setup, and error handling.

For more details, you can view the files directly:
- [vts_Opt1Baseline/host.cpp](https://github.com/bol-edu/course-lab_3/blob/1dd17ef4ae0eaf4efd46ace9603213f2838453b8/AlveoU50/vts_Opt1Baseline/host.cpp)
- [vts_Opt2KernelParallel/host.cpp](https://github.com/bol-edu/course-lab_3/blob/1dd17ef4ae0eaf4efd46ace9603213f2838453b8/AlveoU50/vts_Opt2KernelParallel/host.cpp)
- [vts_Opt3DataBurst/host.cpp](https://github.com/bol-edu/course-lab_3/blob/1dd17ef4ae0eaf4efd46ace9603213f2838453b8/AlveoU50/vts_Opt3DataBurst/host.cpp)
- [vts_Opt4ArrayPartition/host.cpp](https://github.com/bol-edu/course-lab_3/blob/1dd17ef4ae0eaf4efd46ace9603213f2838453b8/AlveoU50/vts_Opt4ArrayPartition/host.cpp)

## Experiment Results

There are 3 steps in the expriment process, including:
1. **SW-emulation**
2. **HW-emulation**
3. **Hardware**

### SW-emulation results of vts_Opt1Baseline

![Screenshot 2024-10-02 at 4.22.18 PM](https://hackmd.io/_uploads/BkyW9OzkJe.png)
![Screenshot 2024-10-02 at 4.23.18 PM](https://hackmd.io/_uploads/r1xyW5dG1ye.png)
![Screenshot 2024-10-02 at 4.23.32 PM](https://hackmd.io/_uploads/BJy-9df11l.png)
![Screenshot 2024-10-02 at 4.23.41 PM](https://hackmd.io/_uploads/rJJb9_Gykx.png)

### HW-emulation results of vts_Opt1Baseline

![Screenshot 2024-10-02 at 5.35.29 PM](https://hackmd.io/_uploads/rJJ-9_fJyx.png)
![Screenshot 2024-10-03 at 1.40.13 AM](https://hackmd.io/_uploads/HJJ-5_GkJl.png)
