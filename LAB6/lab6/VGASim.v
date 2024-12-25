`timescale 1ns / 1ps

module ClockDivider (
  input clk_100MHz,
  output reg clk_25MHz
);

reg [26:0] counter;

always @(posedge clk_100MHz) begin
  if (counter == 1'b1) begin
    counter <= 0;
    clk_25MHz <= ~clk_25MHz;
  end else begin
    counter <= counter + 1;
  end
end
endmodule

module VGASim(
    input  CLK100MHZ,        //ϵͳʱ���ź�
    input  BTNC,           // ��λ�ź�
    output [3:0] VGA_R,    //��ɫ�ź�ֵ
    output [3:0] VGA_G,    //��ɫ�ź�ֵ
    output [3:0] VGA_B,     //��ɫ�ź�ֵ
    output  VGA_HS,         //��ͬ���ź�
    output  VGA_VS,          //֡ͬ���ź�
    
    input [7:0] asciicode,
    input [7:0] count,
    input ready
 );
wire [11:0] vga_data;
wire valid;
wire [11:0] h_addr;
wire [11:0] v_addr;
wire CLK25MHZ;

reg [7:0] Screen[2399:0];
reg [127:0] ascii [255:0];

reg [10:0] cursorX;
reg [9:0] cursorY;
wire [127:0] asciiarray;
reg [26:0] counter2HZ;
reg CLK2HZ;
reg [1:0] clr_breakcode;
reg [2:0] mode;
reg flag;
integer i;
initial
      begin
      $readmemh("C:\\Users\\lizheng\\Desktop\\VivadoLab\\LAB6\\lab6\\ASCout.txt", ascii, 0, 255);
      cursorX = 1;
      cursorY = 2;
      mode = 0;
      flag = 0;
      clr_breakcode = 0;
      for (i = 80; i <= 2399; i = i + 1) Screen[i] = 8'h00;
      for (i = 0; i < 80; i = i + 1) Screen[i] = 8'h2D;
      Screen[8] = 8'h58;
      Screen[9] = 8'h74;
      Screen[10] = 8'h65;
      Screen[11] = 8'h72;
      Screen[12] = 8'h6D;
      Screen[13] = 8'h69;
      Screen[14] = 8'h6E;
      Screen[15] = 8'h61;
      Screen[16] = 8'h6C;
      Screen[50] = 8'h32; Screen[51] = 8'h32; Screen[52] = 8'h31; Screen[53] = 8'h32; Screen[54] = 8'h34;
      Screen[55] = 8'h30; Screen[56] = 8'h30; Screen[57] = 8'h39; Screen[58] = 8'h33; 
      Screen[63] = 8'h43; Screen[64] = 8'h68; Screen[65] = 8'h65; Screen[66] = 8'h6E; Screen[67] = 8'h00;
      Screen[68] = 8'h4C; Screen[69] = 8'h69; Screen[70] = 8'h00;
      Screen[71] = 8'h7A; Screen[72] = 8'h68; Screen[73] = 8'h65; Screen[74] = 8'h6E; Screen[75] = 8'h67;
      Screen[160] = 8'h3E;
end

always @ (posedge CLK100MHZ)
begin
      if (counter2HZ == 25000000) begin
          counter2HZ <= 0;
          CLK2HZ <= ~CLK2HZ;
      end else begin
          counter2HZ <= counter2HZ + 1;
      end
end

always @ (negedge ready)
begin
    if (clr_breakcode == 2) clr_breakcode = 0;
    else clr_breakcode = clr_breakcode + 1;
    if(clr_breakcode == 1) 
    begin
        if (asciicode == 8'h1B && mode != 0)
        begin 
            mode = 0;
            flag = 0;
        end
        else if(asciicode == 8'h08 && cursorX >= 2)
        begin
            cursorX = cursorX - 1;
            Screen[cursorY * 80 + cursorX + 1] = 8'h00;
        end
        else if (asciicode == 8'h0D && cursorX == 2 && Screen[cursorY * 80 + 1] == 8'h54)
            begin
                cursorY = cursorY + 2;
                cursorX = 1;
                Screen[cursorY * 80] = 8'h3E;
                flag = 1;
            end
        else if (asciicode == 8'h0D)
        begin
            if (cursorX == 2 && Screen[cursorY * 80 + 1] == 8'h47) mode = 1; // G mode 
            else if (cursorX == 2 && Screen[cursorY * 80 + 1] == 8'h49) mode = 2; // I mode 
            cursorY = cursorY + 1;
            cursorX = 1;
            Screen[cursorY * 80] = 8'h3E;
        end
        else
        begin
            cursorX = cursorX + 1;
            Screen[cursorY * 80 + cursorX - 1] = asciicode;
        end
    end
end

ClockDivider clk_25(.clk_100MHz(CLK100MHZ), .clk_25MHz(CLK25MHZ));
VGACtrl vgactrl(.pix_x(h_addr),.pix_y(v_addr),.hsync(VGA_HS),.vsync(VGA_VS),.pix_valid(valid),.pix_clk(CLK25MHZ),.pix_rst(BTNC));
VGADraw vgadraw(.pix_data(vga_data),.pix_x(h_addr),.pix_y(v_addr),.pix_valid(valid),.pix_clk(CLK25MHZ),.asciiarray(asciiarray),.mode(mode));

assign asciiarray = ((h_addr / 8 == cursorX && v_addr / 16 == cursorY)? (CLK2HZ == 1? 8'h00 : 8'h5F)
                     :((flag == 1 && h_addr / 8 == 0 && v_addr / 16 == cursorY - 1)? ascii[8'h48]:
                     ((flag == 1 && h_addr / 8 == 1 && v_addr / 16 == cursorY - 1)? ascii[8'h69]:ascii[Screen[v_addr / 16 * 80 + h_addr / 8]])));
assign VGA_R=vga_data[11:8];
assign VGA_G=vga_data[7:4];
assign VGA_B=vga_data[3:0];
endmodule
