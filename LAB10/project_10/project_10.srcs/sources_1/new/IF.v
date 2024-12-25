module IF(
    input clk, rst, flush, block,
    input [31:0] inputPC,
    input done,
    output [31:0] imemaddr,
    output imemclk,
    input [31:0] imemdataout,

    output [31:0] currentPC,
    output [31:0] snPC,
    output [31:0] currentInstr
);
    reg [31:0] PC;
    always @(negedge clk or posedge rst) begin
        if (rst)
            PC <= 0;
        else if (done)
            PC <= PC;
        else if (block)
            PC <= PC;
        //else if (flush)  ��� PC ����Ҫ flush ��Ϊ���ⲿ�Ѿ��� PCselect ѡ�����
        //    PC <= 0;        
        else if(!block && !done)
            PC <= inputPC;

    end


    assign snPC = PC + 32'h00000004;

    assign imemaddr = PC;
    assign imemclk = clk; 

    assign currentPC = PC;
    assign currentInstr = imemdataout;
endmodule