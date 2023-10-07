vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../../hw_12.gen/sources_1/ip/xadc_pot/xadc_pot.v" \


vlog -work xil_defaultlib \
"glbl.v"

