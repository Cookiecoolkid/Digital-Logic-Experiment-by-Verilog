`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/02 00:39:53
// Design Name: 
// Module Name: mul_32p
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


module mul_32k(
  input [31:0] X, Y,
  output reg [63:0] P       // output variable for assignment
);
  //add your code here  
 reg [63:0] row_sum [0:31];
 reg  cout [0:31];
 reg [5:0] i;
 reg signed [5:0] j;
always @ (*) begin
  for (i = 0; i < 32; i = i + 1) begin row_sum[i] = 0; cout[i] = 0; end
  for (i = 0; i < 32; i = i + 1) begin
      for (j = 31; j >= 0; j = j - 1) begin
        if (j > 0) begin
          row_sum[i] = ((row_sum[i] + ((X[j] & Y[i]) | (X[j] & cout[j]) | Y[i] & cout[j])) << 1);  
          cout[j] = ((X[j] & Y[i]) | (X[j] & cout[j]) | (Y[i] & cout[j]));
           end
        else begin
          row_sum[i] = ((row_sum[i] + (X[j] & Y[i])) << j);  
          cout[0] = (X[j] & Y[i]); end
      end
   end
   for(i = 0; i < 32; i = i + 1) begin
      P = P + row_sum[i];
   end 
end
endmodule

