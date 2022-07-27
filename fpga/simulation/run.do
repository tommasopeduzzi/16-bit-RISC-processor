quietly set ACTELLIBNAME Fusion
quietly set PROJECT_DIR "C:/Users/Tommaso Peduzzi/Documents/GitHub/16-bit-RISC-processor/fpga"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap fusion "C:/Microsemi/Libero_SoC_v11.9/Designer/lib/modelsim/precompiled/vhdl/fusion"

vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/address_bus.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/alu.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/alu_bus.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/smartgen/clock/clock.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/control.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/demultiplexor.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/main_bus.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/memory.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/pc.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/register.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/sp.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/cpu/cpu.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/Actel/Simulation/CLK_GEN/1.0.1/CLK_GEN.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/Actel/Simulation/RESET_GEN/1.0.1/RESET_GEN.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/cpu_test/cpu_test.vhd"

vsim -L fusion -L presynth  -t 1ps presynth.cpu_test
add wave /cpu_test/*
add log -r /*
run 1000ns
