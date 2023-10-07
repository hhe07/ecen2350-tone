# "analog" tone generator

a fun little final project for my digital logic class at CU that i'm only just getting around to putting on github.

it works using the integrated XADC IP / physical hardware within the Xilinx FPGA we were using.

## the description i gave at the time:
implements a circuit to transform a given position on the boolean board's built-in potentiometer to a given frequency of sound.
additionally indicates position of potentiometer on arbitrary scale using a 7-segment display block

when synthesising, please make sure that the relevant IP block is present,

requires speakers to hear audio output -- please assure that volume is adjusted to a suitable level beforehand
