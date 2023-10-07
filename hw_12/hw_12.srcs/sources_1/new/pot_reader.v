`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2023 03:51:58 PM
// Design Name: 
// Module Name: pot_reader
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

module pot_reader(
    input clk, reset,
    output reg [15:0] r
    );
    wire drdy;
    wire [15:0] val;
    reg den;
     xadc_pot x0(
          .daddr_in('h03),            // Address bus for the dynamic reconfiguration port
          .dclk_in(clk),             // Clock input for the dynamic reconfiguration port
          .den_in(den),              // Enable Signal for the dynamic reconfiguration port
          .dwe_in(1'b0),              // Write Enable for the dynamic reconfiguration port
          .reset_in(reset),            // Reset signal for the System Monitor control logic
          .do_out(val),              // Output data bus for dynamic reconfiguration port
          .drdy_out(drdy)            // Data ready signal for the dynamic reconfiguration port
           );
        
     always @(posedge clk) begin
        den <= ~den;
     end
     always @(posedge drdy) begin
        r <= val;
     end
    
endmodule
