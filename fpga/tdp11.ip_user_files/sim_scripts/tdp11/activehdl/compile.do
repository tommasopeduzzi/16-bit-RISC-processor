vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xlslice_v1_0_2

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlslice_v1_0_2 activehdl/xlslice_v1_0_2

vcom -work xil_defaultlib -93 \
"../../../bd/tdp11/ip/tdp11_reg_0_0/sim/tdp11_reg_0_0.vhd" \
"../../../bd/tdp11/ip/tdp11_reg_0_1/sim/tdp11_reg_0_1.vhd" \
"../../../bd/tdp11/ip/tdp11_reg_0_2/sim/tdp11_reg_0_2.vhd" \
"../../../bd/tdp11/ip/tdp11_reg_0_3/sim/tdp11_reg_0_3.vhd" \
"../../../bd/tdp11/ip/tdp11_reg_0_4/sim/tdp11_reg_0_4.vhd" \
"../../../bd/tdp11/ip/tdp11_reg_0_5/sim/tdp11_reg_0_5.vhd" \
"../../../bd/tdp11/ip/tdp11_reg_0_6/sim/tdp11_reg_0_6.vhd" \
"../../../bd/tdp11/ip/tdp11_reg_0_7/sim/tdp11_reg_0_7.vhd" \
"../../../bd/tdp11/ip/tdp11_alu_bus_0_0/sim/tdp11_alu_bus_0_0.vhd" \
"../../../bd/tdp11/ip/tdp11_alu_bus_1_0/sim/tdp11_alu_bus_1_0.vhd" \
"../../../bd/tdp11/ip/tdp11_sp_0_0/sim/tdp11_sp_0_0.vhd" \
"../../../bd/tdp11/ip/tdp11_memory_0_0/sim/tdp11_memory_0_0.vhd" \

vlog -work xlslice_v1_0_2  -v2k5 \
"../../../../tdp11.gen/sources_1/bd/tdp11/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/tdp11/ip/tdp11_xlslice_0_0/sim/tdp11_xlslice_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/tdp11/ip/tdp11_main_bus_0_1/sim/tdp11_main_bus_0_1.vhd" \
"../../../bd/tdp11/ip/tdp11_alu_0_0/sim/tdp11_alu_0_0.vhd" \
"../../../bd/tdp11/ip/tdp11_address_bus_0_0/sim/tdp11_address_bus_0_0.vhd" \
"../../../bd/tdp11/ip/tdp11_we_registers_0_1/sim/tdp11_we_registers_0_1.vhd" \
"../../../bd/tdp11/ip/tdp11_pc_0_0/sim/tdp11_pc_0_0.vhd" \
"../../../bd/tdp11/ip/tdp11_control_0_0/sim/tdp11_control_0_0.vhd" \
"../../../bd/tdp11/sim/tdp11.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

