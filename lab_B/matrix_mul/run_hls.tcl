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

