onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+tdp11 -L xil_defaultlib -L xlslice_v1_0_2 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.tdp11 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {tdp11.udo}

run -all

endsim

quit -force
