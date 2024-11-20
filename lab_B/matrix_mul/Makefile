# File: Makefile

TARGET := hw
DEVICE := xilinx_u50_gen3x16_xdma_5_202210_1

XSA := $(DEVICE)
XO  := matrix_mul.xo
XCLBIN := matrix_mul.xclbin

VPP := v++
VPP_FLAGS := -t $(TARGET) --platform $(XSA) --save-temps
VPP_FLAGS += --kernel_frequency 300

HOST_SRCS := ./src/host.cpp
KERNEL_SRCS := ./src/matrix_mul.cpp

CXX := g++
CXXFLAGS := -I/opt/xilinx/xrt/include -O2 -fmessage-length=0 -std=c++14
LDFLAGS := -L/opt/xilinx/xrt/lib -lxilinxopencl -lpthread -lrt -lstdc++ -Wl,--rpath,/opt/xilinx/xrt/lib

CXXFLAGS += -I/opt/xilinx/Vitis/2022.1/include

.PHONY: all clean

all: $(XCLBIN) host

$(XO): $(KERNEL_SRCS)
	$(VPP) -c $(VPP_FLAGS) -k matrix_mul -o'$@' '$<'

$(XCLBIN): $(XO)
	$(VPP) -l $(VPP_FLAGS) -o'$@' '$<'

host: $(HOST_SRCS)
	$(CXX) $(CXXFLAGS) -o '$@' '$<' $(LDFLAGS)

clean:
	rm -rf *.xclbin *.xo host *.o _x .Xil
