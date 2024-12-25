`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/17 22:02:49
// Design Name: 
// Module Name: barrelsft32
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


module barrelsft32(
      output reg signed [31:0] dout,
      input signed [31:0] din,
      input [4:0] shamt,     //�ƶ�λ��
      input LR,           // LR=1ʱ���ƣ�LR=0ʱ����
      input AL            // AL=1ʱ�������ƣ�AR=0ʱ�߼�����
	);
//add your code here
always @ (*) begin
  if(LR) begin
     if (AL) dout = din <<< shamt;
     else dout = din << shamt;
  end
  else begin
     if (AL) dout = din >>> shamt;
     else dout = din >> shamt;
  end
end
endmodule
