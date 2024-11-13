create_project prj -part xcu50-fsvh2104-2-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/ubuntu/matrix_mul_hls/matrix_mul_hls/solution1/syn/verilog/matrix_mul_fmul_32ns_32ns_32_4_max_dsp_1_ip.tcl"
source "/home/ubuntu/matrix_mul_hls/matrix_mul_hls/solution1/syn/verilog/matrix_mul_fadd_32ns_32ns_32_7_full_dsp_1_ip.tcl"
