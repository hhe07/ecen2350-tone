`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2023 10:09:06 PM
// Design Name: 
// Module Name: hexOut
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


module hexOut(
    input clk, [3:0] dot, [15:0] bin,
    output reg [7:0] hex, reg [3:0] dig_s
    );
    reg [1:0] sel = 0;
    wire [3:0] bin_r;
    assign bin_r = (sel == 2'b00) ? bin[3:0] : (sel == 2'b01) ? bin[7:4] : (sel == 2'b10) ? bin[11:8] : bin[15:12];
    always @(posedge clk) begin
        dig_s <= (sel == 2'b00) ? 4'b1110 : (sel == 2'b01) ? 4'b1101 : (sel == 2'b10) ? 4'b1011 : 4'b0111;
        hex[6:0] <= ((bin_r == 4'b0000) ? 7'b1000000 : 
            (bin_r == 4'b0001) ? 7'b1111001:
            (bin_r == 4'b0010) ? 7'b0100100:
            (bin_r == 4'b0011) ? 7'b0110000:
            (bin_r == 4'b0100) ? 7'b0011001:
            (bin_r == 4'b0101) ? 7'b0010010:
            (bin_r == 4'b0110) ? 7'b0000010:
            (bin_r == 4'b0111) ? 7'b1111000:
            (bin_r == 4'b1000) ? 7'b0000000:
            (bin_r == 4'b1001) ? 7'b0010000:
            (bin_r == 4'b1010) ? 7'b0001000:
            (bin_r == 4'b1011) ? 7'b0000011:
            (bin_r == 4'b1100) ? 7'b1000110:
            (bin_r == 4'b1101) ? 7'b0100001:
            (bin_r == 4'b1110) ? 7'b0000110:
                7'b0001110);
        hex[7] <= ~dot[sel];         
        sel <= sel + 1;
    end
    
endmodule