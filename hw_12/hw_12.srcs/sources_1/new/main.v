`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2023 11:56:20 AM
// Design Name: 
// Module Name: main
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module main(
	input mclk, [3:0]btn, 
	output spkl, spkr, [7:0]D0_seg, [3:0]D0_a
    );
    wire [15:0] res;
    reg [15:0] k_clk_ct;
    reg k_clk;
    pot_reader p(mclk,btn[0],res);
    hexOut h0(k_clk,4'b0000,res,D0_seg,D0_a);
    audio_out a(mclk,res,spkl, spkr);
    always @(posedge mclk) begin
    	k_clk_ct <= k_clk_ct + 1;
    	if (k_clk_ct == 16'd9999) begin
    		k_clk_ct <= 0;
    		k_clk <= ~k_clk;
    	end
    end
    
endmodule
