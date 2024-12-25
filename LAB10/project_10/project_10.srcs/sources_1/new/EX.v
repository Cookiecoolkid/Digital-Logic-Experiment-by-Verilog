module EX (
    input clk, flush, block, rst,
    input [31:0] in_busa, in_busb,
    input [4:0] in_rw,
    input [31:0] in_PC,
    input [31:0] in_imm,
    input [2:0] in_Branch,
    input [1:0] in_ALUBSrc,
    input [3:0] in_ALUctr,
    input [2:0] in_MemOp,
    input in_RegWr, in_MemtoReg, in_ALUASrc, in_MemWr,
    input in_done,

    output PCselect,
    output [31:0] result,
    output [31:0] currentPC,
    output [31:0] busb,
    output [4:0] rw,
    output [2:0] MemOp,
    output RegWr, MemtoReg, MemWr,
    output done,
    output flush_o,
    output [2:0] Branch,
    output [31:0] nextPC
    
    ,output [31:0] nextPC_da, nextPC_db
);

    reg [31:0] reg_PC, reg_imm, reg_busa, reg_busb;
    reg [4:0] reg_rw;
    reg [2:0] reg_Branch;
    reg [1:0] reg_ALUBSrc;
    reg [3:0] reg_ALUctr;
    reg [2:0] reg_MemOp;
    reg reg_RegWr, reg_MemtoReg, reg_ALUASrc, reg_MemWr;
    reg reg_done;


    wire zero;
    wire [31:0] imm, busa;

    always @(negedge clk) begin
        if (rst) begin
            reg_PC          <= 32'h00000000;
            reg_imm         <= 32'h00000000;
            reg_busa        <= 32'h00000000;
            reg_busb        <= 32'h00000000;
            reg_rw          <= 5'b00000;
            reg_Branch      <= 3'b000;
            reg_ALUBSrc     <= 2'b00;
            reg_ALUctr      <= 4'b0000;
            reg_MemOp       <= 3'b000;
            reg_RegWr       <= 1'b0;
            reg_MemtoReg    <= 1'b0;
            reg_ALUASrc     <= 1'b0;
            reg_MemWr       <= 1'b0;
            reg_done        <= 1'b0;      
        end
        else if (!block) begin
            reg_PC          <= in_PC;
            reg_imm         <= in_imm;
            reg_busa        <= in_busa;
            reg_busb        <= in_busb;
            reg_rw          <= in_rw;
            reg_Branch      <= in_Branch;
            reg_ALUBSrc     <= in_ALUBSrc;
            reg_ALUctr      <= in_ALUctr;
            reg_MemOp       <= in_MemOp;
            reg_RegWr       <= in_RegWr;
            reg_MemtoReg    <= in_MemtoReg;
            reg_ALUASrc     <= in_ALUASrc;
            reg_MemWr       <= in_MemWr;
            reg_done        <= in_done;
            end
        else if(flush) begin
            reg_PC          <= 32'h00000000;
            reg_imm         <= 32'h00000000;
            reg_busa        <= 32'h00000000;
            reg_busb        <= 32'h00000000;
            reg_rw          <= 5'b00000;
            reg_Branch      <= 3'b000;
            reg_ALUBSrc     <= 2'b00;
            reg_ALUctr      <= 4'b0000;
            reg_MemOp       <= 3'b000;
            reg_RegWr       <= 1'b0;
            reg_MemtoReg    <= 1'b0;
            reg_ALUASrc     <= 1'b0;
            reg_MemWr       <= 1'b0;
            reg_done        <= 1'b0;        
            end
    end

    wire [31:0] ALUa, ALUb;

    assign ALUa = (reg_ALUASrc == 1 ? reg_PC : reg_busa);
    assign ALUb = (reg_ALUBSrc == 2'b00) ? reg_busb : ((reg_ALUBSrc == 2'b01) ? reg_imm : 32'h00000004);
        
    //assign flush_o = (PCselect && nextPC != currentPC + 32'h00000004) ? 1 : 0;
    assign flush_o = PCselect;
    ALU32 ALU(
        .dataa(ALUa),
        .datab(ALUb),
        .aluctr(reg_ALUctr),
        .result(result),
        .zero(zero)
    );
    
    
    NextAddr NextAddr (
		.zero(zero),
		.rst(flush),
		.result0(result[0]),
		.Branch(Branch),
		.imm(imm),
		.currentPC(currentPC),
		.busa(busa),
		.nextPC(nextPC)
		,.da(nextPC_da),
		.db(nextPC_db)
	);
    
    assign PCselect = (Branch != 3'b0 && nextPC != currentPC + 32'h00000004);
    assign currentPC = reg_PC;
    assign Branch = reg_Branch;
    assign MemOp = reg_MemOp;
    assign RegWr = reg_RegWr;
    assign MemtoReg = reg_MemtoReg;
    assign MemWr = reg_MemWr;
    assign imm = reg_imm;
    assign busa = reg_busa;
    assign busb = reg_busb;
    assign rw = reg_rw;
    assign done = reg_done;

endmodule