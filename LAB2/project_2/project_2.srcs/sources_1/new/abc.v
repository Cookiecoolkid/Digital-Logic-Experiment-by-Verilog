`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/26 19:26:00
// Design Name: 
// Module Name: abc
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


module lfsr1(              //64位线性移位寄存器
	output [63:0] dout,
    input  [63:0]  seed,
	input  clk,
	input  load
	);
//add your code here
genvar i;
reg [63:0] tmp;
reg rin;
always @ (posedge clk) begin
   if(load) begin tmp <= seed; end
   else begin 
      rin = tmp[0] ^ tmp[1] ^ tmp[3] ^ tmp[4];
      tmp <= {rin, tmp[63:1]};
   end
end
assign dout = tmp;
endmodule
