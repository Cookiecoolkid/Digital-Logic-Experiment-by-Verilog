`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/13 23:05:31
// Design Name: 
// Module Name: MouseReceiver
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
module ps2_init_funcmod  
(  
    input CLOCK, RST_n,  
     inout PS2_CLK,   
     inout PS2_DAT,  
     output oEn  
);    
    parameter T100US = 13'd5000;  
     parameter FF_Write = 7'd32;  
 
     /*******************************/ // sub1  
 
    reg F2,F1;   
 
    always @ ( posedge CLOCK or negedge RST_n )  
 if( !RST_n )  
              { F2,F1 } <= 2'b11;  
 else 
              { F2, F1 } <= { F1, PS2_CLK };  
 
     /*******************************/ // Core  
 
     wire isH2L = ( F2 == 1'b1 && F1 == 1'b0 );  
     reg [8:0]T;  
     reg [6:0]i,Go;  
     reg [12:0]C1;  
     reg rCLK,rDAT;  
     reg isQ1,isQ2,isEn;  
 
     always @ ( posedge CLOCK or negedge RST_n )  
 if( !RST_n )  
              begin  
                     T <= 9'd0;  
                     C1 <= 13'd0;  
                     { i,Go } <= { 7'd0,7'd0 };  
                     { rCLK,rDAT } <= 2'b11;  
                     { isQ1,isQ2,isEn } <= 3'b000;  
                end  
 else 
 case( i )  
 
                     /***********/ // INIT Normal Mouse   
 
                      0: // Send F4 1111_0100  
                      begin T <= { 1'b0, 8'hF4 }; i <= FF_Write; Go <= i + 1'b1; end  
 
                      1:  
                      isEn <= 1'b1;  
 
                      /****************/ // PS2 Write Function  
 
                      32: // Press low CLK 100us   
 if( C1 == T100US -1 ) begin C1 <= 13'd0; i <= i + 1'b1; end  
 else begin isQ1 = 1'b1; rCLK <= 1'b0; C1 <= C1 + 1'b1; end  
 
                      33: // Release PS2_CLK and set in, PS2_DAT set out  
                      begin isQ1 <= 1'b0; rCLK <= 1'b1; isQ2 <= 1'b1; i <= i + 1'b1; end  
 
                      34: // start bit   
                      begin rDAT <= 1'b0; i <= i + 1'b1; end  
 
                      35,36,37,38,39,40,41,42,43:  // Data byte   
 if( isH2L ) begin rDAT <= T[ i-35 ]; i <= i + 1'b1; end  
 
                      44: // Stop bit   
 if( isH2L ) begin rDAT <= 1'b1; i <= i + 1'b1; end  
 
                      45: // Ack bit  
 if( isH2L ) begin i <= i + 1'b1; end  
 
                      46: // PS2_DAT set in  
                      begin isQ2 <= 1'b0; i <= i + 1'b1; end  
 
                      47,48,49,50,51,52,53,54,55,56,57: // 1 Frame  
 if( isH2L ) i <= i + 1'b1;  
 
                      58: // Return  
                      i <= Go;  
 
                 endcase  
 
     assign oEn = isEn;  
     assign PS2_CLK = isQ1 ? rCLK : 1'bz;  
     assign PS2_DAT = isQ2 ? rDAT : 1'bz;  
 
endmodule  

module MouseReceiver(
    output [6:0]SEG,
    output [7:0]AN,
    output DP,
    output LeftButton,   //左键按下
    output RightButton,  //左键按下
    output MidButton,
    //output MidButton,
    input CLK100MHZ,
    inout PS2_CLK,
    inout PS2_DATA
    );
 // add your code here
wire [31:0] seg7_data;
reg [6:0] cnt;
reg [31:0] data;
reg flag;
wire [7:0]X;
wire [7:0]Y;
wire [3:0]Z;
wire XY;
wire YY;
wire XS;
wire YS;
wire ZS;
wire oEn;
//ps2_init_funcmod init(.CLOCK(CLK100MHZ), .RST_n(1), .PS2_CLK(PS2_CLK), .PS2_DAT(PS2_DATA),.oEn(oEn));

seg1 Seg1 (.XS(XS), .YS(YS), .ZS(ZS), .x(seg7_data[31:0]), .clk(CLK100MHZ), .seg(SEG[6:0]), .an(AN[7:0]), .dp(0));

always @(negedge PS2_CLK)
begin
    case(cnt)
            //开始位
            0: ;
            1:data[0]<=PS2_DATA;
            2:data[1]<=PS2_DATA;
            3:data[2]<=PS2_DATA;
            4:data[3]<=PS2_DATA;
            5:data[4]<=PS2_DATA;
            6:data[5]<=PS2_DATA;
            7:data[6]<=PS2_DATA;
            8:data[7]<=PS2_DATA;
            9:flag <=1'b1;        //已接收8位有效数据
            10:flag<=1'b0;       //结束位
            11: ;
            12:data[8]<=PS2_DATA;
            13:data[9]<=PS2_DATA;
            14:data[10]<=PS2_DATA;
            15:data[11]<=PS2_DATA;
            16:data[12]<=PS2_DATA;
            17:data[13]<=PS2_DATA;
            18:data[14]<=PS2_DATA;
            19:data[15]<=PS2_DATA;
            20:flag <=1'b1;        //已接收8位有效数据
            21:flag<=1'b0;       //结束位
            22: ;
            23:data[16]<=PS2_DATA;
            24:data[17]<=PS2_DATA;
            25:data[18]<=PS2_DATA;
            26:data[19]<=PS2_DATA;
            27:data[20]<=PS2_DATA;
            28:data[21]<=PS2_DATA;
            29:data[22]<=PS2_DATA;
            30:data[23]<=PS2_DATA;
            31:flag <=1'b1;        //已接收8位有效数据
            32:flag<=1'b0;       //结束位
            33: ;
            34:data[24]<=PS2_DATA;
            35:data[25]<=PS2_DATA;
            36:data[26]<=PS2_DATA;
            37:data[27]<=PS2_DATA;
            38:data[28]<=PS2_DATA;
            39:data[29]<=PS2_DATA;
            40:data[30]<=PS2_DATA;
            41:data[31]<=PS2_DATA;
            42:flag <=1'b1;        //已接收8位有效数据
            43:flag<=1'b0;       //结束位
          endcase
        if(cnt<=42) cnt<=cnt+1;
        else if(cnt==43)  cnt<=0;
end

assign X = data[15:8];
assign Y = data[23:16];
assign Z = data[27:24];
assign XY = data[6];
assign YY = data[7];
assign XS = data[4];
assign YS = data[5];
assign ZS = data[27];
assign LeftButton = data[0];
assign RightButton = data[1];
assign MidButton = data[2];
//assign MidButton = data[2];
assign seg7_data[3:0] = (data[27] == 1 ?~Z + 1 : Z);
assign seg7_data[7:4] = (ZS == 1 ? 1:0);
assign seg7_data[15:8] = (data[23] == 1 ? ~Y + 1 : Y);
assign seg7_data[27:20] = (data[15] == 1 ?~X + 1 : X);
assign seg7_data[19:16] = (XS == 1 ? 1: 0);
assign seg7_data[31:28] = (YS == 1 ? 1: 0);

endmodule
