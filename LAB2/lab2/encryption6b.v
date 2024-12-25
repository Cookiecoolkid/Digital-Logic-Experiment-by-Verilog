`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/17 16:33:34
// Design Name: 
// Module Name: encryption6b
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


module encryption6b(
    output reg [7:0] dataout,    //������ܻ���ܺ��8����ASCII���ݡ�
    output reg ready,       //�����Ч��ʶ���ߵ�ƽ˵�������Ч����6���ڸߵ�ƽ
    output [5:0] key,       //���6λ������
    input clk,             // ʱ���źţ���������Ч
    input load,            //����seedָʾ���ߵ�ƽ��Ч
    input [7:0] datain       //�������ݵ�8����ASCII�롣
);
wire  [63:0] seed=64'ha845fd7183ad75c4;       //��ʼ64����seed=64'ha845fd7183ad75c4
wire  [63:0] dout;
reg [2:0] count = 3'b000;

//add your code here
    lfsr LRSR(.seed(seed),.clk(clk),.load(load),.dout(dout));
    assign key = dout[63:58];

    always @ (posedge clk) begin
       //key <= dout[63:58];
       if(load == 0) begin
         if (count == 5) begin
            ready <= 1;
            count <= 0;
         end
         else begin 
           count <= count + 1; 
           ready <= 0;
         end
       end
       else begin count <= 0; end
       end
   always @ (*) begin
         if (ready == 1) begin
          dataout = {datain[7:6], datain[5:0] ^ key[5:0]};
         end
    end
endmodule

module lfsr(              //64λ������λ�Ĵ���
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
