`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/16 19:11:30
// Design Name: 
// Module Name: div_32b_tb
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


`timescale 1ns/1ns

module div_32b_tb;

  parameter N = 32;               // ����λ��
  parameter SEED = 1;              // ���岻ͬ���������
  // �������
  reg clk;
  reg rst;
  reg signed [N-1:0] X;
  reg signed [N-1:0] Y;
  reg in_valid;

  // �������
  wire signed [31:0] Q;
  wire signed [31:0] R;
  wire out_valid;
  wire in_error;

  // ʵ��������ģ��
  div_32b dut (
    .Q(Q),
    .R(R),
    .out_valid(out_valid),
    .in_error(in_error),
    .clk(clk),
    .rst(rst),
    .X(X),
    .Y(Y),
    .in_valid(in_valid)
  );
reg signed [31:0]tempq; 
reg signed [31:0]tempr;
integer i, errors;
  task checkP;
    begin
      tempq = X/Y;
      tempr = X % Y;
      if (out_valid &&((tempq != Q) || (tempr != R))) begin
        errors=errors+1;
        $display($time," Error: x=%8h, y=%8h",
                 X, Y); 
        end
    end
  endtask
  // ʱ���ź�����
  initial begin : TB   // Start testing at time 0
     clk = 0;
	 forever 
	#2 clk = ~clk;	     //
  end

    initial 
   begin	
    errors = 0;
        X = $random(SEED);                        // Set pattern based on seed parameter
   for (i=0; i<10000; i=i+1) begin                //����10000��
        rst = 1'b0;
        #2
        rst = 1'b1;                             //�ϵ��1us��λ�ź�
	    X=$random; Y=$random;
     	#2
    	rst = 1'b0;	
	    in_valid=1'b1;                        //��ʼ������
	    #5
	    in_valid=1'b0;
	    #150;	                          // wait 150 ns, then check result
	    checkP;
      end  
    $stop(1);          // end test
  end

  // ��ʾ������
  always @(posedge clk) begin
    if (out_valid) begin
      $display("Result: Q = %d, R = %d", Q, R);
      if (in_error)
       $display("Error: Divisor or Dividend is zero");
    end
  end

endmodule
