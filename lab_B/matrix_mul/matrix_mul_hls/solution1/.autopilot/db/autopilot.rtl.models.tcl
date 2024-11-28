set SynModuleInfo {
  {SRCNAME Block_entry5165_proc MODELNAME Block_entry5165_proc RTLNAME matrix_mul_Block_entry5165_proc}
  {SRCNAME Loop_VITIS_LOOP_38_1_proc_Pipeline_init_c MODELNAME Loop_VITIS_LOOP_38_1_proc_Pipeline_init_c RTLNAME matrix_mul_Loop_VITIS_LOOP_38_1_proc_Pipeline_init_c
    SUBMODULES {
      {MODELNAME matrix_mul_flow_control_loop_pipe_sequential_init RTLNAME matrix_mul_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME matrix_mul_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME Loop_VITIS_LOOP_38_1_proc_Pipeline_load_a MODELNAME Loop_VITIS_LOOP_38_1_proc_Pipeline_load_a RTLNAME matrix_mul_Loop_VITIS_LOOP_38_1_proc_Pipeline_load_a
    SUBMODULES {
      {MODELNAME matrix_mul_mul_32ns_62s_62_5_1 RTLNAME matrix_mul_mul_32ns_62s_62_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Loop_VITIS_LOOP_38_1_proc_Pipeline_load_b MODELNAME Loop_VITIS_LOOP_38_1_proc_Pipeline_load_b RTLNAME matrix_mul_Loop_VITIS_LOOP_38_1_proc_Pipeline_load_b}
  {SRCNAME Loop_VITIS_LOOP_38_1_proc_Pipeline_VITIS_LOOP_79_7 MODELNAME Loop_VITIS_LOOP_38_1_proc_Pipeline_VITIS_LOOP_79_7 RTLNAME matrix_mul_Loop_VITIS_LOOP_38_1_proc_Pipeline_VITIS_LOOP_79_7
    SUBMODULES {
      {MODELNAME matrix_mul_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME matrix_mul_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mul_fadd_32ns_32ns_32_5_no_dsp_1 RTLNAME matrix_mul_fadd_32ns_32ns_32_5_no_dsp_1 BINDTYPE op TYPE fadd IMPL fabric LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mul_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME matrix_mul_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mul_mux_165_32_1_1 RTLNAME matrix_mul_mux_165_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Loop_VITIS_LOOP_38_1_proc_Pipeline_store_c MODELNAME Loop_VITIS_LOOP_38_1_proc_Pipeline_store_c RTLNAME matrix_mul_Loop_VITIS_LOOP_38_1_proc_Pipeline_store_c}
  {SRCNAME Loop_VITIS_LOOP_38_1_proc MODELNAME Loop_VITIS_LOOP_38_1_proc RTLNAME matrix_mul_Loop_VITIS_LOOP_38_1_proc
    SUBMODULES {
      {MODELNAME matrix_mul_mul_28ns_60ns_88_5_1 RTLNAME matrix_mul_mul_28ns_60ns_88_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mul_mul_32s_28ns_58_2_1 RTLNAME matrix_mul_mul_32s_28ns_58_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mul_mul_32s_27ns_58_2_1 RTLNAME matrix_mul_mul_32s_27ns_58_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mul_Loop_VITIS_LOOP_38_1_proc_local_C_RAM_AUTO_1R1W RTLNAME matrix_mul_Loop_VITIS_LOOP_38_1_proc_local_C_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME matrix_mul MODELNAME matrix_mul RTLNAME matrix_mul IS_TOP 1
    SUBMODULES {
      {MODELNAME matrix_mul_local_B0_RAM_AUTO_1R1W RTLNAME matrix_mul_local_B0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mul_fifo_w1_d2_S RTLNAME matrix_mul_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME matrix_mul_fifo_w62_d2_S RTLNAME matrix_mul_fifo_w62_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME matrix_mul_fifo_w64_d2_S RTLNAME matrix_mul_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME matrix_mul_fifo_w37_d2_S RTLNAME matrix_mul_fifo_w37_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME matrix_mul_fifo_w61_d2_S RTLNAME matrix_mul_fifo_w61_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME matrix_mul_fifo_w28_d2_S RTLNAME matrix_mul_fifo_w28_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME matrix_mul_gmem0_m_axi RTLNAME matrix_mul_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME matrix_mul_gmem1_m_axi RTLNAME matrix_mul_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME matrix_mul_gmem2_m_axi RTLNAME matrix_mul_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME matrix_mul_control_s_axi RTLNAME matrix_mul_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
