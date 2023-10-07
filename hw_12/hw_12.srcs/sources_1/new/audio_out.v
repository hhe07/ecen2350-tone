`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2023 10:27:07 PM
// Design Name: 
// Module Name: audio_out
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


module audio_out(
	input clk, [15:0] pwm_cycle,
    output l, r
    );
    // assuming that clk is at 100MHz
    // audio range: 100 Hz - 2000Hz
    // division range: 2 million times to 0.5 million times
    // or every 0.5 million - 0.25 million ticks we switch
    // stores in 19 bits
    // 	every 1 tick, increase division by 4
    reg [19:0] clk_ct; // clock number. changes every clock cycle
    reg [19:0] cycle_ct; // number of ticks in the cycle
    wire driver = (clk_ct < cycle_ct);
    assign l = driver;
    assign r = driver;
    always @(posedge clk) begin
        if (clk_ct == (cycle_ct * 2)) begin
        	clk_ct <= 0;
        	cycle_ct <= (pwm_cycle - 'h68)*6 + ('d125000);
        end else begin
        	clk_ct <= clk_ct + 1;
        end
		
    end
    
    
    
endmodule
