`timescale 1ns / 1ps

module mem8b(
   output reg [7:0] dataout,   //�������
   input cs,                   //Ƭѡ�źţ��ߵ�ƽ��Ч����Чʱ���洢����������
   input clk,                   //ʱ���ź�
   input we,                   //�洢��дʹ���źţ��ߵ�ƽʱ����д������
   input [7:0] datain,        //����������
   input [15:0] addr,          //16λ�洢����ַ���洢����64KB
   input BTNC
);
(* ram_style="block" *)  reg [7:0] ram [2**16-1:0];  //����ʹ�ÿ�RAM�ۺϳɴ洢��
// Add your code here
reg [7:0] intmp;
reg [7:0] outtmp; 
integer i;
always @(posedge clk)       //�����ض�ȡ�洢�����ݣ��ȶ�ȡ��ַ������
begin
       outtmp <= ram[addr]; 
end
always @(negedge clk)// or posedge BTNC)     //�½���д��洢�����ݣ�дʹ����Чʱ��д������
begin
    if (we) begin ram[addr] = intmp; end
    //if (BTNC) begin for(i = 0; i < 16; i = i + 1) ram[i] = 0; end
end

always @(*)
begin
    if(cs)
    begin
     if (~we)   //��ȡ����
            dataout = outtmp;
     else    //д�����
            intmp = datain;
    end
end
endmodule
