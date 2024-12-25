`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/16 20:17:44
// Design Name: 
// Module Name: regfile32
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
module regfile32(
   output reg [31:0] busa,
   output reg [31:0] busb,
   input [31:0] busw,
   input [4:0] ra,
   input [4:0] rb,
   input [4:0] rw,
   input clk, we
);
// add your code 

reg [31:0] gpr [31:0];
always @ (ra, rb)
begin
if (ra != 0) begin
    busa = gpr[ra]; end
if (rb != 0) begin
    busb = gpr[rb]; end 
end
always @ (posedge clk)
begin
    if(we)begin
       gpr[rw] = busw;
    end
end
endmodule

