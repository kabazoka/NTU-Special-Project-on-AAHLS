# File: Makefile

TARGET := hw
DEVICE := xilinx_u50_gen3x16_xdma_5_202210_1

XSA := $(DEVICE)
XO  := matrix_mul.xo
XCLBIN := matrix_mul.xclbin

VPP := v++
VPP_FLAGS := -t $(TARGET) --platform $(XSA) --save-temps --kernel_frequency 300

HOST_SRCS := ./src/host.cpp ./src/xcl2.cpp
KERNEL_SRCS := ./src/matrix_mul.cpp

CXX := g++
CXXFLAGS := -I/opt/xilinx/xrt/include -I/tools/Xilinx/Vitis/2022.1/include -I/usr/include -I./src -O2 -fmessage-length=0 -std=c++14 -D__HOST__
LDFLAGS := -L/opt/xilinx/xrt/lib -lxilinxopencl -lpthread -lrt -lstdc++ -Wl,--rpath,/opt/xilinx/xrt/lib

CXXFLAGS += -I/opt/xilinx/Vitis/2022.1/include

.PHONY: all compile link host clean

all: compile link host

compile: $(XO)

link: $(XCLBIN)

$(XO): $(KERNEL_SRCS)
	$(VPP) -c $(VPP_FLAGS) -k matrix_mul -o'$@' '$<'

$(XCLBIN): $(XO)
	$(VPP) -l $(VPP_FLAGS) -o'$@' '$<'

host: $(HOST_SRCS)
	$(CXX) $(CXXFLAGS) -o '$@' $^ $(LDFLAGS)

clean:
	rm -rf *.xclbin *.xo host *.o _x .Xil
