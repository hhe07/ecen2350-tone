// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Apr 24 20:49:40 2023
// Host        : TP-E485 running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/hhe07/programming/ecen2350/hw_12/hw_12.gen/sources_1/ip/xadc_pot/xadc_pot_stub.v
// Design      : xadc_pot
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module xadc_pot(daddr_in, dclk_in, den_in, di_in, dwe_in, reset_in, 
  busy_out, channel_out, do_out, drdy_out, eoc_out, eos_out, alarm_out, vp_in, vn_in)
/* synthesis syn_black_box black_box_pad_pin="daddr_in[6:0],dclk_in,den_in,di_in[15:0],dwe_in,reset_in,busy_out,channel_out[4:0],do_out[15:0],drdy_out,eoc_out,eos_out,alarm_out,vp_in,vn_in" */;
  input [6:0]daddr_in;
  input dclk_in;
  input den_in;
  input [15:0]di_in;
  input dwe_in;
  input reset_in;
  output busy_out;
  output [4:0]channel_out;
  output [15:0]do_out;
  output drdy_out;
  output eoc_out;
  output eos_out;
  output alarm_out;
  input vp_in;
  input vn_in;
endmodule
