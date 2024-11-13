// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmatrix_mul.h"

extern XMatrix_mul_Config XMatrix_mul_ConfigTable[];

XMatrix_mul_Config *XMatrix_mul_LookupConfig(u16 DeviceId) {
	XMatrix_mul_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMATRIX_MUL_NUM_INSTANCES; Index++) {
		if (XMatrix_mul_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMatrix_mul_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMatrix_mul_Initialize(XMatrix_mul *InstancePtr, u16 DeviceId) {
	XMatrix_mul_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMatrix_mul_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMatrix_mul_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

