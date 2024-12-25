`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/17 10:18:07
// Design Name: 
// Module Name: regfile_top
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


module regfile_top(
   output reg [7:0] busa8,
   output reg [7:0] busb8,
   input [3:0] busw,
   input [2:0] ra,
   input [2:0] rb,
   input [2:0] rw,
   input [1:0] rd_hi,
   input clk, we
   );
   wire [31:0] busa32;
   wire [31:0] busb32;
   wire [31:0] busw32;
   wire [4:0] ra32;
   wire [4:0] rb32;
   wire [4:0] rw32;
   
   reg [4:0] idx_a;
   reg [4:0] idx_b;
   reg [4:0] idx_w;
// add your code
   assign ra32 = {rd_hi, ra};
   assign rb32 = {rd_hi, rb};
   assign rw32 = {rd_hi, rw};
   genvar i;
   for(i = 0; i < 32; i = i + 4)begin
    assign busw32[i + 3: i] = busw; 
end
   regfile32 regfile32_check(.busa(busa32),.busb(busb32),.busw(busw32),.ra(ra32),.rb(rb32),.rw(rw32),.clk(clk),.we(we));
// add your code
always @ (*) begin
busa8 = busa32[7:0];
busb8 = busb32[7:0];
end

endmodule
