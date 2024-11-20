set moduleName matrix_mul_Pipeline_VITIS_LOOP_47_7
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {matrix_mul_Pipeline_VITIS_LOOP_47_7}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 32 regular {axi_master 0}  }
	{ local_A float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ shl_ln35_1_mid2 int 31 regular  }
	{ zext_ln34 int 32 regular  }
	{ zext_ln44 int 32 regular  }
	{ A int 64 regular  }
	{ local_A_1 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_2 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_3 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_4 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_5 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_6 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_7 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_8 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_9 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_10 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_11 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_12 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_13 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_14 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_15 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_16 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_17 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_18 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_19 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_20 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_21 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_22 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_23 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_24 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_25 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_26 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_27 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_28 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_29 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_30 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_31 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_32 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_33 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_34 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_35 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_36 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_37 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_38 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_39 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_40 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_41 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_42 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_43 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_44 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_45 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_46 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_47 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_48 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_49 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_50 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_51 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_52 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_53 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_54 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_55 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_56 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_57 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_58 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_59 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_60 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_61 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_62 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ local_A_63 float 32 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "A","offset": { "type": "dynamic","port_name": "A","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "local_A", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "shl_ln35_1_mid2", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln34", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln44", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "local_A_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_16", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_17", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_18", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_19", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_20", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_21", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_22", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_23", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_24", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_25", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_26", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_27", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_28", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_29", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_30", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_31", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_32", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_33", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_34", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_35", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_36", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_37", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_38", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_39", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_40", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_41", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_42", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_43", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_44", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_45", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_46", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_47", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_48", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_49", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_50", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_51", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_52", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_53", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_54", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_55", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_56", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_57", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_58", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_59", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_60", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_61", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_62", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_A_63", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 312
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ local_A_address0 sc_out sc_lv 6 signal 1 } 
	{ local_A_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_A_we0 sc_out sc_logic 1 signal 1 } 
	{ local_A_d0 sc_out sc_lv 32 signal 1 } 
	{ shl_ln35_1_mid2 sc_in sc_lv 31 signal 2 } 
	{ zext_ln34 sc_in sc_lv 32 signal 3 } 
	{ zext_ln44 sc_in sc_lv 32 signal 4 } 
	{ A sc_in sc_lv 64 signal 5 } 
	{ local_A_1_address0 sc_out sc_lv 6 signal 6 } 
	{ local_A_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ local_A_1_we0 sc_out sc_logic 1 signal 6 } 
	{ local_A_1_d0 sc_out sc_lv 32 signal 6 } 
	{ local_A_2_address0 sc_out sc_lv 6 signal 7 } 
	{ local_A_2_ce0 sc_out sc_logic 1 signal 7 } 
	{ local_A_2_we0 sc_out sc_logic 1 signal 7 } 
	{ local_A_2_d0 sc_out sc_lv 32 signal 7 } 
	{ local_A_3_address0 sc_out sc_lv 6 signal 8 } 
	{ local_A_3_ce0 sc_out sc_logic 1 signal 8 } 
	{ local_A_3_we0 sc_out sc_logic 1 signal 8 } 
	{ local_A_3_d0 sc_out sc_lv 32 signal 8 } 
	{ local_A_4_address0 sc_out sc_lv 6 signal 9 } 
	{ local_A_4_ce0 sc_out sc_logic 1 signal 9 } 
	{ local_A_4_we0 sc_out sc_logic 1 signal 9 } 
	{ local_A_4_d0 sc_out sc_lv 32 signal 9 } 
	{ local_A_5_address0 sc_out sc_lv 6 signal 10 } 
	{ local_A_5_ce0 sc_out sc_logic 1 signal 10 } 
	{ local_A_5_we0 sc_out sc_logic 1 signal 10 } 
	{ local_A_5_d0 sc_out sc_lv 32 signal 10 } 
	{ local_A_6_address0 sc_out sc_lv 6 signal 11 } 
	{ local_A_6_ce0 sc_out sc_logic 1 signal 11 } 
	{ local_A_6_we0 sc_out sc_logic 1 signal 11 } 
	{ local_A_6_d0 sc_out sc_lv 32 signal 11 } 
	{ local_A_7_address0 sc_out sc_lv 6 signal 12 } 
	{ local_A_7_ce0 sc_out sc_logic 1 signal 12 } 
	{ local_A_7_we0 sc_out sc_logic 1 signal 12 } 
	{ local_A_7_d0 sc_out sc_lv 32 signal 12 } 
	{ local_A_8_address0 sc_out sc_lv 6 signal 13 } 
	{ local_A_8_ce0 sc_out sc_logic 1 signal 13 } 
	{ local_A_8_we0 sc_out sc_logic 1 signal 13 } 
	{ local_A_8_d0 sc_out sc_lv 32 signal 13 } 
	{ local_A_9_address0 sc_out sc_lv 6 signal 14 } 
	{ local_A_9_ce0 sc_out sc_logic 1 signal 14 } 
	{ local_A_9_we0 sc_out sc_logic 1 signal 14 } 
	{ local_A_9_d0 sc_out sc_lv 32 signal 14 } 
	{ local_A_10_address0 sc_out sc_lv 6 signal 15 } 
	{ local_A_10_ce0 sc_out sc_logic 1 signal 15 } 
	{ local_A_10_we0 sc_out sc_logic 1 signal 15 } 
	{ local_A_10_d0 sc_out sc_lv 32 signal 15 } 
	{ local_A_11_address0 sc_out sc_lv 6 signal 16 } 
	{ local_A_11_ce0 sc_out sc_logic 1 signal 16 } 
	{ local_A_11_we0 sc_out sc_logic 1 signal 16 } 
	{ local_A_11_d0 sc_out sc_lv 32 signal 16 } 
	{ local_A_12_address0 sc_out sc_lv 6 signal 17 } 
	{ local_A_12_ce0 sc_out sc_logic 1 signal 17 } 
	{ local_A_12_we0 sc_out sc_logic 1 signal 17 } 
	{ local_A_12_d0 sc_out sc_lv 32 signal 17 } 
	{ local_A_13_address0 sc_out sc_lv 6 signal 18 } 
	{ local_A_13_ce0 sc_out sc_logic 1 signal 18 } 
	{ local_A_13_we0 sc_out sc_logic 1 signal 18 } 
	{ local_A_13_d0 sc_out sc_lv 32 signal 18 } 
	{ local_A_14_address0 sc_out sc_lv 6 signal 19 } 
	{ local_A_14_ce0 sc_out sc_logic 1 signal 19 } 
	{ local_A_14_we0 sc_out sc_logic 1 signal 19 } 
	{ local_A_14_d0 sc_out sc_lv 32 signal 19 } 
	{ local_A_15_address0 sc_out sc_lv 6 signal 20 } 
	{ local_A_15_ce0 sc_out sc_logic 1 signal 20 } 
	{ local_A_15_we0 sc_out sc_logic 1 signal 20 } 
	{ local_A_15_d0 sc_out sc_lv 32 signal 20 } 
	{ local_A_16_address0 sc_out sc_lv 6 signal 21 } 
	{ local_A_16_ce0 sc_out sc_logic 1 signal 21 } 
	{ local_A_16_we0 sc_out sc_logic 1 signal 21 } 
	{ local_A_16_d0 sc_out sc_lv 32 signal 21 } 
	{ local_A_17_address0 sc_out sc_lv 6 signal 22 } 
	{ local_A_17_ce0 sc_out sc_logic 1 signal 22 } 
	{ local_A_17_we0 sc_out sc_logic 1 signal 22 } 
	{ local_A_17_d0 sc_out sc_lv 32 signal 22 } 
	{ local_A_18_address0 sc_out sc_lv 6 signal 23 } 
	{ local_A_18_ce0 sc_out sc_logic 1 signal 23 } 
	{ local_A_18_we0 sc_out sc_logic 1 signal 23 } 
	{ local_A_18_d0 sc_out sc_lv 32 signal 23 } 
	{ local_A_19_address0 sc_out sc_lv 6 signal 24 } 
	{ local_A_19_ce0 sc_out sc_logic 1 signal 24 } 
	{ local_A_19_we0 sc_out sc_logic 1 signal 24 } 
	{ local_A_19_d0 sc_out sc_lv 32 signal 24 } 
	{ local_A_20_address0 sc_out sc_lv 6 signal 25 } 
	{ local_A_20_ce0 sc_out sc_logic 1 signal 25 } 
	{ local_A_20_we0 sc_out sc_logic 1 signal 25 } 
	{ local_A_20_d0 sc_out sc_lv 32 signal 25 } 
	{ local_A_21_address0 sc_out sc_lv 6 signal 26 } 
	{ local_A_21_ce0 sc_out sc_logic 1 signal 26 } 
	{ local_A_21_we0 sc_out sc_logic 1 signal 26 } 
	{ local_A_21_d0 sc_out sc_lv 32 signal 26 } 
	{ local_A_22_address0 sc_out sc_lv 6 signal 27 } 
	{ local_A_22_ce0 sc_out sc_logic 1 signal 27 } 
	{ local_A_22_we0 sc_out sc_logic 1 signal 27 } 
	{ local_A_22_d0 sc_out sc_lv 32 signal 27 } 
	{ local_A_23_address0 sc_out sc_lv 6 signal 28 } 
	{ local_A_23_ce0 sc_out sc_logic 1 signal 28 } 
	{ local_A_23_we0 sc_out sc_logic 1 signal 28 } 
	{ local_A_23_d0 sc_out sc_lv 32 signal 28 } 
	{ local_A_24_address0 sc_out sc_lv 6 signal 29 } 
	{ local_A_24_ce0 sc_out sc_logic 1 signal 29 } 
	{ local_A_24_we0 sc_out sc_logic 1 signal 29 } 
	{ local_A_24_d0 sc_out sc_lv 32 signal 29 } 
	{ local_A_25_address0 sc_out sc_lv 6 signal 30 } 
	{ local_A_25_ce0 sc_out sc_logic 1 signal 30 } 
	{ local_A_25_we0 sc_out sc_logic 1 signal 30 } 
	{ local_A_25_d0 sc_out sc_lv 32 signal 30 } 
	{ local_A_26_address0 sc_out sc_lv 6 signal 31 } 
	{ local_A_26_ce0 sc_out sc_logic 1 signal 31 } 
	{ local_A_26_we0 sc_out sc_logic 1 signal 31 } 
	{ local_A_26_d0 sc_out sc_lv 32 signal 31 } 
	{ local_A_27_address0 sc_out sc_lv 6 signal 32 } 
	{ local_A_27_ce0 sc_out sc_logic 1 signal 32 } 
	{ local_A_27_we0 sc_out sc_logic 1 signal 32 } 
	{ local_A_27_d0 sc_out sc_lv 32 signal 32 } 
	{ local_A_28_address0 sc_out sc_lv 6 signal 33 } 
	{ local_A_28_ce0 sc_out sc_logic 1 signal 33 } 
	{ local_A_28_we0 sc_out sc_logic 1 signal 33 } 
	{ local_A_28_d0 sc_out sc_lv 32 signal 33 } 
	{ local_A_29_address0 sc_out sc_lv 6 signal 34 } 
	{ local_A_29_ce0 sc_out sc_logic 1 signal 34 } 
	{ local_A_29_we0 sc_out sc_logic 1 signal 34 } 
	{ local_A_29_d0 sc_out sc_lv 32 signal 34 } 
	{ local_A_30_address0 sc_out sc_lv 6 signal 35 } 
	{ local_A_30_ce0 sc_out sc_logic 1 signal 35 } 
	{ local_A_30_we0 sc_out sc_logic 1 signal 35 } 
	{ local_A_30_d0 sc_out sc_lv 32 signal 35 } 
	{ local_A_31_address0 sc_out sc_lv 6 signal 36 } 
	{ local_A_31_ce0 sc_out sc_logic 1 signal 36 } 
	{ local_A_31_we0 sc_out sc_logic 1 signal 36 } 
	{ local_A_31_d0 sc_out sc_lv 32 signal 36 } 
	{ local_A_32_address0 sc_out sc_lv 6 signal 37 } 
	{ local_A_32_ce0 sc_out sc_logic 1 signal 37 } 
	{ local_A_32_we0 sc_out sc_logic 1 signal 37 } 
	{ local_A_32_d0 sc_out sc_lv 32 signal 37 } 
	{ local_A_33_address0 sc_out sc_lv 6 signal 38 } 
	{ local_A_33_ce0 sc_out sc_logic 1 signal 38 } 
	{ local_A_33_we0 sc_out sc_logic 1 signal 38 } 
	{ local_A_33_d0 sc_out sc_lv 32 signal 38 } 
	{ local_A_34_address0 sc_out sc_lv 6 signal 39 } 
	{ local_A_34_ce0 sc_out sc_logic 1 signal 39 } 
	{ local_A_34_we0 sc_out sc_logic 1 signal 39 } 
	{ local_A_34_d0 sc_out sc_lv 32 signal 39 } 
	{ local_A_35_address0 sc_out sc_lv 6 signal 40 } 
	{ local_A_35_ce0 sc_out sc_logic 1 signal 40 } 
	{ local_A_35_we0 sc_out sc_logic 1 signal 40 } 
	{ local_A_35_d0 sc_out sc_lv 32 signal 40 } 
	{ local_A_36_address0 sc_out sc_lv 6 signal 41 } 
	{ local_A_36_ce0 sc_out sc_logic 1 signal 41 } 
	{ local_A_36_we0 sc_out sc_logic 1 signal 41 } 
	{ local_A_36_d0 sc_out sc_lv 32 signal 41 } 
	{ local_A_37_address0 sc_out sc_lv 6 signal 42 } 
	{ local_A_37_ce0 sc_out sc_logic 1 signal 42 } 
	{ local_A_37_we0 sc_out sc_logic 1 signal 42 } 
	{ local_A_37_d0 sc_out sc_lv 32 signal 42 } 
	{ local_A_38_address0 sc_out sc_lv 6 signal 43 } 
	{ local_A_38_ce0 sc_out sc_logic 1 signal 43 } 
	{ local_A_38_we0 sc_out sc_logic 1 signal 43 } 
	{ local_A_38_d0 sc_out sc_lv 32 signal 43 } 
	{ local_A_39_address0 sc_out sc_lv 6 signal 44 } 
	{ local_A_39_ce0 sc_out sc_logic 1 signal 44 } 
	{ local_A_39_we0 sc_out sc_logic 1 signal 44 } 
	{ local_A_39_d0 sc_out sc_lv 32 signal 44 } 
	{ local_A_40_address0 sc_out sc_lv 6 signal 45 } 
	{ local_A_40_ce0 sc_out sc_logic 1 signal 45 } 
	{ local_A_40_we0 sc_out sc_logic 1 signal 45 } 
	{ local_A_40_d0 sc_out sc_lv 32 signal 45 } 
	{ local_A_41_address0 sc_out sc_lv 6 signal 46 } 
	{ local_A_41_ce0 sc_out sc_logic 1 signal 46 } 
	{ local_A_41_we0 sc_out sc_logic 1 signal 46 } 
	{ local_A_41_d0 sc_out sc_lv 32 signal 46 } 
	{ local_A_42_address0 sc_out sc_lv 6 signal 47 } 
	{ local_A_42_ce0 sc_out sc_logic 1 signal 47 } 
	{ local_A_42_we0 sc_out sc_logic 1 signal 47 } 
	{ local_A_42_d0 sc_out sc_lv 32 signal 47 } 
	{ local_A_43_address0 sc_out sc_lv 6 signal 48 } 
	{ local_A_43_ce0 sc_out sc_logic 1 signal 48 } 
	{ local_A_43_we0 sc_out sc_logic 1 signal 48 } 
	{ local_A_43_d0 sc_out sc_lv 32 signal 48 } 
	{ local_A_44_address0 sc_out sc_lv 6 signal 49 } 
	{ local_A_44_ce0 sc_out sc_logic 1 signal 49 } 
	{ local_A_44_we0 sc_out sc_logic 1 signal 49 } 
	{ local_A_44_d0 sc_out sc_lv 32 signal 49 } 
	{ local_A_45_address0 sc_out sc_lv 6 signal 50 } 
	{ local_A_45_ce0 sc_out sc_logic 1 signal 50 } 
	{ local_A_45_we0 sc_out sc_logic 1 signal 50 } 
	{ local_A_45_d0 sc_out sc_lv 32 signal 50 } 
	{ local_A_46_address0 sc_out sc_lv 6 signal 51 } 
	{ local_A_46_ce0 sc_out sc_logic 1 signal 51 } 
	{ local_A_46_we0 sc_out sc_logic 1 signal 51 } 
	{ local_A_46_d0 sc_out sc_lv 32 signal 51 } 
	{ local_A_47_address0 sc_out sc_lv 6 signal 52 } 
	{ local_A_47_ce0 sc_out sc_logic 1 signal 52 } 
	{ local_A_47_we0 sc_out sc_logic 1 signal 52 } 
	{ local_A_47_d0 sc_out sc_lv 32 signal 52 } 
	{ local_A_48_address0 sc_out sc_lv 6 signal 53 } 
	{ local_A_48_ce0 sc_out sc_logic 1 signal 53 } 
	{ local_A_48_we0 sc_out sc_logic 1 signal 53 } 
	{ local_A_48_d0 sc_out sc_lv 32 signal 53 } 
	{ local_A_49_address0 sc_out sc_lv 6 signal 54 } 
	{ local_A_49_ce0 sc_out sc_logic 1 signal 54 } 
	{ local_A_49_we0 sc_out sc_logic 1 signal 54 } 
	{ local_A_49_d0 sc_out sc_lv 32 signal 54 } 
	{ local_A_50_address0 sc_out sc_lv 6 signal 55 } 
	{ local_A_50_ce0 sc_out sc_logic 1 signal 55 } 
	{ local_A_50_we0 sc_out sc_logic 1 signal 55 } 
	{ local_A_50_d0 sc_out sc_lv 32 signal 55 } 
	{ local_A_51_address0 sc_out sc_lv 6 signal 56 } 
	{ local_A_51_ce0 sc_out sc_logic 1 signal 56 } 
	{ local_A_51_we0 sc_out sc_logic 1 signal 56 } 
	{ local_A_51_d0 sc_out sc_lv 32 signal 56 } 
	{ local_A_52_address0 sc_out sc_lv 6 signal 57 } 
	{ local_A_52_ce0 sc_out sc_logic 1 signal 57 } 
	{ local_A_52_we0 sc_out sc_logic 1 signal 57 } 
	{ local_A_52_d0 sc_out sc_lv 32 signal 57 } 
	{ local_A_53_address0 sc_out sc_lv 6 signal 58 } 
	{ local_A_53_ce0 sc_out sc_logic 1 signal 58 } 
	{ local_A_53_we0 sc_out sc_logic 1 signal 58 } 
	{ local_A_53_d0 sc_out sc_lv 32 signal 58 } 
	{ local_A_54_address0 sc_out sc_lv 6 signal 59 } 
	{ local_A_54_ce0 sc_out sc_logic 1 signal 59 } 
	{ local_A_54_we0 sc_out sc_logic 1 signal 59 } 
	{ local_A_54_d0 sc_out sc_lv 32 signal 59 } 
	{ local_A_55_address0 sc_out sc_lv 6 signal 60 } 
	{ local_A_55_ce0 sc_out sc_logic 1 signal 60 } 
	{ local_A_55_we0 sc_out sc_logic 1 signal 60 } 
	{ local_A_55_d0 sc_out sc_lv 32 signal 60 } 
	{ local_A_56_address0 sc_out sc_lv 6 signal 61 } 
	{ local_A_56_ce0 sc_out sc_logic 1 signal 61 } 
	{ local_A_56_we0 sc_out sc_logic 1 signal 61 } 
	{ local_A_56_d0 sc_out sc_lv 32 signal 61 } 
	{ local_A_57_address0 sc_out sc_lv 6 signal 62 } 
	{ local_A_57_ce0 sc_out sc_logic 1 signal 62 } 
	{ local_A_57_we0 sc_out sc_logic 1 signal 62 } 
	{ local_A_57_d0 sc_out sc_lv 32 signal 62 } 
	{ local_A_58_address0 sc_out sc_lv 6 signal 63 } 
	{ local_A_58_ce0 sc_out sc_logic 1 signal 63 } 
	{ local_A_58_we0 sc_out sc_logic 1 signal 63 } 
	{ local_A_58_d0 sc_out sc_lv 32 signal 63 } 
	{ local_A_59_address0 sc_out sc_lv 6 signal 64 } 
	{ local_A_59_ce0 sc_out sc_logic 1 signal 64 } 
	{ local_A_59_we0 sc_out sc_logic 1 signal 64 } 
	{ local_A_59_d0 sc_out sc_lv 32 signal 64 } 
	{ local_A_60_address0 sc_out sc_lv 6 signal 65 } 
	{ local_A_60_ce0 sc_out sc_logic 1 signal 65 } 
	{ local_A_60_we0 sc_out sc_logic 1 signal 65 } 
	{ local_A_60_d0 sc_out sc_lv 32 signal 65 } 
	{ local_A_61_address0 sc_out sc_lv 6 signal 66 } 
	{ local_A_61_ce0 sc_out sc_logic 1 signal 66 } 
	{ local_A_61_we0 sc_out sc_logic 1 signal 66 } 
	{ local_A_61_d0 sc_out sc_lv 32 signal 66 } 
	{ local_A_62_address0 sc_out sc_lv 6 signal 67 } 
	{ local_A_62_ce0 sc_out sc_logic 1 signal 67 } 
	{ local_A_62_we0 sc_out sc_logic 1 signal 67 } 
	{ local_A_62_d0 sc_out sc_lv 32 signal 67 } 
	{ local_A_63_address0 sc_out sc_lv 6 signal 68 } 
	{ local_A_63_ce0 sc_out sc_logic 1 signal 68 } 
	{ local_A_63_we0 sc_out sc_logic 1 signal 68 } 
	{ local_A_63_d0 sc_out sc_lv 32 signal 68 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "local_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A", "role": "address0" }} , 
 	{ "name": "local_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A", "role": "ce0" }} , 
 	{ "name": "local_A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A", "role": "we0" }} , 
 	{ "name": "local_A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A", "role": "d0" }} , 
 	{ "name": "shl_ln35_1_mid2", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "shl_ln35_1_mid2", "role": "default" }} , 
 	{ "name": "zext_ln34", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln34", "role": "default" }} , 
 	{ "name": "zext_ln44", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln44", "role": "default" }} , 
 	{ "name": "A", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "default" }} , 
 	{ "name": "local_A_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_1", "role": "address0" }} , 
 	{ "name": "local_A_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_1", "role": "ce0" }} , 
 	{ "name": "local_A_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_1", "role": "we0" }} , 
 	{ "name": "local_A_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_1", "role": "d0" }} , 
 	{ "name": "local_A_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_2", "role": "address0" }} , 
 	{ "name": "local_A_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_2", "role": "ce0" }} , 
 	{ "name": "local_A_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_2", "role": "we0" }} , 
 	{ "name": "local_A_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_2", "role": "d0" }} , 
 	{ "name": "local_A_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_3", "role": "address0" }} , 
 	{ "name": "local_A_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_3", "role": "ce0" }} , 
 	{ "name": "local_A_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_3", "role": "we0" }} , 
 	{ "name": "local_A_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_3", "role": "d0" }} , 
 	{ "name": "local_A_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_4", "role": "address0" }} , 
 	{ "name": "local_A_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_4", "role": "ce0" }} , 
 	{ "name": "local_A_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_4", "role": "we0" }} , 
 	{ "name": "local_A_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_4", "role": "d0" }} , 
 	{ "name": "local_A_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_5", "role": "address0" }} , 
 	{ "name": "local_A_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_5", "role": "ce0" }} , 
 	{ "name": "local_A_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_5", "role": "we0" }} , 
 	{ "name": "local_A_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_5", "role": "d0" }} , 
 	{ "name": "local_A_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_6", "role": "address0" }} , 
 	{ "name": "local_A_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_6", "role": "ce0" }} , 
 	{ "name": "local_A_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_6", "role": "we0" }} , 
 	{ "name": "local_A_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_6", "role": "d0" }} , 
 	{ "name": "local_A_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_7", "role": "address0" }} , 
 	{ "name": "local_A_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_7", "role": "ce0" }} , 
 	{ "name": "local_A_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_7", "role": "we0" }} , 
 	{ "name": "local_A_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_7", "role": "d0" }} , 
 	{ "name": "local_A_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_8", "role": "address0" }} , 
 	{ "name": "local_A_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_8", "role": "ce0" }} , 
 	{ "name": "local_A_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_8", "role": "we0" }} , 
 	{ "name": "local_A_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_8", "role": "d0" }} , 
 	{ "name": "local_A_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_9", "role": "address0" }} , 
 	{ "name": "local_A_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_9", "role": "ce0" }} , 
 	{ "name": "local_A_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_9", "role": "we0" }} , 
 	{ "name": "local_A_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_9", "role": "d0" }} , 
 	{ "name": "local_A_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_10", "role": "address0" }} , 
 	{ "name": "local_A_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_10", "role": "ce0" }} , 
 	{ "name": "local_A_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_10", "role": "we0" }} , 
 	{ "name": "local_A_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_10", "role": "d0" }} , 
 	{ "name": "local_A_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_11", "role": "address0" }} , 
 	{ "name": "local_A_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_11", "role": "ce0" }} , 
 	{ "name": "local_A_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_11", "role": "we0" }} , 
 	{ "name": "local_A_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_11", "role": "d0" }} , 
 	{ "name": "local_A_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_12", "role": "address0" }} , 
 	{ "name": "local_A_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_12", "role": "ce0" }} , 
 	{ "name": "local_A_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_12", "role": "we0" }} , 
 	{ "name": "local_A_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_12", "role": "d0" }} , 
 	{ "name": "local_A_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_13", "role": "address0" }} , 
 	{ "name": "local_A_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_13", "role": "ce0" }} , 
 	{ "name": "local_A_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_13", "role": "we0" }} , 
 	{ "name": "local_A_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_13", "role": "d0" }} , 
 	{ "name": "local_A_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_14", "role": "address0" }} , 
 	{ "name": "local_A_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_14", "role": "ce0" }} , 
 	{ "name": "local_A_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_14", "role": "we0" }} , 
 	{ "name": "local_A_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_14", "role": "d0" }} , 
 	{ "name": "local_A_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_15", "role": "address0" }} , 
 	{ "name": "local_A_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_15", "role": "ce0" }} , 
 	{ "name": "local_A_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_15", "role": "we0" }} , 
 	{ "name": "local_A_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_15", "role": "d0" }} , 
 	{ "name": "local_A_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_16", "role": "address0" }} , 
 	{ "name": "local_A_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_16", "role": "ce0" }} , 
 	{ "name": "local_A_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_16", "role": "we0" }} , 
 	{ "name": "local_A_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_16", "role": "d0" }} , 
 	{ "name": "local_A_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_17", "role": "address0" }} , 
 	{ "name": "local_A_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_17", "role": "ce0" }} , 
 	{ "name": "local_A_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_17", "role": "we0" }} , 
 	{ "name": "local_A_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_17", "role": "d0" }} , 
 	{ "name": "local_A_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_18", "role": "address0" }} , 
 	{ "name": "local_A_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_18", "role": "ce0" }} , 
 	{ "name": "local_A_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_18", "role": "we0" }} , 
 	{ "name": "local_A_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_18", "role": "d0" }} , 
 	{ "name": "local_A_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_19", "role": "address0" }} , 
 	{ "name": "local_A_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_19", "role": "ce0" }} , 
 	{ "name": "local_A_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_19", "role": "we0" }} , 
 	{ "name": "local_A_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_19", "role": "d0" }} , 
 	{ "name": "local_A_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_20", "role": "address0" }} , 
 	{ "name": "local_A_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_20", "role": "ce0" }} , 
 	{ "name": "local_A_20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_20", "role": "we0" }} , 
 	{ "name": "local_A_20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_20", "role": "d0" }} , 
 	{ "name": "local_A_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_21", "role": "address0" }} , 
 	{ "name": "local_A_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_21", "role": "ce0" }} , 
 	{ "name": "local_A_21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_21", "role": "we0" }} , 
 	{ "name": "local_A_21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_21", "role": "d0" }} , 
 	{ "name": "local_A_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_22", "role": "address0" }} , 
 	{ "name": "local_A_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_22", "role": "ce0" }} , 
 	{ "name": "local_A_22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_22", "role": "we0" }} , 
 	{ "name": "local_A_22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_22", "role": "d0" }} , 
 	{ "name": "local_A_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_23", "role": "address0" }} , 
 	{ "name": "local_A_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_23", "role": "ce0" }} , 
 	{ "name": "local_A_23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_23", "role": "we0" }} , 
 	{ "name": "local_A_23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_23", "role": "d0" }} , 
 	{ "name": "local_A_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_24", "role": "address0" }} , 
 	{ "name": "local_A_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_24", "role": "ce0" }} , 
 	{ "name": "local_A_24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_24", "role": "we0" }} , 
 	{ "name": "local_A_24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_24", "role": "d0" }} , 
 	{ "name": "local_A_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_25", "role": "address0" }} , 
 	{ "name": "local_A_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_25", "role": "ce0" }} , 
 	{ "name": "local_A_25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_25", "role": "we0" }} , 
 	{ "name": "local_A_25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_25", "role": "d0" }} , 
 	{ "name": "local_A_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_26", "role": "address0" }} , 
 	{ "name": "local_A_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_26", "role": "ce0" }} , 
 	{ "name": "local_A_26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_26", "role": "we0" }} , 
 	{ "name": "local_A_26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_26", "role": "d0" }} , 
 	{ "name": "local_A_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_27", "role": "address0" }} , 
 	{ "name": "local_A_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_27", "role": "ce0" }} , 
 	{ "name": "local_A_27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_27", "role": "we0" }} , 
 	{ "name": "local_A_27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_27", "role": "d0" }} , 
 	{ "name": "local_A_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_28", "role": "address0" }} , 
 	{ "name": "local_A_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_28", "role": "ce0" }} , 
 	{ "name": "local_A_28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_28", "role": "we0" }} , 
 	{ "name": "local_A_28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_28", "role": "d0" }} , 
 	{ "name": "local_A_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_29", "role": "address0" }} , 
 	{ "name": "local_A_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_29", "role": "ce0" }} , 
 	{ "name": "local_A_29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_29", "role": "we0" }} , 
 	{ "name": "local_A_29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_29", "role": "d0" }} , 
 	{ "name": "local_A_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_30", "role": "address0" }} , 
 	{ "name": "local_A_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_30", "role": "ce0" }} , 
 	{ "name": "local_A_30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_30", "role": "we0" }} , 
 	{ "name": "local_A_30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_30", "role": "d0" }} , 
 	{ "name": "local_A_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_31", "role": "address0" }} , 
 	{ "name": "local_A_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_31", "role": "ce0" }} , 
 	{ "name": "local_A_31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_31", "role": "we0" }} , 
 	{ "name": "local_A_31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_31", "role": "d0" }} , 
 	{ "name": "local_A_32_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_32", "role": "address0" }} , 
 	{ "name": "local_A_32_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_32", "role": "ce0" }} , 
 	{ "name": "local_A_32_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_32", "role": "we0" }} , 
 	{ "name": "local_A_32_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_32", "role": "d0" }} , 
 	{ "name": "local_A_33_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_33", "role": "address0" }} , 
 	{ "name": "local_A_33_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_33", "role": "ce0" }} , 
 	{ "name": "local_A_33_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_33", "role": "we0" }} , 
 	{ "name": "local_A_33_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_33", "role": "d0" }} , 
 	{ "name": "local_A_34_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_34", "role": "address0" }} , 
 	{ "name": "local_A_34_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_34", "role": "ce0" }} , 
 	{ "name": "local_A_34_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_34", "role": "we0" }} , 
 	{ "name": "local_A_34_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_34", "role": "d0" }} , 
 	{ "name": "local_A_35_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_35", "role": "address0" }} , 
 	{ "name": "local_A_35_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_35", "role": "ce0" }} , 
 	{ "name": "local_A_35_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_35", "role": "we0" }} , 
 	{ "name": "local_A_35_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_35", "role": "d0" }} , 
 	{ "name": "local_A_36_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_36", "role": "address0" }} , 
 	{ "name": "local_A_36_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_36", "role": "ce0" }} , 
 	{ "name": "local_A_36_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_36", "role": "we0" }} , 
 	{ "name": "local_A_36_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_36", "role": "d0" }} , 
 	{ "name": "local_A_37_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_37", "role": "address0" }} , 
 	{ "name": "local_A_37_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_37", "role": "ce0" }} , 
 	{ "name": "local_A_37_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_37", "role": "we0" }} , 
 	{ "name": "local_A_37_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_37", "role": "d0" }} , 
 	{ "name": "local_A_38_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_38", "role": "address0" }} , 
 	{ "name": "local_A_38_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_38", "role": "ce0" }} , 
 	{ "name": "local_A_38_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_38", "role": "we0" }} , 
 	{ "name": "local_A_38_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_38", "role": "d0" }} , 
 	{ "name": "local_A_39_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_39", "role": "address0" }} , 
 	{ "name": "local_A_39_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_39", "role": "ce0" }} , 
 	{ "name": "local_A_39_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_39", "role": "we0" }} , 
 	{ "name": "local_A_39_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_39", "role": "d0" }} , 
 	{ "name": "local_A_40_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_40", "role": "address0" }} , 
 	{ "name": "local_A_40_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_40", "role": "ce0" }} , 
 	{ "name": "local_A_40_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_40", "role": "we0" }} , 
 	{ "name": "local_A_40_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_40", "role": "d0" }} , 
 	{ "name": "local_A_41_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_41", "role": "address0" }} , 
 	{ "name": "local_A_41_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_41", "role": "ce0" }} , 
 	{ "name": "local_A_41_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_41", "role": "we0" }} , 
 	{ "name": "local_A_41_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_41", "role": "d0" }} , 
 	{ "name": "local_A_42_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_42", "role": "address0" }} , 
 	{ "name": "local_A_42_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_42", "role": "ce0" }} , 
 	{ "name": "local_A_42_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_42", "role": "we0" }} , 
 	{ "name": "local_A_42_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_42", "role": "d0" }} , 
 	{ "name": "local_A_43_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_43", "role": "address0" }} , 
 	{ "name": "local_A_43_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_43", "role": "ce0" }} , 
 	{ "name": "local_A_43_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_43", "role": "we0" }} , 
 	{ "name": "local_A_43_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_43", "role": "d0" }} , 
 	{ "name": "local_A_44_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_44", "role": "address0" }} , 
 	{ "name": "local_A_44_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_44", "role": "ce0" }} , 
 	{ "name": "local_A_44_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_44", "role": "we0" }} , 
 	{ "name": "local_A_44_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_44", "role": "d0" }} , 
 	{ "name": "local_A_45_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_45", "role": "address0" }} , 
 	{ "name": "local_A_45_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_45", "role": "ce0" }} , 
 	{ "name": "local_A_45_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_45", "role": "we0" }} , 
 	{ "name": "local_A_45_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_45", "role": "d0" }} , 
 	{ "name": "local_A_46_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_46", "role": "address0" }} , 
 	{ "name": "local_A_46_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_46", "role": "ce0" }} , 
 	{ "name": "local_A_46_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_46", "role": "we0" }} , 
 	{ "name": "local_A_46_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_46", "role": "d0" }} , 
 	{ "name": "local_A_47_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_47", "role": "address0" }} , 
 	{ "name": "local_A_47_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_47", "role": "ce0" }} , 
 	{ "name": "local_A_47_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_47", "role": "we0" }} , 
 	{ "name": "local_A_47_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_47", "role": "d0" }} , 
 	{ "name": "local_A_48_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_48", "role": "address0" }} , 
 	{ "name": "local_A_48_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_48", "role": "ce0" }} , 
 	{ "name": "local_A_48_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_48", "role": "we0" }} , 
 	{ "name": "local_A_48_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_48", "role": "d0" }} , 
 	{ "name": "local_A_49_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_49", "role": "address0" }} , 
 	{ "name": "local_A_49_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_49", "role": "ce0" }} , 
 	{ "name": "local_A_49_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_49", "role": "we0" }} , 
 	{ "name": "local_A_49_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_49", "role": "d0" }} , 
 	{ "name": "local_A_50_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_50", "role": "address0" }} , 
 	{ "name": "local_A_50_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_50", "role": "ce0" }} , 
 	{ "name": "local_A_50_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_50", "role": "we0" }} , 
 	{ "name": "local_A_50_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_50", "role": "d0" }} , 
 	{ "name": "local_A_51_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_51", "role": "address0" }} , 
 	{ "name": "local_A_51_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_51", "role": "ce0" }} , 
 	{ "name": "local_A_51_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_51", "role": "we0" }} , 
 	{ "name": "local_A_51_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_51", "role": "d0" }} , 
 	{ "name": "local_A_52_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_52", "role": "address0" }} , 
 	{ "name": "local_A_52_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_52", "role": "ce0" }} , 
 	{ "name": "local_A_52_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_52", "role": "we0" }} , 
 	{ "name": "local_A_52_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_52", "role": "d0" }} , 
 	{ "name": "local_A_53_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_53", "role": "address0" }} , 
 	{ "name": "local_A_53_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_53", "role": "ce0" }} , 
 	{ "name": "local_A_53_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_53", "role": "we0" }} , 
 	{ "name": "local_A_53_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_53", "role": "d0" }} , 
 	{ "name": "local_A_54_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_54", "role": "address0" }} , 
 	{ "name": "local_A_54_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_54", "role": "ce0" }} , 
 	{ "name": "local_A_54_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_54", "role": "we0" }} , 
 	{ "name": "local_A_54_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_54", "role": "d0" }} , 
 	{ "name": "local_A_55_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_55", "role": "address0" }} , 
 	{ "name": "local_A_55_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_55", "role": "ce0" }} , 
 	{ "name": "local_A_55_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_55", "role": "we0" }} , 
 	{ "name": "local_A_55_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_55", "role": "d0" }} , 
 	{ "name": "local_A_56_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_56", "role": "address0" }} , 
 	{ "name": "local_A_56_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_56", "role": "ce0" }} , 
 	{ "name": "local_A_56_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_56", "role": "we0" }} , 
 	{ "name": "local_A_56_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_56", "role": "d0" }} , 
 	{ "name": "local_A_57_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_57", "role": "address0" }} , 
 	{ "name": "local_A_57_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_57", "role": "ce0" }} , 
 	{ "name": "local_A_57_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_57", "role": "we0" }} , 
 	{ "name": "local_A_57_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_57", "role": "d0" }} , 
 	{ "name": "local_A_58_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_58", "role": "address0" }} , 
 	{ "name": "local_A_58_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_58", "role": "ce0" }} , 
 	{ "name": "local_A_58_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_58", "role": "we0" }} , 
 	{ "name": "local_A_58_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_58", "role": "d0" }} , 
 	{ "name": "local_A_59_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_59", "role": "address0" }} , 
 	{ "name": "local_A_59_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_59", "role": "ce0" }} , 
 	{ "name": "local_A_59_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_59", "role": "we0" }} , 
 	{ "name": "local_A_59_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_59", "role": "d0" }} , 
 	{ "name": "local_A_60_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_60", "role": "address0" }} , 
 	{ "name": "local_A_60_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_60", "role": "ce0" }} , 
 	{ "name": "local_A_60_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_60", "role": "we0" }} , 
 	{ "name": "local_A_60_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_60", "role": "d0" }} , 
 	{ "name": "local_A_61_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_61", "role": "address0" }} , 
 	{ "name": "local_A_61_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_61", "role": "ce0" }} , 
 	{ "name": "local_A_61_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_61", "role": "we0" }} , 
 	{ "name": "local_A_61_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_61", "role": "d0" }} , 
 	{ "name": "local_A_62_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_62", "role": "address0" }} , 
 	{ "name": "local_A_62_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_62", "role": "ce0" }} , 
 	{ "name": "local_A_62_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_62", "role": "we0" }} , 
 	{ "name": "local_A_62_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_62", "role": "d0" }} , 
 	{ "name": "local_A_63_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_A_63", "role": "address0" }} , 
 	{ "name": "local_A_63_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_63", "role": "ce0" }} , 
 	{ "name": "local_A_63_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A_63", "role": "we0" }} , 
 	{ "name": "local_A_63_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_A_63", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "matrix_mul_Pipeline_VITIS_LOOP_47_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4109", "EstimateLatencyMax" : "4109",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"}]},
			{"Name" : "local_A", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "shl_ln35_1_mid2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln34", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln44", "Type" : "None", "Direction" : "I"},
			{"Name" : "A", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_A_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_32", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_33", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_34", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_35", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_36", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_37", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_38", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_39", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_40", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_41", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_42", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_43", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_44", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_45", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_46", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_47", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_48", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_49", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_50", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_51", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_52", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_53", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_54", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_55", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_56", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_57", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_58", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_59", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_60", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_61", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_62", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_A_63", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_6_VITIS_LOOP_47_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter12", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32ns_62_2_1_U65", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrix_mul_Pipeline_VITIS_LOOP_47_7 {
		gmem0 {Type I LastRead 11 FirstWrite -1}
		local_A {Type O LastRead -1 FirstWrite 12}
		shl_ln35_1_mid2 {Type I LastRead 0 FirstWrite -1}
		zext_ln34 {Type I LastRead 0 FirstWrite -1}
		zext_ln44 {Type I LastRead 0 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}
		local_A_1 {Type O LastRead -1 FirstWrite 12}
		local_A_2 {Type O LastRead -1 FirstWrite 12}
		local_A_3 {Type O LastRead -1 FirstWrite 12}
		local_A_4 {Type O LastRead -1 FirstWrite 12}
		local_A_5 {Type O LastRead -1 FirstWrite 12}
		local_A_6 {Type O LastRead -1 FirstWrite 12}
		local_A_7 {Type O LastRead -1 FirstWrite 12}
		local_A_8 {Type O LastRead -1 FirstWrite 12}
		local_A_9 {Type O LastRead -1 FirstWrite 12}
		local_A_10 {Type O LastRead -1 FirstWrite 12}
		local_A_11 {Type O LastRead -1 FirstWrite 12}
		local_A_12 {Type O LastRead -1 FirstWrite 12}
		local_A_13 {Type O LastRead -1 FirstWrite 12}
		local_A_14 {Type O LastRead -1 FirstWrite 12}
		local_A_15 {Type O LastRead -1 FirstWrite 12}
		local_A_16 {Type O LastRead -1 FirstWrite 12}
		local_A_17 {Type O LastRead -1 FirstWrite 12}
		local_A_18 {Type O LastRead -1 FirstWrite 12}
		local_A_19 {Type O LastRead -1 FirstWrite 12}
		local_A_20 {Type O LastRead -1 FirstWrite 12}
		local_A_21 {Type O LastRead -1 FirstWrite 12}
		local_A_22 {Type O LastRead -1 FirstWrite 12}
		local_A_23 {Type O LastRead -1 FirstWrite 12}
		local_A_24 {Type O LastRead -1 FirstWrite 12}
		local_A_25 {Type O LastRead -1 FirstWrite 12}
		local_A_26 {Type O LastRead -1 FirstWrite 12}
		local_A_27 {Type O LastRead -1 FirstWrite 12}
		local_A_28 {Type O LastRead -1 FirstWrite 12}
		local_A_29 {Type O LastRead -1 FirstWrite 12}
		local_A_30 {Type O LastRead -1 FirstWrite 12}
		local_A_31 {Type O LastRead -1 FirstWrite 12}
		local_A_32 {Type O LastRead -1 FirstWrite 12}
		local_A_33 {Type O LastRead -1 FirstWrite 12}
		local_A_34 {Type O LastRead -1 FirstWrite 12}
		local_A_35 {Type O LastRead -1 FirstWrite 12}
		local_A_36 {Type O LastRead -1 FirstWrite 12}
		local_A_37 {Type O LastRead -1 FirstWrite 12}
		local_A_38 {Type O LastRead -1 FirstWrite 12}
		local_A_39 {Type O LastRead -1 FirstWrite 12}
		local_A_40 {Type O LastRead -1 FirstWrite 12}
		local_A_41 {Type O LastRead -1 FirstWrite 12}
		local_A_42 {Type O LastRead -1 FirstWrite 12}
		local_A_43 {Type O LastRead -1 FirstWrite 12}
		local_A_44 {Type O LastRead -1 FirstWrite 12}
		local_A_45 {Type O LastRead -1 FirstWrite 12}
		local_A_46 {Type O LastRead -1 FirstWrite 12}
		local_A_47 {Type O LastRead -1 FirstWrite 12}
		local_A_48 {Type O LastRead -1 FirstWrite 12}
		local_A_49 {Type O LastRead -1 FirstWrite 12}
		local_A_50 {Type O LastRead -1 FirstWrite 12}
		local_A_51 {Type O LastRead -1 FirstWrite 12}
		local_A_52 {Type O LastRead -1 FirstWrite 12}
		local_A_53 {Type O LastRead -1 FirstWrite 12}
		local_A_54 {Type O LastRead -1 FirstWrite 12}
		local_A_55 {Type O LastRead -1 FirstWrite 12}
		local_A_56 {Type O LastRead -1 FirstWrite 12}
		local_A_57 {Type O LastRead -1 FirstWrite 12}
		local_A_58 {Type O LastRead -1 FirstWrite 12}
		local_A_59 {Type O LastRead -1 FirstWrite 12}
		local_A_60 {Type O LastRead -1 FirstWrite 12}
		local_A_61 {Type O LastRead -1 FirstWrite 12}
		local_A_62 {Type O LastRead -1 FirstWrite 12}
		local_A_63 {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4109", "Max" : "4109"}
	, {"Name" : "Interval", "Min" : "4109", "Max" : "4109"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 32 }  { m_axi_gmem0_WSTRB STRB 1 4 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 32 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	local_A { ap_memory {  { local_A_address0 mem_address 1 6 }  { local_A_ce0 mem_ce 1 1 }  { local_A_we0 mem_we 1 1 }  { local_A_d0 mem_din 1 32 } } }
	shl_ln35_1_mid2 { ap_none {  { shl_ln35_1_mid2 in_data 0 31 } } }
	zext_ln34 { ap_none {  { zext_ln34 in_data 0 32 } } }
	zext_ln44 { ap_none {  { zext_ln44 in_data 0 32 } } }
	A { ap_none {  { A in_data 0 64 } } }
	local_A_1 { ap_memory {  { local_A_1_address0 mem_address 1 6 }  { local_A_1_ce0 mem_ce 1 1 }  { local_A_1_we0 mem_we 1 1 }  { local_A_1_d0 mem_din 1 32 } } }
	local_A_2 { ap_memory {  { local_A_2_address0 mem_address 1 6 }  { local_A_2_ce0 mem_ce 1 1 }  { local_A_2_we0 mem_we 1 1 }  { local_A_2_d0 mem_din 1 32 } } }
	local_A_3 { ap_memory {  { local_A_3_address0 mem_address 1 6 }  { local_A_3_ce0 mem_ce 1 1 }  { local_A_3_we0 mem_we 1 1 }  { local_A_3_d0 mem_din 1 32 } } }
	local_A_4 { ap_memory {  { local_A_4_address0 mem_address 1 6 }  { local_A_4_ce0 mem_ce 1 1 }  { local_A_4_we0 mem_we 1 1 }  { local_A_4_d0 mem_din 1 32 } } }
	local_A_5 { ap_memory {  { local_A_5_address0 mem_address 1 6 }  { local_A_5_ce0 mem_ce 1 1 }  { local_A_5_we0 mem_we 1 1 }  { local_A_5_d0 mem_din 1 32 } } }
	local_A_6 { ap_memory {  { local_A_6_address0 mem_address 1 6 }  { local_A_6_ce0 mem_ce 1 1 }  { local_A_6_we0 mem_we 1 1 }  { local_A_6_d0 mem_din 1 32 } } }
	local_A_7 { ap_memory {  { local_A_7_address0 mem_address 1 6 }  { local_A_7_ce0 mem_ce 1 1 }  { local_A_7_we0 mem_we 1 1 }  { local_A_7_d0 mem_din 1 32 } } }
	local_A_8 { ap_memory {  { local_A_8_address0 mem_address 1 6 }  { local_A_8_ce0 mem_ce 1 1 }  { local_A_8_we0 mem_we 1 1 }  { local_A_8_d0 mem_din 1 32 } } }
	local_A_9 { ap_memory {  { local_A_9_address0 mem_address 1 6 }  { local_A_9_ce0 mem_ce 1 1 }  { local_A_9_we0 mem_we 1 1 }  { local_A_9_d0 mem_din 1 32 } } }
	local_A_10 { ap_memory {  { local_A_10_address0 mem_address 1 6 }  { local_A_10_ce0 mem_ce 1 1 }  { local_A_10_we0 mem_we 1 1 }  { local_A_10_d0 mem_din 1 32 } } }
	local_A_11 { ap_memory {  { local_A_11_address0 mem_address 1 6 }  { local_A_11_ce0 mem_ce 1 1 }  { local_A_11_we0 mem_we 1 1 }  { local_A_11_d0 mem_din 1 32 } } }
	local_A_12 { ap_memory {  { local_A_12_address0 mem_address 1 6 }  { local_A_12_ce0 mem_ce 1 1 }  { local_A_12_we0 mem_we 1 1 }  { local_A_12_d0 mem_din 1 32 } } }
	local_A_13 { ap_memory {  { local_A_13_address0 mem_address 1 6 }  { local_A_13_ce0 mem_ce 1 1 }  { local_A_13_we0 mem_we 1 1 }  { local_A_13_d0 mem_din 1 32 } } }
	local_A_14 { ap_memory {  { local_A_14_address0 mem_address 1 6 }  { local_A_14_ce0 mem_ce 1 1 }  { local_A_14_we0 mem_we 1 1 }  { local_A_14_d0 mem_din 1 32 } } }
	local_A_15 { ap_memory {  { local_A_15_address0 mem_address 1 6 }  { local_A_15_ce0 mem_ce 1 1 }  { local_A_15_we0 mem_we 1 1 }  { local_A_15_d0 mem_din 1 32 } } }
	local_A_16 { ap_memory {  { local_A_16_address0 mem_address 1 6 }  { local_A_16_ce0 mem_ce 1 1 }  { local_A_16_we0 mem_we 1 1 }  { local_A_16_d0 mem_din 1 32 } } }
	local_A_17 { ap_memory {  { local_A_17_address0 mem_address 1 6 }  { local_A_17_ce0 mem_ce 1 1 }  { local_A_17_we0 mem_we 1 1 }  { local_A_17_d0 mem_din 1 32 } } }
	local_A_18 { ap_memory {  { local_A_18_address0 mem_address 1 6 }  { local_A_18_ce0 mem_ce 1 1 }  { local_A_18_we0 mem_we 1 1 }  { local_A_18_d0 mem_din 1 32 } } }
	local_A_19 { ap_memory {  { local_A_19_address0 mem_address 1 6 }  { local_A_19_ce0 mem_ce 1 1 }  { local_A_19_we0 mem_we 1 1 }  { local_A_19_d0 mem_din 1 32 } } }
	local_A_20 { ap_memory {  { local_A_20_address0 mem_address 1 6 }  { local_A_20_ce0 mem_ce 1 1 }  { local_A_20_we0 mem_we 1 1 }  { local_A_20_d0 mem_din 1 32 } } }
	local_A_21 { ap_memory {  { local_A_21_address0 mem_address 1 6 }  { local_A_21_ce0 mem_ce 1 1 }  { local_A_21_we0 mem_we 1 1 }  { local_A_21_d0 mem_din 1 32 } } }
	local_A_22 { ap_memory {  { local_A_22_address0 mem_address 1 6 }  { local_A_22_ce0 mem_ce 1 1 }  { local_A_22_we0 mem_we 1 1 }  { local_A_22_d0 mem_din 1 32 } } }
	local_A_23 { ap_memory {  { local_A_23_address0 mem_address 1 6 }  { local_A_23_ce0 mem_ce 1 1 }  { local_A_23_we0 mem_we 1 1 }  { local_A_23_d0 mem_din 1 32 } } }
	local_A_24 { ap_memory {  { local_A_24_address0 mem_address 1 6 }  { local_A_24_ce0 mem_ce 1 1 }  { local_A_24_we0 mem_we 1 1 }  { local_A_24_d0 mem_din 1 32 } } }
	local_A_25 { ap_memory {  { local_A_25_address0 mem_address 1 6 }  { local_A_25_ce0 mem_ce 1 1 }  { local_A_25_we0 mem_we 1 1 }  { local_A_25_d0 mem_din 1 32 } } }
	local_A_26 { ap_memory {  { local_A_26_address0 mem_address 1 6 }  { local_A_26_ce0 mem_ce 1 1 }  { local_A_26_we0 mem_we 1 1 }  { local_A_26_d0 mem_din 1 32 } } }
	local_A_27 { ap_memory {  { local_A_27_address0 mem_address 1 6 }  { local_A_27_ce0 mem_ce 1 1 }  { local_A_27_we0 mem_we 1 1 }  { local_A_27_d0 mem_din 1 32 } } }
	local_A_28 { ap_memory {  { local_A_28_address0 mem_address 1 6 }  { local_A_28_ce0 mem_ce 1 1 }  { local_A_28_we0 mem_we 1 1 }  { local_A_28_d0 mem_din 1 32 } } }
	local_A_29 { ap_memory {  { local_A_29_address0 mem_address 1 6 }  { local_A_29_ce0 mem_ce 1 1 }  { local_A_29_we0 mem_we 1 1 }  { local_A_29_d0 mem_din 1 32 } } }
	local_A_30 { ap_memory {  { local_A_30_address0 mem_address 1 6 }  { local_A_30_ce0 mem_ce 1 1 }  { local_A_30_we0 mem_we 1 1 }  { local_A_30_d0 mem_din 1 32 } } }
	local_A_31 { ap_memory {  { local_A_31_address0 mem_address 1 6 }  { local_A_31_ce0 mem_ce 1 1 }  { local_A_31_we0 mem_we 1 1 }  { local_A_31_d0 mem_din 1 32 } } }
	local_A_32 { ap_memory {  { local_A_32_address0 mem_address 1 6 }  { local_A_32_ce0 mem_ce 1 1 }  { local_A_32_we0 mem_we 1 1 }  { local_A_32_d0 mem_din 1 32 } } }
	local_A_33 { ap_memory {  { local_A_33_address0 mem_address 1 6 }  { local_A_33_ce0 mem_ce 1 1 }  { local_A_33_we0 mem_we 1 1 }  { local_A_33_d0 mem_din 1 32 } } }
	local_A_34 { ap_memory {  { local_A_34_address0 mem_address 1 6 }  { local_A_34_ce0 mem_ce 1 1 }  { local_A_34_we0 mem_we 1 1 }  { local_A_34_d0 mem_din 1 32 } } }
	local_A_35 { ap_memory {  { local_A_35_address0 mem_address 1 6 }  { local_A_35_ce0 mem_ce 1 1 }  { local_A_35_we0 mem_we 1 1 }  { local_A_35_d0 mem_din 1 32 } } }
	local_A_36 { ap_memory {  { local_A_36_address0 mem_address 1 6 }  { local_A_36_ce0 mem_ce 1 1 }  { local_A_36_we0 mem_we 1 1 }  { local_A_36_d0 mem_din 1 32 } } }
	local_A_37 { ap_memory {  { local_A_37_address0 mem_address 1 6 }  { local_A_37_ce0 mem_ce 1 1 }  { local_A_37_we0 mem_we 1 1 }  { local_A_37_d0 mem_din 1 32 } } }
	local_A_38 { ap_memory {  { local_A_38_address0 mem_address 1 6 }  { local_A_38_ce0 mem_ce 1 1 }  { local_A_38_we0 mem_we 1 1 }  { local_A_38_d0 mem_din 1 32 } } }
	local_A_39 { ap_memory {  { local_A_39_address0 mem_address 1 6 }  { local_A_39_ce0 mem_ce 1 1 }  { local_A_39_we0 mem_we 1 1 }  { local_A_39_d0 mem_din 1 32 } } }
	local_A_40 { ap_memory {  { local_A_40_address0 mem_address 1 6 }  { local_A_40_ce0 mem_ce 1 1 }  { local_A_40_we0 mem_we 1 1 }  { local_A_40_d0 mem_din 1 32 } } }
	local_A_41 { ap_memory {  { local_A_41_address0 mem_address 1 6 }  { local_A_41_ce0 mem_ce 1 1 }  { local_A_41_we0 mem_we 1 1 }  { local_A_41_d0 mem_din 1 32 } } }
	local_A_42 { ap_memory {  { local_A_42_address0 mem_address 1 6 }  { local_A_42_ce0 mem_ce 1 1 }  { local_A_42_we0 mem_we 1 1 }  { local_A_42_d0 mem_din 1 32 } } }
	local_A_43 { ap_memory {  { local_A_43_address0 mem_address 1 6 }  { local_A_43_ce0 mem_ce 1 1 }  { local_A_43_we0 mem_we 1 1 }  { local_A_43_d0 mem_din 1 32 } } }
	local_A_44 { ap_memory {  { local_A_44_address0 mem_address 1 6 }  { local_A_44_ce0 mem_ce 1 1 }  { local_A_44_we0 mem_we 1 1 }  { local_A_44_d0 mem_din 1 32 } } }
	local_A_45 { ap_memory {  { local_A_45_address0 mem_address 1 6 }  { local_A_45_ce0 mem_ce 1 1 }  { local_A_45_we0 mem_we 1 1 }  { local_A_45_d0 mem_din 1 32 } } }
	local_A_46 { ap_memory {  { local_A_46_address0 mem_address 1 6 }  { local_A_46_ce0 mem_ce 1 1 }  { local_A_46_we0 mem_we 1 1 }  { local_A_46_d0 mem_din 1 32 } } }
	local_A_47 { ap_memory {  { local_A_47_address0 mem_address 1 6 }  { local_A_47_ce0 mem_ce 1 1 }  { local_A_47_we0 mem_we 1 1 }  { local_A_47_d0 mem_din 1 32 } } }
	local_A_48 { ap_memory {  { local_A_48_address0 mem_address 1 6 }  { local_A_48_ce0 mem_ce 1 1 }  { local_A_48_we0 mem_we 1 1 }  { local_A_48_d0 mem_din 1 32 } } }
	local_A_49 { ap_memory {  { local_A_49_address0 mem_address 1 6 }  { local_A_49_ce0 mem_ce 1 1 }  { local_A_49_we0 mem_we 1 1 }  { local_A_49_d0 mem_din 1 32 } } }
	local_A_50 { ap_memory {  { local_A_50_address0 mem_address 1 6 }  { local_A_50_ce0 mem_ce 1 1 }  { local_A_50_we0 mem_we 1 1 }  { local_A_50_d0 mem_din 1 32 } } }
	local_A_51 { ap_memory {  { local_A_51_address0 mem_address 1 6 }  { local_A_51_ce0 mem_ce 1 1 }  { local_A_51_we0 mem_we 1 1 }  { local_A_51_d0 mem_din 1 32 } } }
	local_A_52 { ap_memory {  { local_A_52_address0 mem_address 1 6 }  { local_A_52_ce0 mem_ce 1 1 }  { local_A_52_we0 mem_we 1 1 }  { local_A_52_d0 mem_din 1 32 } } }
	local_A_53 { ap_memory {  { local_A_53_address0 mem_address 1 6 }  { local_A_53_ce0 mem_ce 1 1 }  { local_A_53_we0 mem_we 1 1 }  { local_A_53_d0 mem_din 1 32 } } }
	local_A_54 { ap_memory {  { local_A_54_address0 mem_address 1 6 }  { local_A_54_ce0 mem_ce 1 1 }  { local_A_54_we0 mem_we 1 1 }  { local_A_54_d0 mem_din 1 32 } } }
	local_A_55 { ap_memory {  { local_A_55_address0 mem_address 1 6 }  { local_A_55_ce0 mem_ce 1 1 }  { local_A_55_we0 mem_we 1 1 }  { local_A_55_d0 mem_din 1 32 } } }
	local_A_56 { ap_memory {  { local_A_56_address0 mem_address 1 6 }  { local_A_56_ce0 mem_ce 1 1 }  { local_A_56_we0 mem_we 1 1 }  { local_A_56_d0 mem_din 1 32 } } }
	local_A_57 { ap_memory {  { local_A_57_address0 mem_address 1 6 }  { local_A_57_ce0 mem_ce 1 1 }  { local_A_57_we0 mem_we 1 1 }  { local_A_57_d0 mem_din 1 32 } } }
	local_A_58 { ap_memory {  { local_A_58_address0 mem_address 1 6 }  { local_A_58_ce0 mem_ce 1 1 }  { local_A_58_we0 mem_we 1 1 }  { local_A_58_d0 mem_din 1 32 } } }
	local_A_59 { ap_memory {  { local_A_59_address0 mem_address 1 6 }  { local_A_59_ce0 mem_ce 1 1 }  { local_A_59_we0 mem_we 1 1 }  { local_A_59_d0 mem_din 1 32 } } }
	local_A_60 { ap_memory {  { local_A_60_address0 mem_address 1 6 }  { local_A_60_ce0 mem_ce 1 1 }  { local_A_60_we0 mem_we 1 1 }  { local_A_60_d0 mem_din 1 32 } } }
	local_A_61 { ap_memory {  { local_A_61_address0 mem_address 1 6 }  { local_A_61_ce0 mem_ce 1 1 }  { local_A_61_we0 mem_we 1 1 }  { local_A_61_d0 mem_din 1 32 } } }
	local_A_62 { ap_memory {  { local_A_62_address0 mem_address 1 6 }  { local_A_62_ce0 mem_ce 1 1 }  { local_A_62_we0 mem_we 1 1 }  { local_A_62_d0 mem_din 1 32 } } }
	local_A_63 { ap_memory {  { local_A_63_address0 mem_address 1 6 }  { local_A_63_ce0 mem_ce 1 1 }  { local_A_63_we0 mem_we 1 1 }  { local_A_63_d0 mem_din 1 32 } } }
}
