vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlslice_v1_0_2

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlslice_v1_0_2 questa_lib/msim/xlslice_v1_0_2

vlog -work xpm -64 -incr -mfcu -sv "+incdir+../../../../tdp11.gen/sources_1/bd/tdp11/ipshared/4e49" \
"/home/tommasopeduzzi/.var/app/com.github.corna.Vivado/data/xilinx-install/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/home/tommasopeduzzi/.var/app/com.github.corna.Vivado/data/xilinx-install/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
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
"../../../bd/tdp11/ip/tdp11_address_bus_0_0/sim/tdp11_address_bus_0_0.vhd" \
"../../../bd/tdp11/ip/tdp11_memory_0_0/sim/tdp11_memory_0_0.vhd" \

vlog -work xlslice_v1_0_2 -64 -incr -mfcu "+incdir+../../../../tdp11.gen/sources_1/bd/tdp11/ipshared/4e49" \
"../../../../tdp11.gen/sources_1/bd/tdp11/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../tdp11.gen/sources_1/bd/tdp11/ipshared/4e49" \
"../../../bd/tdp11/ip/tdp11_xlslice_0_0/sim/tdp11_xlslice_0_0.v" \
"../../../bd/tdp11/ip/tdp11_clk_wiz_0_0/tdp11_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/tdp11/ip/tdp11_clk_wiz_0_0/tdp11_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/tdp11/ip/tdp11_main_bus_0_1/sim/tdp11_main_bus_0_1.vhd" \
"../../../bd/tdp11/ip/tdp11_pc_0_0/sim/tdp11_pc_0_0.vhd" \
"../../../bd/tdp11/ip/tdp11_demultiplexor_0_0/sim/tdp11_demultiplexor_0_0.vhd" \
"../../../bd/tdp11/ip/tdp11_demultiplexor_0_1/sim/tdp11_demultiplexor_0_1.vhd" \
"../../../bd/tdp11/ip/tdp11_demultiplexor_0_2/sim/tdp11_demultiplexor_0_2.vhd" \
"../../../bd/tdp11/ip/tdp11_control_0_0/sim/tdp11_control_0_0.vhd" \
"../../../bd/tdp11/ip/tdp11_alu_0_0/sim/tdp11_alu_0_0.vhd" \
"../../../bd/tdp11/sim/tdp11.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

