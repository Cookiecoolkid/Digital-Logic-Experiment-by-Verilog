module rv32ip(
    input 	clk,
	input 	rst,
	output [31:0] imemaddr,		//imem的地址
	input  [31:0] imemdataout,	//imem读取到的数据
	output 	imemclk,			//imem的时钟
	output [31:0] dmemaddr,		//dmem的地址
	input  [31:0] dmemdataout,	//dmem读取到的数据
	output [31:0] dmemdatain,	//需要写入dmem的数据
	output 	dmemrdclk,			//dmem读口时钟
	output	dmemwrclk,			//dmem写口时钟
	output [2:0] dmemop,		//3'b000:sb 3'b001:sh 3'b010://sw
	output	dmemwe,				//dmem写有效
	output [31:0] dbg_data,	    //当前完成的指令的PC
	output done,				//读取到Instr为0xdead10cc时认为程序结束
	output wb,					//当前周期是否有指令完成
	
	input [31:0] a,
	
	output [31:0] reg00, reg01, reg02, reg03, reg04, reg05, reg06, reg07,
				  reg08, reg09, reg10, reg11, reg12, reg13, reg14, reg15,
				  reg16, reg17, reg18, reg19, reg20, reg21, reg22, reg23,
				  reg24, reg25, reg26, reg27, reg28, reg29, reg30, reg31
        ,
    output stallIF, stallID, stallEX,
    output flushIF, flushID, flushEX,
    output Forwardrs1, Forwardrs2,
    output [31:0] ForwardData1, ForwardData2, M_result, M_Do, EX_result,
    
    output [4:0] ID_rs1, ID_rs2, M_rw, EX_rw,
    output M_MemtoReg, M_RegWr, EX_RegWr, EX_MemtoReg,
    output [31:0] nextPC_da, nextPC_db,
    output [31:0] EX_nextPC, EX_PC,
    output PCselect
);
// Instruction Fetching
	wire [31:0] IF_PC, IF_snPC, IF_instr, inputPC;
    //wire flushIF;
	//wire stallIF;
// Instruction Decoding

	wire [31:0] ID_PC, ID_imm;
	wire [2:0] ID_Branch;
	wire [1:0] ID_ALUBSrc;
	wire [3:0] ID_ALUctr;
	wire [2:0] ID_MemOp;
	wire ID_RegWr, ID_MemtoReg, ID_ALUASrc, ID_MemWr;
	wire [31:0] ID_busa, ID_busb;
	wire [4:0] ID_rw;
	// wire [4:0] ID_rs1, ID_rs2;
	wire ID_done;
	//wire flushID;
	//wire stallID;
// Executing

	wire EX_done;
	wire [31:0] EX_busb;
	// wire [31:0] EX_PC;
	// wire [31:0] EX_nextPC;
	// wire [31:0] EX_result;
	// wire [4:0] EX_rw;
	wire [2:0] EX_MemOp, EX_Branch;
	// wire EX_RegWr, EX_MemtoReg;
	wire EX_MemWr;
	wire flush;
	//wire PCselect;
	//wire flushEX;
	//wire stallEX;
	wire [31:0] EX_data1, EX_data2;

// Memory
	wire M_done;
	// wire M_MemtoReg, M_RegWr;
	// wire [31:0] M_result;
	// wire [4:0] M_rw;
	// wire [31:0] M_Do;
	wire [31:0] M_PC;
	
// Writing Back
	wire W_RegWr;
	wire [31:0] W_busw;
	wire [4:0] W_rw;

	assign flushID = flush;
	assign flushIF = flush;

// ForwardUnit
//wire Forwardrs1, Forwardrs2;
//wire [31:0] ForwardData1, ForwardData2;
ForwardUnit Forward_Unit(
        .EX_rs1(ID_rs1),
        .EX_rs2(ID_rs2), 
        .WB_rd(M_rw),
        .M_rd(EX_rw),
        .WB_RegWr(M_RegWr),
        .WB_MemtoReg(M_MemtoReg),
        .M_RegWr(EX_RegWr),
        .M_MemtoReg(EX_MemtoReg),
        
        
        .WB_ALUResult(M_result),
        .WB_Memout(M_Do),
        .M_ALUResult(EX_result),
        .M_Memout(dmemdataout),
    
        .Forwardrs1(Forwardrs1), .Forwardrs2(Forwardrs2),
        .ForwardData1(ForwardData1), .ForwardData2(ForwardData2),
        .stallIF(stallIF),
        .stallID(stallID),
        .stallEX(stallEX),
        .flushEX(flushEX)
    );    
	
	IF IF(
		.clk(clk), .rst(rst), .flush(flushIF), .block(stallIF),
		.inputPC(inputPC), .done(done),
		.imemaddr(imemaddr), .imemclk(imemclk), .imemdataout(imemdataout),
		.currentPC(IF_PC), .snPC(IF_snPC), .currentInstr(IF_instr)

	);
    assign dbg_data = IF_PC;
	assign inputPC = PCselect ? EX_nextPC : IF_snPC;
	// assign inputPC = EX_nextPC;

	
	ID ID(
		.clk(clk), .flush(flushID), .block(stallID), .rst(rst),
		.in_instr(IF_instr), .in_PC(IF_PC),
		.in_RegWr(W_RegWr), .in_busw(W_busw), .in_rw(W_rw),
		
		.a(a),

		.currentPC(ID_PC),
		.imm(ID_imm),
		.Branch(ID_Branch),
		.ALUBSrc(ID_ALUBSrc),
		.ALUctr(ID_ALUctr),
		.MemOp(ID_MemOp),
		.RegWr(ID_RegWr),
		.MemtoReg(ID_MemtoReg),
		.ALUASrc(ID_ALUASrc),
		.MemWr(ID_MemWr),

		.busa(ID_busa),
		.busb(ID_busb),
		.rw(ID_rw),
		.rs1(ID_rs1),
		.rs2(ID_rs2),
		.done(ID_done),
        
		.reg00(reg00), .reg01(reg01), .reg02(reg02), .reg03(reg03), .reg04(reg04), .reg05(reg05), .reg06(reg06), .reg07(reg07),
		.reg08(reg08), .reg09(reg09), .reg10(reg10), .reg11(reg11), .reg12(reg12), .reg13(reg13), .reg14(reg14), .reg15(reg15),
		.reg16(reg16), .reg17(reg17), .reg18(reg18), .reg19(reg19), .reg20(reg20), .reg21(reg21), .reg22(reg22), .reg23(reg23),
		.reg24(reg24), .reg25(reg25), .reg26(reg26), .reg27(reg27), .reg28(reg28), .reg29(reg29), .reg30(reg30), .reg31(reg31)
	);

	assign EX_data1 = (Forwardrs1 == 1 ? ForwardData1 : ID_busa);
	assign EX_data2 = (Forwardrs2 == 1 ? ForwardData2 : ID_busb);
	
	EX EX(
		.clk(clk), .flush(flushEX), .block(stallEX), .rst(rst),

		.in_busa(EX_data1),
		.in_busb(EX_data2),
		.in_rw(ID_rw),
		.in_PC(ID_PC),
		.in_imm(ID_imm),
		.in_Branch(ID_Branch),
		.in_ALUBSrc(ID_ALUBSrc),
		.in_ALUctr(ID_ALUctr),
		.in_MemOp(ID_MemOp),
		.in_RegWr(ID_RegWr),
		.in_MemtoReg(ID_MemtoReg),
		.in_ALUASrc(ID_ALUASrc),
		.in_MemWr(ID_MemWr),
		.in_done(ID_done),

        .flush_o(flush),
        .PCselect(PCselect),
		.busb(EX_busb),
		.result(EX_result),
		.currentPC(EX_PC),
		.Branch(EX_Branch),
		.MemOp(EX_MemOp),
		.RegWr(EX_RegWr),
		.MemtoReg(EX_MemtoReg),
		.MemWr(EX_MemWr),
		.rw(EX_rw),
		.done(EX_done),
		.nextPC(EX_nextPC)
		
		,.nextPC_da(nextPC_da),
		.nextPC_db(nextPC_db)
	);


	M M(
		.clk(clk), .rst(rst),
		.MemWr(EX_MemWr),
		.MemOp(EX_MemOp),
		.Di(EX_busb),
		.ALUout(EX_result),
		.currentPC(EX_PC),
		.MemtoReg(EX_MemtoReg),
		.RegWr(EX_RegWr),
		.Rd(EX_rw),
		.done(EX_done),

		.MemtoReg_o(M_MemtoReg),
		.RegWr_o(M_RegWr),
		.Rd_o(M_rw),
		.ALUout_o(M_result),
		.Do(M_Do),
		.done_o(M_done),
		.PC_o(M_PC),

		.dmemaddr(dmemaddr),
		.dmemdataout(dmemdataout),
		.dmemdatain(dmemdatain),
		.dmemrdclk(dmemrdclk),
		.dmemwrclk(dmemwrclk),
		.dmemop(dmemop),
		.dmemwe(dmemwe)
	);


	WB WB(
		.clk(clk), .rst(rst), .flush(flush),

		.currentPC(M_PC),	
		.MemtoReg(M_MemtoReg),
		.RegWr(M_RegWr),
		.done(M_done),
		.Rd(M_rw),
		.Do(M_Do),
		.ALUout(M_result),
		.Di(W_busw),
		.WE(W_RegWr),
		.Rw(W_rw),
		.wb(wb),
		.done_o(done)
		//,.PC_o(dbg_data)
	);
endmodule