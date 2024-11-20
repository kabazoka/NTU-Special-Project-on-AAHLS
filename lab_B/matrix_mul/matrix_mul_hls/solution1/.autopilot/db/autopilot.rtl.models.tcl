set SynModuleInfo {
  {SRCNAME matrix_mul_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4 MODELNAME matrix_mul_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4 RTLNAME matrix_mul_matrix_mul_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4
    SUBMODULES {
      {MODELNAME matrix_mul_flow_control_loop_pipe_sequential_init RTLNAME matrix_mul_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME matrix_mul_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME matrix_mul_Pipeline_VITIS_LOOP_47_7 MODELNAME matrix_mul_Pipeline_VITIS_LOOP_47_7 RTLNAME matrix_mul_matrix_mul_Pipeline_VITIS_LOOP_47_7
    SUBMODULES {
      {MODELNAME matrix_mul_mul_31ns_32ns_62_2_1 RTLNAME matrix_mul_mul_31ns_32ns_62_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME matrix_mul_Pipeline_VITIS_LOOP_54_9 MODELNAME matrix_mul_Pipeline_VITIS_LOOP_54_9 RTLNAME matrix_mul_matrix_mul_Pipeline_VITIS_LOOP_54_9}
  {SRCNAME matrix_mul_Pipeline_VITIS_LOOP_62_11 MODELNAME matrix_mul_Pipeline_VITIS_LOOP_62_11 RTLNAME matrix_mul_matrix_mul_Pipeline_VITIS_LOOP_62_11
    SUBMODULES {
      {MODELNAME matrix_mul_fadd_32ns_32ns_32_5_no_dsp_1 RTLNAME matrix_mul_fadd_32ns_32ns_32_5_no_dsp_1 BINDTYPE op TYPE fadd IMPL fabric LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mul_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME matrix_mul_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mul_mux_647_32_1_1 RTLNAME matrix_mul_mux_647_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME matrix_mul_Pipeline_VITIS_LOOP_76_14 MODELNAME matrix_mul_Pipeline_VITIS_LOOP_76_14 RTLNAME matrix_mul_matrix_mul_Pipeline_VITIS_LOOP_76_14}
  {SRCNAME matrix_mul MODELNAME matrix_mul RTLNAME matrix_mul IS_TOP 1
    SUBMODULES {
      {MODELNAME matrix_mul_mul_26ns_27ns_83_2_1 RTLNAME matrix_mul_mul_26ns_27ns_83_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mul_mul_25ns_32ns_56_2_1 RTLNAME matrix_mul_mul_25ns_32ns_56_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mul_mul_7ns_32ns_39_2_1 RTLNAME matrix_mul_mul_7ns_32ns_39_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mul_local_A_RAM_AUTO_1R1W RTLNAME matrix_mul_local_A_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mul_gmem0_m_axi RTLNAME matrix_mul_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME matrix_mul_gmem1_m_axi RTLNAME matrix_mul_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME matrix_mul_gmem2_m_axi RTLNAME matrix_mul_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME matrix_mul_control_s_axi RTLNAME matrix_mul_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
