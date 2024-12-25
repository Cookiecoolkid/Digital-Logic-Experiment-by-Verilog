`timescale 1ns / 1ps


module mem32b_top(
    output [6:0]SEG,     
    output [7:0]AN,              
    output [15:0] dataout_L8b,   
    input CLK100MHZ,            
    input BTNC,                 
    input [2:0] MemOp,          
    input we,                   
    input [3:0] addr_L4b,           
    input [7:0] datain_L8b          
 );
 // Add your code here 
//msclk
    wire msclk;
    msclkgen msclkgen0(CLK100MHZ, 1'b0, 1'b1, msclk);
//end

//countdown
reg [15:0] countdown;
always@(posedge msclk or posedge BTNC)begin
    if(BTNC)begin
        countdown <= 16'd16;
    end
    else if(countdown != 0)begin
        countdown <= countdown - 1;
    end
end
//end

//wire
    wire [15:0] true_addr = {12'b0, addr_L4b};
    wire [31:0] true_datain = {datain_L8b, datain_L8b, datain_L8b, datain_L8b};
    wire [15:0] final_addr = (countdown == 0) ? true_addr : countdown-1;
    wire [31:0] final_datain = (countdown == 0) ? true_datain : 32'd0;
    wire final_we = (countdown == 0) ? we : 1'b1;
//end

//mem32b
    wire [31:0] final_dataout;
    mem32b mem32b0(final_dataout, CLK100MHZ, final_we, MemOp, final_datain, final_addr);
    assign dataout_L8b = final_dataout[15:0];
//end

//7seg
wire [3:0] now[7:0];
assign now[0] = final_dataout[3:0]; assign now[1] = final_dataout[7:4]; assign now[2] = final_dataout[11:8]; assign now[3] = final_dataout[15:12];
assign now[4] = final_dataout[19:16]; assign now[5] = final_dataout[23:20]; assign now[6] = final_dataout[27:24]; assign now[7] = final_dataout[31:28];
reg [2:0]pos; reg[3:0] I;
always@(posedge msclk)begin
    if(pos == 3'd7)begin
        pos = 0;
    end
    else begin
        pos = pos + 1;
    end
    I = now[pos];
end
dec7seg mydec(.I(I), .S(pos), .O_seg(SEG), .O_led(AN));
//end

endmodule



module dec7seg(

output  reg  [6:0] O_seg,  
output  reg  [7:0] O_led,  
input   [3:0] I,           
input   [2:0] S          
); 

always@(*)begin 
    O_led = 8'b11111111;
    O_led[S] = 0;
    case(I)
    4'b0000: O_seg = 7'b1000000;
    4'b0001: O_seg = 7'b1111001;
    4'b0010: O_seg = 7'b0100100;
    4'b0011: O_seg = 7'b0110000;
    4'b0100: O_seg = 7'b0011001;
    4'b0101: O_seg = 7'b0010010;
    4'b0110: O_seg = 7'b0000010;
    4'b0111: O_seg = 7'b1111000;
    4'b1000: O_seg = 7'b0000000;
    4'b1001: O_seg = 7'b0010000;
    4'b1010: O_seg = 7'b0001000;
    4'b1011: O_seg = 7'b0000011;
    4'b1100: O_seg = 7'b1000110;
    4'b1101: O_seg = 7'b0100001;
    4'b1110: O_seg = 7'b0000110;
    4'b1111: O_seg = 7'b0001110;
    endcase
  end
endmodule

module msclkgen(input clkin, input rst, input clken, output reg clkout);
    parameter clk_freq=1000;
    parameter countlimit=100000000/2/clk_freq-1; 
   reg[31:0] clkcount;
   initial
   begin clkcount=32'd0; clkout=1'b0; end
   always @ (posedge clkin) 
    if(rst)
     begin
        clkcount<=0;
        clkout<=1'b0;
     end
    else
    begin
     if(clken)
        begin
            if(clkcount>=countlimit)
             begin
                clkcount<=32'd0;
                clkout<=~clkout;
             end
             else
             begin
                clkcount<=clkcount+1;

             end
         end
     end  
endmodule