`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/09 21:27:45
// Design Name: 
// Module Name: hamming7check
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
module decode3to8_b2 ( //端口声明
 output reg [7:0] Out,
 input [3:1] In
); 
 reg [3 : 0] i;
  always @ (In) begin
    Out = 7'b0000000;

    for (i=0; i<=7; i=i+1) begin
       if(i == In) Out[i] = 1; 
    end
  end
endmodule 

module hamming7check(
   output reg [7:1] DC,    //纠错输出7位正确的结果
   output reg  NOERROR,    //校验结果正确标志位
   input  [7:1] DU         //输入7位汉明码
);
// add your code here
   wire s1 = DU[1]^DU[3]^DU[5]^DU[7];
   wire s2 = DU[2]^DU[3]^DU[6]^DU[7];
   wire s3 = DU[4]^DU[5]^DU[6]^DU[7];
   wire[7:0] wrongNum;
   reg [3:0] i;
   decode3to8_b2 d (
    .In({s3, s2, s1}),
    .Out(wrongNum)
   );
   always @ (*)
   begin
    NOERROR = ~(s1 || s2 || s3);
    DC = DU;
    if (~NOERROR)
    begin 
       for (i = 1; i <= 7; i = i + 1) 
       if  (wrongNum[i] == 1) DC[i] = ~DU[i];
    end
   end
endmodule
