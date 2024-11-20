set moduleName matrix_mul
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {matrix_mul}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 32 regular {axi_master 0}  }
	{ gmem1 int 32 regular {axi_master 0}  }
	{ gmem2 int 32 regular {axi_master 1}  }
	{ A int 64 regular {axi_slave 0}  }
	{ B int 64 regular {axi_slave 0}  }
	{ C int 64 regular {axi_slave 0}  }
	{ M int 32 regular {axi_slave 0}  }
	{ N int 32 regular {axi_slave 0}  }
	{ P int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "A","offset": { "type": "dynamic","port_name": "A","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B","offset": { "type": "dynamic","port_name": "B","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "C","offset": { "type": "dynamic","port_name": "C","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "A", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "B", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "C", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "M", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":59}} , 
 	{ "Name" : "N", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":60}, "offset_end" : {"in":67}} , 
 	{ "Name" : "P", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":68}, "offset_end" : {"in":75}} ]}
# RTL Port declarations: 
set portNum 155
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_gmem0_ARLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 2 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"matrix_mul","role":"start","value":"0","valid_bit":"0"},{"name":"matrix_mul","role":"continue","value":"0","valid_bit":"4"},{"name":"matrix_mul","role":"auto_start","value":"0","valid_bit":"7"},{"name":"A","role":"data","value":"16"},{"name":"B","role":"data","value":"28"},{"name":"C","role":"data","value":"40"},{"name":"M","role":"data","value":"52"},{"name":"N","role":"data","value":"60"},{"name":"P","role":"data","value":"68"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"matrix_mul","role":"start","value":"0","valid_bit":"0"},{"name":"matrix_mul","role":"done","value":"0","valid_bit":"1"},{"name":"matrix_mul","role":"idle","value":"0","valid_bit":"2"},{"name":"matrix_mul","role":"ready","value":"0","valid_bit":"3"},{"name":"matrix_mul","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "195", "198", "201", "203", "208", "209", "210", "211", "212", "213", "214", "215"],
		"CDFG" : "matrix_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "198", "SubInstance" : "grp_matrix_mul_Pipeline_VITIS_LOOP_47_7_fu_2670", "Port" : "gmem0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_matrix_mul_Pipeline_VITIS_LOOP_54_9_fu_2745", "Port" : "gmem1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_matrix_mul_Pipeline_VITIS_LOOP_76_14_fu_2596", "Port" : "gmem2", "Inst_start_state" : "8", "Inst_end_state" : "15"}]},
			{"Name" : "A", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "None", "Direction" : "I"},
			{"Name" : "M", "Type" : "None", "Direction" : "I"},
			{"Name" : "N", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_10", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_44_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_34_1_VITIS_LOOP_35_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state15"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_16_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_17_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_18_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_19_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_20_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_21_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_22_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_23_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_24_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_25_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_26_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_27_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_28_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_29_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_30_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_31_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_32_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_33_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_34_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_35_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_36_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_37_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_38_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_39_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_40_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_41_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_42_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_43_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_44_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_45_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_46_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_47_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_48_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_49_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_50_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_51_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_52_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_53_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_54_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_55_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_56_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_57_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_58_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_59_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_60_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_61_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_62_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_A_63_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_1_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_2_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_3_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_4_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_5_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_6_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_7_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_8_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_9_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_10_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_11_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_12_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_13_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_14_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_15_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_16_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_17_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_18_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_19_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_20_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_21_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_22_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_23_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_24_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_25_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_26_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_27_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_28_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_29_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_30_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_31_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_32_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_33_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_34_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_35_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_36_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_37_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_38_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_39_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_40_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_41_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_42_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_43_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_44_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_45_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_46_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_47_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_48_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_49_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_50_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_51_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_52_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_53_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_54_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_55_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_56_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_57_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_58_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_59_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_60_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_61_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_62_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_63_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_U", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_1_U", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_2_U", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_3_U", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_4_U", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_5_U", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_6_U", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_7_U", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_8_U", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_9_U", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_10_U", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_11_U", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_12_U", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_13_U", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_14_U", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_15_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_16_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_17_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_18_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_19_U", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_20_U", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_21_U", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_22_U", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_23_U", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_24_U", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_25_U", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_26_U", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_27_U", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_28_U", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_29_U", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_30_U", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_31_U", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_32_U", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_33_U", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_34_U", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_35_U", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_36_U", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_37_U", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_38_U", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_39_U", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_40_U", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_41_U", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_42_U", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_43_U", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_44_U", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_45_U", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_46_U", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_47_U", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_48_U", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_49_U", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_50_U", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_51_U", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_52_U", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_53_U", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_54_U", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_55_U", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_56_U", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_57_U", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_58_U", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_59_U", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_60_U", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_61_U", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_62_U", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_C_63_U", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4_fu_2528", "Parent" : "0", "Child" : ["194"],
		"CDFG" : "matrix_mul_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "local_C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_32", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_33", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_34", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_35", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_36", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_37", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_38", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_39", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_40", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_41", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_42", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_43", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_44", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_45", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_46", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_47", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_48", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_49", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_50", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_51", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_52", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_53", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_54", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_55", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_56", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_57", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_58", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_59", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_60", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_61", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_62", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_63", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_37_3_VITIS_LOOP_38_4", "PipelineType" : "NotSupport"}]},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4_fu_2528.flow_control_loop_pipe_sequential_init_U", "Parent" : "193"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_Pipeline_VITIS_LOOP_76_14_fu_2596", "Parent" : "0", "Child" : ["196", "197"],
		"CDFG" : "matrix_mul_Pipeline_VITIS_LOOP_76_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4107", "EstimateLatencyMax" : "4107",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_AW", "Type" : "RtlSignal"}]},
			{"Name" : "local_C", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_48", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_49", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_50", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_51", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_52", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_53", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_54", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_55", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_56", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_57", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_58", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_59", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_61", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_C_63", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln34_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln35_mid2", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln35_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_75_13_VITIS_LOOP_76_14", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_Pipeline_VITIS_LOOP_76_14_fu_2596.mux_647_32_1_1_U470", "Parent" : "195"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_Pipeline_VITIS_LOOP_76_14_fu_2596.flow_control_loop_pipe_sequential_init_U", "Parent" : "195"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_Pipeline_VITIS_LOOP_47_7_fu_2670", "Parent" : "0", "Child" : ["199", "200"],
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
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_Pipeline_VITIS_LOOP_47_7_fu_2670.mul_31ns_32ns_62_2_1_U65", "Parent" : "198"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_Pipeline_VITIS_LOOP_47_7_fu_2670.flow_control_loop_pipe_sequential_init_U", "Parent" : "198"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_Pipeline_VITIS_LOOP_54_9_fu_2745", "Parent" : "0", "Child" : ["202"],
		"CDFG" : "matrix_mul_Pipeline_VITIS_LOOP_54_9",
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
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"}]},
			{"Name" : "local_B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_32", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_33", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_34", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_35", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_36", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_37", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_38", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_39", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_40", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_41", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_42", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_43", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_44", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_45", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_46", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_47", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_48", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_49", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_50", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_51", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_52", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_53", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_54", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_55", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_56", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_57", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_58", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_59", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_60", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_61", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_62", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B_63", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln34_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln35_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_8_VITIS_LOOP_54_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter12", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_Pipeline_VITIS_LOOP_54_9_fu_2745.flow_control_loop_pipe_sequential_init_U", "Parent" : "201"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_Pipeline_VITIS_LOOP_62_11_fu_2819", "Parent" : "0", "Child" : ["204", "205", "206", "207"],
		"CDFG" : "matrix_mul_Pipeline_VITIS_LOOP_62_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16646", "EstimateLatencyMax" : "16646",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "local_C_63_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_62_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_61_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_60_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_59_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_58_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_57_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_56_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_55_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_54_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_53_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_52_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_51_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_50_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_49_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_48_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_47_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_46_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_45_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_44_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_43_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_42_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_41_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_40_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_39_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_38_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_37_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_36_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_35_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_34_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_33_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_32_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_31_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_30_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_29_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_28_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_27_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_26_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_25_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_24_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_23_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_22_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_21_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_20_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_19_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_18_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_17_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_16_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_15_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_14_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_13_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_12_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_11_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_10_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_9_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_8_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_7_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_6_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_5_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_4_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_3_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_2_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_63", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln61", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_C_62", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_61", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_60", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_59", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_58", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_57", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_56", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_55", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_54", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_53", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_52", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_51", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_50", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_49", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_48", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_47", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_46", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_45", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_44", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_43", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_42", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_41", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_40", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_39", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_38", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_37", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_36", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_35", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_34", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_33", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_32", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_4_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_5_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_6_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_7_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_8_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_9_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_10_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_11_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_12_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_13_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_14_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_15_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_16_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_17_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_18_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_19_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_20_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_21_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_22_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_23_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_24_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_25_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_26_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_27_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_28_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_29_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_30_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_31_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_32_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_33_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_34_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_35_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_36_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_37_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_38_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_39_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_40_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_41_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_42_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_43_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_44_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_45_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_46_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_47_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_48", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_48_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_49", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_49_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_50", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_50_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_51", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_51_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_52", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_52_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_53", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_53_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_54", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_54_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_55", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_55_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_56", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_56_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_57", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_57_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_58", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_58_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_59", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_59_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_60_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_61", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_61_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_62_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B_63", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_A_63_load", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "256", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage5", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage5_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_Pipeline_VITIS_LOOP_62_11_fu_2819.fadd_32ns_32ns_32_5_no_dsp_1_U206", "Parent" : "203"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_Pipeline_VITIS_LOOP_62_11_fu_2819.fmul_32ns_32ns_32_4_max_dsp_1_U207", "Parent" : "203"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_Pipeline_VITIS_LOOP_62_11_fu_2819.mux_647_32_1_1_U208", "Parent" : "203"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_Pipeline_VITIS_LOOP_62_11_fu_2819.flow_control_loop_pipe_sequential_init_U", "Parent" : "203"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem0_m_axi_U", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem1_m_axi_U", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem2_m_axi_U", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_26ns_27ns_83_2_1_U540", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25ns_32ns_56_2_1_U541", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25ns_32ns_56_2_1_U542", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_32ns_39_2_1_U543", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrix_mul {
		gmem0 {Type I LastRead 11 FirstWrite -1}
		gmem1 {Type I LastRead 11 FirstWrite -1}
		gmem2 {Type O LastRead 6 FirstWrite 5}
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		C {Type I LastRead 0 FirstWrite -1}
		M {Type I LastRead 0 FirstWrite -1}
		N {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}}
	matrix_mul_Pipeline_VITIS_LOOP_37_3_VITIS_LOOP_38_4 {
		local_C {Type O LastRead -1 FirstWrite 0}
		local_C_1 {Type O LastRead -1 FirstWrite 0}
		local_C_2 {Type O LastRead -1 FirstWrite 0}
		local_C_3 {Type O LastRead -1 FirstWrite 0}
		local_C_4 {Type O LastRead -1 FirstWrite 0}
		local_C_5 {Type O LastRead -1 FirstWrite 0}
		local_C_6 {Type O LastRead -1 FirstWrite 0}
		local_C_7 {Type O LastRead -1 FirstWrite 0}
		local_C_8 {Type O LastRead -1 FirstWrite 0}
		local_C_9 {Type O LastRead -1 FirstWrite 0}
		local_C_10 {Type O LastRead -1 FirstWrite 0}
		local_C_11 {Type O LastRead -1 FirstWrite 0}
		local_C_12 {Type O LastRead -1 FirstWrite 0}
		local_C_13 {Type O LastRead -1 FirstWrite 0}
		local_C_14 {Type O LastRead -1 FirstWrite 0}
		local_C_15 {Type O LastRead -1 FirstWrite 0}
		local_C_16 {Type O LastRead -1 FirstWrite 0}
		local_C_17 {Type O LastRead -1 FirstWrite 0}
		local_C_18 {Type O LastRead -1 FirstWrite 0}
		local_C_19 {Type O LastRead -1 FirstWrite 0}
		local_C_20 {Type O LastRead -1 FirstWrite 0}
		local_C_21 {Type O LastRead -1 FirstWrite 0}
		local_C_22 {Type O LastRead -1 FirstWrite 0}
		local_C_23 {Type O LastRead -1 FirstWrite 0}
		local_C_24 {Type O LastRead -1 FirstWrite 0}
		local_C_25 {Type O LastRead -1 FirstWrite 0}
		local_C_26 {Type O LastRead -1 FirstWrite 0}
		local_C_27 {Type O LastRead -1 FirstWrite 0}
		local_C_28 {Type O LastRead -1 FirstWrite 0}
		local_C_29 {Type O LastRead -1 FirstWrite 0}
		local_C_30 {Type O LastRead -1 FirstWrite 0}
		local_C_31 {Type O LastRead -1 FirstWrite 0}
		local_C_32 {Type O LastRead -1 FirstWrite 0}
		local_C_33 {Type O LastRead -1 FirstWrite 0}
		local_C_34 {Type O LastRead -1 FirstWrite 0}
		local_C_35 {Type O LastRead -1 FirstWrite 0}
		local_C_36 {Type O LastRead -1 FirstWrite 0}
		local_C_37 {Type O LastRead -1 FirstWrite 0}
		local_C_38 {Type O LastRead -1 FirstWrite 0}
		local_C_39 {Type O LastRead -1 FirstWrite 0}
		local_C_40 {Type O LastRead -1 FirstWrite 0}
		local_C_41 {Type O LastRead -1 FirstWrite 0}
		local_C_42 {Type O LastRead -1 FirstWrite 0}
		local_C_43 {Type O LastRead -1 FirstWrite 0}
		local_C_44 {Type O LastRead -1 FirstWrite 0}
		local_C_45 {Type O LastRead -1 FirstWrite 0}
		local_C_46 {Type O LastRead -1 FirstWrite 0}
		local_C_47 {Type O LastRead -1 FirstWrite 0}
		local_C_48 {Type O LastRead -1 FirstWrite 0}
		local_C_49 {Type O LastRead -1 FirstWrite 0}
		local_C_50 {Type O LastRead -1 FirstWrite 0}
		local_C_51 {Type O LastRead -1 FirstWrite 0}
		local_C_52 {Type O LastRead -1 FirstWrite 0}
		local_C_53 {Type O LastRead -1 FirstWrite 0}
		local_C_54 {Type O LastRead -1 FirstWrite 0}
		local_C_55 {Type O LastRead -1 FirstWrite 0}
		local_C_56 {Type O LastRead -1 FirstWrite 0}
		local_C_57 {Type O LastRead -1 FirstWrite 0}
		local_C_58 {Type O LastRead -1 FirstWrite 0}
		local_C_59 {Type O LastRead -1 FirstWrite 0}
		local_C_60 {Type O LastRead -1 FirstWrite 0}
		local_C_61 {Type O LastRead -1 FirstWrite 0}
		local_C_62 {Type O LastRead -1 FirstWrite 0}
		local_C_63 {Type O LastRead -1 FirstWrite 0}}
	matrix_mul_Pipeline_VITIS_LOOP_76_14 {
		gmem2 {Type O LastRead 6 FirstWrite 5}
		local_C {Type I LastRead 3 FirstWrite -1}
		local_C_1 {Type I LastRead 3 FirstWrite -1}
		local_C_2 {Type I LastRead 3 FirstWrite -1}
		local_C_3 {Type I LastRead 3 FirstWrite -1}
		local_C_4 {Type I LastRead 3 FirstWrite -1}
		local_C_5 {Type I LastRead 3 FirstWrite -1}
		local_C_6 {Type I LastRead 3 FirstWrite -1}
		local_C_7 {Type I LastRead 3 FirstWrite -1}
		local_C_8 {Type I LastRead 3 FirstWrite -1}
		local_C_9 {Type I LastRead 3 FirstWrite -1}
		local_C_10 {Type I LastRead 3 FirstWrite -1}
		local_C_11 {Type I LastRead 3 FirstWrite -1}
		local_C_12 {Type I LastRead 3 FirstWrite -1}
		local_C_13 {Type I LastRead 3 FirstWrite -1}
		local_C_14 {Type I LastRead 3 FirstWrite -1}
		local_C_15 {Type I LastRead 3 FirstWrite -1}
		local_C_16 {Type I LastRead 3 FirstWrite -1}
		local_C_17 {Type I LastRead 3 FirstWrite -1}
		local_C_18 {Type I LastRead 3 FirstWrite -1}
		local_C_19 {Type I LastRead 3 FirstWrite -1}
		local_C_20 {Type I LastRead 3 FirstWrite -1}
		local_C_21 {Type I LastRead 3 FirstWrite -1}
		local_C_22 {Type I LastRead 3 FirstWrite -1}
		local_C_23 {Type I LastRead 3 FirstWrite -1}
		local_C_24 {Type I LastRead 3 FirstWrite -1}
		local_C_25 {Type I LastRead 3 FirstWrite -1}
		local_C_26 {Type I LastRead 3 FirstWrite -1}
		local_C_27 {Type I LastRead 3 FirstWrite -1}
		local_C_28 {Type I LastRead 3 FirstWrite -1}
		local_C_29 {Type I LastRead 3 FirstWrite -1}
		local_C_30 {Type I LastRead 3 FirstWrite -1}
		local_C_31 {Type I LastRead 3 FirstWrite -1}
		local_C_32 {Type I LastRead 3 FirstWrite -1}
		local_C_33 {Type I LastRead 3 FirstWrite -1}
		local_C_34 {Type I LastRead 3 FirstWrite -1}
		local_C_35 {Type I LastRead 3 FirstWrite -1}
		local_C_36 {Type I LastRead 3 FirstWrite -1}
		local_C_37 {Type I LastRead 3 FirstWrite -1}
		local_C_38 {Type I LastRead 3 FirstWrite -1}
		local_C_39 {Type I LastRead 3 FirstWrite -1}
		local_C_40 {Type I LastRead 3 FirstWrite -1}
		local_C_41 {Type I LastRead 3 FirstWrite -1}
		local_C_42 {Type I LastRead 3 FirstWrite -1}
		local_C_43 {Type I LastRead 3 FirstWrite -1}
		local_C_44 {Type I LastRead 3 FirstWrite -1}
		local_C_45 {Type I LastRead 3 FirstWrite -1}
		local_C_46 {Type I LastRead 3 FirstWrite -1}
		local_C_47 {Type I LastRead 3 FirstWrite -1}
		local_C_48 {Type I LastRead 3 FirstWrite -1}
		local_C_49 {Type I LastRead 3 FirstWrite -1}
		local_C_50 {Type I LastRead 3 FirstWrite -1}
		local_C_51 {Type I LastRead 3 FirstWrite -1}
		local_C_52 {Type I LastRead 3 FirstWrite -1}
		local_C_53 {Type I LastRead 3 FirstWrite -1}
		local_C_54 {Type I LastRead 3 FirstWrite -1}
		local_C_55 {Type I LastRead 3 FirstWrite -1}
		local_C_56 {Type I LastRead 3 FirstWrite -1}
		local_C_57 {Type I LastRead 3 FirstWrite -1}
		local_C_58 {Type I LastRead 3 FirstWrite -1}
		local_C_59 {Type I LastRead 3 FirstWrite -1}
		local_C_60 {Type I LastRead 3 FirstWrite -1}
		local_C_61 {Type I LastRead 3 FirstWrite -1}
		local_C_62 {Type I LastRead 3 FirstWrite -1}
		local_C_63 {Type I LastRead 3 FirstWrite -1}
		zext_ln34_1 {Type I LastRead 0 FirstWrite -1}
		shl_ln35_mid2 {Type I LastRead 0 FirstWrite -1}
		trunc_ln35_1 {Type I LastRead 0 FirstWrite -1}
		C {Type I LastRead 0 FirstWrite -1}}
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
		local_A_63 {Type O LastRead -1 FirstWrite 12}}
	matrix_mul_Pipeline_VITIS_LOOP_54_9 {
		gmem1 {Type I LastRead 11 FirstWrite -1}
		local_B {Type O LastRead -1 FirstWrite 12}
		local_B_1 {Type O LastRead -1 FirstWrite 12}
		local_B_2 {Type O LastRead -1 FirstWrite 12}
		local_B_3 {Type O LastRead -1 FirstWrite 12}
		local_B_4 {Type O LastRead -1 FirstWrite 12}
		local_B_5 {Type O LastRead -1 FirstWrite 12}
		local_B_6 {Type O LastRead -1 FirstWrite 12}
		local_B_7 {Type O LastRead -1 FirstWrite 12}
		local_B_8 {Type O LastRead -1 FirstWrite 12}
		local_B_9 {Type O LastRead -1 FirstWrite 12}
		local_B_10 {Type O LastRead -1 FirstWrite 12}
		local_B_11 {Type O LastRead -1 FirstWrite 12}
		local_B_12 {Type O LastRead -1 FirstWrite 12}
		local_B_13 {Type O LastRead -1 FirstWrite 12}
		local_B_14 {Type O LastRead -1 FirstWrite 12}
		local_B_15 {Type O LastRead -1 FirstWrite 12}
		local_B_16 {Type O LastRead -1 FirstWrite 12}
		local_B_17 {Type O LastRead -1 FirstWrite 12}
		local_B_18 {Type O LastRead -1 FirstWrite 12}
		local_B_19 {Type O LastRead -1 FirstWrite 12}
		local_B_20 {Type O LastRead -1 FirstWrite 12}
		local_B_21 {Type O LastRead -1 FirstWrite 12}
		local_B_22 {Type O LastRead -1 FirstWrite 12}
		local_B_23 {Type O LastRead -1 FirstWrite 12}
		local_B_24 {Type O LastRead -1 FirstWrite 12}
		local_B_25 {Type O LastRead -1 FirstWrite 12}
		local_B_26 {Type O LastRead -1 FirstWrite 12}
		local_B_27 {Type O LastRead -1 FirstWrite 12}
		local_B_28 {Type O LastRead -1 FirstWrite 12}
		local_B_29 {Type O LastRead -1 FirstWrite 12}
		local_B_30 {Type O LastRead -1 FirstWrite 12}
		local_B_31 {Type O LastRead -1 FirstWrite 12}
		local_B_32 {Type O LastRead -1 FirstWrite 12}
		local_B_33 {Type O LastRead -1 FirstWrite 12}
		local_B_34 {Type O LastRead -1 FirstWrite 12}
		local_B_35 {Type O LastRead -1 FirstWrite 12}
		local_B_36 {Type O LastRead -1 FirstWrite 12}
		local_B_37 {Type O LastRead -1 FirstWrite 12}
		local_B_38 {Type O LastRead -1 FirstWrite 12}
		local_B_39 {Type O LastRead -1 FirstWrite 12}
		local_B_40 {Type O LastRead -1 FirstWrite 12}
		local_B_41 {Type O LastRead -1 FirstWrite 12}
		local_B_42 {Type O LastRead -1 FirstWrite 12}
		local_B_43 {Type O LastRead -1 FirstWrite 12}
		local_B_44 {Type O LastRead -1 FirstWrite 12}
		local_B_45 {Type O LastRead -1 FirstWrite 12}
		local_B_46 {Type O LastRead -1 FirstWrite 12}
		local_B_47 {Type O LastRead -1 FirstWrite 12}
		local_B_48 {Type O LastRead -1 FirstWrite 12}
		local_B_49 {Type O LastRead -1 FirstWrite 12}
		local_B_50 {Type O LastRead -1 FirstWrite 12}
		local_B_51 {Type O LastRead -1 FirstWrite 12}
		local_B_52 {Type O LastRead -1 FirstWrite 12}
		local_B_53 {Type O LastRead -1 FirstWrite 12}
		local_B_54 {Type O LastRead -1 FirstWrite 12}
		local_B_55 {Type O LastRead -1 FirstWrite 12}
		local_B_56 {Type O LastRead -1 FirstWrite 12}
		local_B_57 {Type O LastRead -1 FirstWrite 12}
		local_B_58 {Type O LastRead -1 FirstWrite 12}
		local_B_59 {Type O LastRead -1 FirstWrite 12}
		local_B_60 {Type O LastRead -1 FirstWrite 12}
		local_B_61 {Type O LastRead -1 FirstWrite 12}
		local_B_62 {Type O LastRead -1 FirstWrite 12}
		local_B_63 {Type O LastRead -1 FirstWrite 12}
		zext_ln34_1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln35_1 {Type I LastRead 0 FirstWrite -1}
		shl_ln {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	matrix_mul_Pipeline_VITIS_LOOP_62_11 {
		local_C_63_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_62_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_61_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_60_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_59_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_58_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_57_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_56_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_55_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_54_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_53_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_52_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_51_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_50_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_49_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_48_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_47_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_46_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_45_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_44_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_43_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_42_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_41_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_40_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_39_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_38_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_37_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_36_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_35_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_34_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_33_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_32_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_31_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_30_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_29_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_28_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_27_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_26_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_25_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_24_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_23_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_22_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_21_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_20_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_19_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_18_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_17_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_16_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_15_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_14_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_13_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_12_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_11_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_10_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_9_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_8_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_7_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_6_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_5_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_4_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_3_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_2_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_1_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_load_1 {Type I LastRead 0 FirstWrite -1}
		local_C_63 {Type O LastRead -1 FirstWrite 261}
		zext_ln61 {Type I LastRead 0 FirstWrite -1}
		local_C_62 {Type O LastRead -1 FirstWrite 261}
		local_C_61 {Type O LastRead -1 FirstWrite 261}
		local_C_60 {Type O LastRead -1 FirstWrite 261}
		local_C_59 {Type O LastRead -1 FirstWrite 261}
		local_C_58 {Type O LastRead -1 FirstWrite 261}
		local_C_57 {Type O LastRead -1 FirstWrite 261}
		local_C_56 {Type O LastRead -1 FirstWrite 261}
		local_C_55 {Type O LastRead -1 FirstWrite 261}
		local_C_54 {Type O LastRead -1 FirstWrite 261}
		local_C_53 {Type O LastRead -1 FirstWrite 261}
		local_C_52 {Type O LastRead -1 FirstWrite 261}
		local_C_51 {Type O LastRead -1 FirstWrite 261}
		local_C_50 {Type O LastRead -1 FirstWrite 261}
		local_C_49 {Type O LastRead -1 FirstWrite 261}
		local_C_48 {Type O LastRead -1 FirstWrite 261}
		local_C_47 {Type O LastRead -1 FirstWrite 261}
		local_C_46 {Type O LastRead -1 FirstWrite 261}
		local_C_45 {Type O LastRead -1 FirstWrite 261}
		local_C_44 {Type O LastRead -1 FirstWrite 261}
		local_C_43 {Type O LastRead -1 FirstWrite 261}
		local_C_42 {Type O LastRead -1 FirstWrite 261}
		local_C_41 {Type O LastRead -1 FirstWrite 261}
		local_C_40 {Type O LastRead -1 FirstWrite 261}
		local_C_39 {Type O LastRead -1 FirstWrite 261}
		local_C_38 {Type O LastRead -1 FirstWrite 261}
		local_C_37 {Type O LastRead -1 FirstWrite 261}
		local_C_36 {Type O LastRead -1 FirstWrite 261}
		local_C_35 {Type O LastRead -1 FirstWrite 261}
		local_C_34 {Type O LastRead -1 FirstWrite 261}
		local_C_33 {Type O LastRead -1 FirstWrite 261}
		local_C_32 {Type O LastRead -1 FirstWrite 261}
		local_C_31 {Type O LastRead -1 FirstWrite 261}
		local_C_30 {Type O LastRead -1 FirstWrite 261}
		local_C_29 {Type O LastRead -1 FirstWrite 261}
		local_C_28 {Type O LastRead -1 FirstWrite 261}
		local_C_27 {Type O LastRead -1 FirstWrite 261}
		local_C_26 {Type O LastRead -1 FirstWrite 261}
		local_C_25 {Type O LastRead -1 FirstWrite 261}
		local_C_24 {Type O LastRead -1 FirstWrite 261}
		local_C_23 {Type O LastRead -1 FirstWrite 261}
		local_C_22 {Type O LastRead -1 FirstWrite 261}
		local_C_21 {Type O LastRead -1 FirstWrite 261}
		local_C_20 {Type O LastRead -1 FirstWrite 261}
		local_C_19 {Type O LastRead -1 FirstWrite 261}
		local_C_18 {Type O LastRead -1 FirstWrite 261}
		local_C_17 {Type O LastRead -1 FirstWrite 261}
		local_C_16 {Type O LastRead -1 FirstWrite 261}
		local_C_15 {Type O LastRead -1 FirstWrite 261}
		local_C_14 {Type O LastRead -1 FirstWrite 261}
		local_C_13 {Type O LastRead -1 FirstWrite 261}
		local_C_12 {Type O LastRead -1 FirstWrite 261}
		local_C_11 {Type O LastRead -1 FirstWrite 261}
		local_C_10 {Type O LastRead -1 FirstWrite 261}
		local_C_9 {Type O LastRead -1 FirstWrite 261}
		local_C_8 {Type O LastRead -1 FirstWrite 261}
		local_C_7 {Type O LastRead -1 FirstWrite 261}
		local_C_6 {Type O LastRead -1 FirstWrite 261}
		local_C_5 {Type O LastRead -1 FirstWrite 261}
		local_C_4 {Type O LastRead -1 FirstWrite 261}
		local_C_3 {Type O LastRead -1 FirstWrite 261}
		local_C_2 {Type O LastRead -1 FirstWrite 261}
		local_C_1 {Type O LastRead -1 FirstWrite 261}
		local_C {Type O LastRead -1 FirstWrite 261}
		local_B {Type I LastRead 0 FirstWrite -1}
		local_A_load {Type I LastRead 0 FirstWrite -1}
		local_B_1 {Type I LastRead 0 FirstWrite -1}
		local_A_1_load {Type I LastRead 0 FirstWrite -1}
		local_B_2 {Type I LastRead 0 FirstWrite -1}
		local_A_2_load {Type I LastRead 0 FirstWrite -1}
		local_B_3 {Type I LastRead 0 FirstWrite -1}
		local_A_3_load {Type I LastRead 0 FirstWrite -1}
		local_B_4 {Type I LastRead 0 FirstWrite -1}
		local_A_4_load {Type I LastRead 0 FirstWrite -1}
		local_B_5 {Type I LastRead 0 FirstWrite -1}
		local_A_5_load {Type I LastRead 0 FirstWrite -1}
		local_B_6 {Type I LastRead 0 FirstWrite -1}
		local_A_6_load {Type I LastRead 0 FirstWrite -1}
		local_B_7 {Type I LastRead 0 FirstWrite -1}
		local_A_7_load {Type I LastRead 0 FirstWrite -1}
		local_B_8 {Type I LastRead 0 FirstWrite -1}
		local_A_8_load {Type I LastRead 0 FirstWrite -1}
		local_B_9 {Type I LastRead 0 FirstWrite -1}
		local_A_9_load {Type I LastRead 0 FirstWrite -1}
		local_B_10 {Type I LastRead 0 FirstWrite -1}
		local_A_10_load {Type I LastRead 0 FirstWrite -1}
		local_B_11 {Type I LastRead 0 FirstWrite -1}
		local_A_11_load {Type I LastRead 0 FirstWrite -1}
		local_B_12 {Type I LastRead 0 FirstWrite -1}
		local_A_12_load {Type I LastRead 0 FirstWrite -1}
		local_B_13 {Type I LastRead 0 FirstWrite -1}
		local_A_13_load {Type I LastRead 0 FirstWrite -1}
		local_B_14 {Type I LastRead 0 FirstWrite -1}
		local_A_14_load {Type I LastRead 0 FirstWrite -1}
		local_B_15 {Type I LastRead 0 FirstWrite -1}
		local_A_15_load {Type I LastRead 0 FirstWrite -1}
		local_B_16 {Type I LastRead 0 FirstWrite -1}
		local_A_16_load {Type I LastRead 0 FirstWrite -1}
		local_B_17 {Type I LastRead 0 FirstWrite -1}
		local_A_17_load {Type I LastRead 0 FirstWrite -1}
		local_B_18 {Type I LastRead 0 FirstWrite -1}
		local_A_18_load {Type I LastRead 0 FirstWrite -1}
		local_B_19 {Type I LastRead 0 FirstWrite -1}
		local_A_19_load {Type I LastRead 0 FirstWrite -1}
		local_B_20 {Type I LastRead 0 FirstWrite -1}
		local_A_20_load {Type I LastRead 0 FirstWrite -1}
		local_B_21 {Type I LastRead 0 FirstWrite -1}
		local_A_21_load {Type I LastRead 0 FirstWrite -1}
		local_B_22 {Type I LastRead 0 FirstWrite -1}
		local_A_22_load {Type I LastRead 0 FirstWrite -1}
		local_B_23 {Type I LastRead 0 FirstWrite -1}
		local_A_23_load {Type I LastRead 0 FirstWrite -1}
		local_B_24 {Type I LastRead 0 FirstWrite -1}
		local_A_24_load {Type I LastRead 0 FirstWrite -1}
		local_B_25 {Type I LastRead 0 FirstWrite -1}
		local_A_25_load {Type I LastRead 0 FirstWrite -1}
		local_B_26 {Type I LastRead 0 FirstWrite -1}
		local_A_26_load {Type I LastRead 0 FirstWrite -1}
		local_B_27 {Type I LastRead 0 FirstWrite -1}
		local_A_27_load {Type I LastRead 0 FirstWrite -1}
		local_B_28 {Type I LastRead 0 FirstWrite -1}
		local_A_28_load {Type I LastRead 0 FirstWrite -1}
		local_B_29 {Type I LastRead 0 FirstWrite -1}
		local_A_29_load {Type I LastRead 0 FirstWrite -1}
		local_B_30 {Type I LastRead 0 FirstWrite -1}
		local_A_30_load {Type I LastRead 0 FirstWrite -1}
		local_B_31 {Type I LastRead 0 FirstWrite -1}
		local_A_31_load {Type I LastRead 0 FirstWrite -1}
		local_B_32 {Type I LastRead 0 FirstWrite -1}
		local_A_32_load {Type I LastRead 0 FirstWrite -1}
		local_B_33 {Type I LastRead 0 FirstWrite -1}
		local_A_33_load {Type I LastRead 0 FirstWrite -1}
		local_B_34 {Type I LastRead 0 FirstWrite -1}
		local_A_34_load {Type I LastRead 0 FirstWrite -1}
		local_B_35 {Type I LastRead 0 FirstWrite -1}
		local_A_35_load {Type I LastRead 0 FirstWrite -1}
		local_B_36 {Type I LastRead 0 FirstWrite -1}
		local_A_36_load {Type I LastRead 0 FirstWrite -1}
		local_B_37 {Type I LastRead 0 FirstWrite -1}
		local_A_37_load {Type I LastRead 0 FirstWrite -1}
		local_B_38 {Type I LastRead 0 FirstWrite -1}
		local_A_38_load {Type I LastRead 0 FirstWrite -1}
		local_B_39 {Type I LastRead 0 FirstWrite -1}
		local_A_39_load {Type I LastRead 0 FirstWrite -1}
		local_B_40 {Type I LastRead 0 FirstWrite -1}
		local_A_40_load {Type I LastRead 0 FirstWrite -1}
		local_B_41 {Type I LastRead 0 FirstWrite -1}
		local_A_41_load {Type I LastRead 0 FirstWrite -1}
		local_B_42 {Type I LastRead 0 FirstWrite -1}
		local_A_42_load {Type I LastRead 0 FirstWrite -1}
		local_B_43 {Type I LastRead 0 FirstWrite -1}
		local_A_43_load {Type I LastRead 0 FirstWrite -1}
		local_B_44 {Type I LastRead 0 FirstWrite -1}
		local_A_44_load {Type I LastRead 0 FirstWrite -1}
		local_B_45 {Type I LastRead 0 FirstWrite -1}
		local_A_45_load {Type I LastRead 0 FirstWrite -1}
		local_B_46 {Type I LastRead 0 FirstWrite -1}
		local_A_46_load {Type I LastRead 0 FirstWrite -1}
		local_B_47 {Type I LastRead 0 FirstWrite -1}
		local_A_47_load {Type I LastRead 0 FirstWrite -1}
		local_B_48 {Type I LastRead 0 FirstWrite -1}
		local_A_48_load {Type I LastRead 0 FirstWrite -1}
		local_B_49 {Type I LastRead 0 FirstWrite -1}
		local_A_49_load {Type I LastRead 0 FirstWrite -1}
		local_B_50 {Type I LastRead 0 FirstWrite -1}
		local_A_50_load {Type I LastRead 0 FirstWrite -1}
		local_B_51 {Type I LastRead 0 FirstWrite -1}
		local_A_51_load {Type I LastRead 0 FirstWrite -1}
		local_B_52 {Type I LastRead 0 FirstWrite -1}
		local_A_52_load {Type I LastRead 0 FirstWrite -1}
		local_B_53 {Type I LastRead 0 FirstWrite -1}
		local_A_53_load {Type I LastRead 0 FirstWrite -1}
		local_B_54 {Type I LastRead 0 FirstWrite -1}
		local_A_54_load {Type I LastRead 0 FirstWrite -1}
		local_B_55 {Type I LastRead 0 FirstWrite -1}
		local_A_55_load {Type I LastRead 0 FirstWrite -1}
		local_B_56 {Type I LastRead 0 FirstWrite -1}
		local_A_56_load {Type I LastRead 0 FirstWrite -1}
		local_B_57 {Type I LastRead 0 FirstWrite -1}
		local_A_57_load {Type I LastRead 0 FirstWrite -1}
		local_B_58 {Type I LastRead 0 FirstWrite -1}
		local_A_58_load {Type I LastRead 0 FirstWrite -1}
		local_B_59 {Type I LastRead 0 FirstWrite -1}
		local_A_59_load {Type I LastRead 0 FirstWrite -1}
		local_B_60 {Type I LastRead 0 FirstWrite -1}
		local_A_60_load {Type I LastRead 0 FirstWrite -1}
		local_B_61 {Type I LastRead 0 FirstWrite -1}
		local_A_61_load {Type I LastRead 0 FirstWrite -1}
		local_B_62 {Type I LastRead 0 FirstWrite -1}
		local_A_62_load {Type I LastRead 0 FirstWrite -1}
		local_B_63 {Type I LastRead 0 FirstWrite -1}
		local_A_63_load {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 32 }  { m_axi_gmem0_WSTRB STRB 1 4 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 32 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 8 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 32 }  { m_axi_gmem1_WSTRB STRB 1 4 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 8 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 32 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	gmem2 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN SIZE 1 8 }  { m_axi_gmem2_AWSIZE BURST 1 3 }  { m_axi_gmem2_AWBURST LOCK 1 2 }  { m_axi_gmem2_AWLOCK CACHE 1 2 }  { m_axi_gmem2_AWCACHE PROT 1 4 }  { m_axi_gmem2_AWPROT QOS 1 3 }  { m_axi_gmem2_AWQOS REGION 1 4 }  { m_axi_gmem2_AWREGION USER 1 4 }  { m_axi_gmem2_AWUSER DATA 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA FIFONUM 1 32 }  { m_axi_gmem2_WSTRB STRB 1 4 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER DATA 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN SIZE 1 8 }  { m_axi_gmem2_ARSIZE BURST 1 3 }  { m_axi_gmem2_ARBURST LOCK 1 2 }  { m_axi_gmem2_ARLOCK CACHE 1 2 }  { m_axi_gmem2_ARCACHE PROT 1 4 }  { m_axi_gmem2_ARPROT QOS 1 3 }  { m_axi_gmem2_ARQOS REGION 1 4 }  { m_axi_gmem2_ARREGION USER 1 4 }  { m_axi_gmem2_ARUSER DATA 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA FIFONUM 0 32 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RUSER DATA 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 1 }
	{ gmem1 1 }
	{ gmem2 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 1 }
	{ gmem1 1 }
	{ gmem2 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
