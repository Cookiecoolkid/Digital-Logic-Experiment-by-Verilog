`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/19 14:53:34
// Design Name: 
// Module Name: dec7seg_plus
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

module dec7seg_plus(
    output  reg  [6:0] O_seg,  //7λ��ʾ�����
    output  reg  [7:0] O_led,  //8��������������
    input   [3:0] I,           //4λ�������룬��Ҫ��ʾ������   
    input   [2:0] S,         //3λ����ѡ��ָ���������ʾ
    input   clk
    );
    reg count1, count2;
    always @ (clk)
    begin
    
    end
endmodule
