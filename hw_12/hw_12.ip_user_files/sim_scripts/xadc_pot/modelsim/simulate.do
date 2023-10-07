onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc "  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.xadc_pot xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {xadc_pot.udo}

run 1000ns

quit -force
