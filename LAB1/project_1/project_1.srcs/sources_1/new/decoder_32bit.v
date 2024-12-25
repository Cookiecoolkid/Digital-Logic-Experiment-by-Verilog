`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/19 14:50:34
// Design Name: 
// Module Name: decoder_32bit
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

module decoder_32bit(
 output [31:0] Out,
 input [4:0] In,
 input En
);
 assign Out =En ? (1<<In) : 0;
 
endmodule
