set SynModuleInfo {
  {SRCNAME matrix_mul_Pipeline_readA_inner MODELNAME matrix_mul_Pipeline_readA_inner RTLNAME matrix_mul_matrix_mul_Pipeline_readA_inner
    SUBMODULES {
      {MODELNAME matrix_mul_flow_control_loop_pipe_sequential_init RTLNAME matrix_mul_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME matrix_mul_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME matrix_mul_Pipeline_readB_inner MODELNAME matrix_mul_Pipeline_readB_inner RTLNAME matrix_mul_matrix_mul_Pipeline_readB_inner}
  {SRCNAME matrix_mul_Pipeline_initC_initC_inner MODELNAME matrix_mul_Pipeline_initC_initC_inner RTLNAME matrix_mul_matrix_mul_Pipeline_initC_initC_inner}
  {SRCNAME matrix_mul_Pipeline_writeC_inner MODELNAME matrix_mul_Pipeline_writeC_inner RTLNAME matrix_mul_matrix_mul_Pipeline_writeC_inner}
  {SRCNAME matrix_mul MODELNAME matrix_mul RTLNAME matrix_mul IS_TOP 1
    SUBMODULES {
      {MODELNAME matrix_mul_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME matrix_mul_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mul_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME matrix_mul_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mul_mul_32ns_32ns_63_2_1 RTLNAME matrix_mul_mul_32ns_32ns_63_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mul_mux_25632_32_1_1 RTLNAME matrix_mul_mux_25632_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mul_local_A_RAM_AUTO_1R1W RTLNAME matrix_mul_local_A_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mul_local_C_RAM_AUTO_1R1W RTLNAME matrix_mul_local_C_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mul_gmem0_m_axi RTLNAME matrix_mul_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME matrix_mul_gmem1_m_axi RTLNAME matrix_mul_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME matrix_mul_gmem2_m_axi RTLNAME matrix_mul_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME matrix_mul_control_s_axi RTLNAME matrix_mul_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
