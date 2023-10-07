vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../hw_12.gen/sources_1/ip/xadc_pot/xadc_pot.v" \


vlog -work xil_defaultlib \
"glbl.v"

