`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/05 09:57:33
// Design Name: 
// Module Name: div_32b
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


 module div_32b(
    output signed [31:0] Q,          //��
    output signed [31:0] R,          //����
    output out_valid,        //�����������ʱ�����Ϊ1
    output in_error,         //�����������Ϊ0ʱ�����Ϊ1
    input clk,               //ʱ�� 
    input rst,             //��λ�ź�
    input signed [31:0] X,           //������
    input signed [31:0] Y,           //����
    input in_valid          //����Ϊ1ʱ����ʾ���ݾ�������ʼ��������
);
 //add your code here 
 reg [5:0] cn;
 reg signed [63:0] RDIV;
 reg signed [32:0] TempQ;
 reg temp_out_valid;
 wire [31:0] diff_result;
 wire cout;
 wire sub;
 assign sub = ~(RDIV[63] ^ Y[31]);
 Adder32 divb(.f(diff_result),.x(RDIV[62:31]),.y(Y),.cout(cout),.sub(sub));  // ����ÿһ�ֵ��м���������
 always @(posedge clk or posedge rst) begin
     if (rst) cn <= 0; 
     else if (in_valid) cn <= 32;
     else if (cn != 0) cn <= cn - 1;
 end

 always @(posedge clk or posedge rst) begin
     if (rst) begin TempQ = 0; RDIV = 0; end
     else if (in_valid) begin 
        RDIV = {{32{X[31]}},X};
        TempQ = 32'b0; 
        temp_out_valid = 1'b0;
        if (X[31] == Y[31]) RDIV[63:32] = RDIV[63:32] - Y;
        else RDIV[63:32] = RDIV[63:32] + Y;
        TempQ[32] = (RDIV[63] == Y[31] ? 1:0); 
        end
     else if ((cn >= 0)&&(!out_valid)) begin
         if(cn > 0) begin
            TempQ[cn - 1] = (RDIV[63] == Y[31]?1:0);
            RDIV[63:32] = diff_result;
            RDIV[31:0] = {RDIV[30:0], 1'b0};
         end
         else if (cn == 0) begin
            temp_out_valid = 1'b1;
            TempQ[32:1] = TempQ[31:0];
            TempQ[0] = (sub == 1'b1)? 1 : 0;
            if(X[31] != Y[31]) TempQ = TempQ + 1;
            if(RDIV[63] != X[31])begin
                if(X[31] == Y[31]) RDIV[63:32] = RDIV[63:32] + Y;
                else RDIV[63:32] = RDIV[63:32] - Y;
            end
         end
     end
 end
 assign in_error = ((X == 0) || (Y == 0)); //Ԥ���������ͱ������쳣��ⱨ��
 assign out_valid = temp_out_valid;
 assign Q = TempQ[31:0];
 assign R = RDIV[63:32];
endmodule