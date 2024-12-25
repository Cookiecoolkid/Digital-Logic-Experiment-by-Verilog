`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/19 14:30:06
// Design Name: 
// Module Name: cmp_32bit
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


module cmp_32bit(
    output PGTQ, PEQQ, PLTQ,
    input [31:0] P,Q 
    );
    assign PGTQ = ( (P > Q) ? 1'b1 : 1'b0 ) ;
    assign PEQQ = ( (P == Q) ? 1'b1 : 1'b0 ) ;
    assign PLTQ = ~PGTQ & ~PEQQ;
endmodule
