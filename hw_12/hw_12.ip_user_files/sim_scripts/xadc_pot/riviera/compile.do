vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../hw_12.gen/sources_1/ip/xadc_pot/xadc_pot.v" \


vlog -work xil_defaultlib \
"glbl.v"

