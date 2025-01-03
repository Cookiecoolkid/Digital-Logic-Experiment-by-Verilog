`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/17 13:48:41
// Design Name: 
// Module Name: DigitalTimer
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


module DigitalTimer(  //端口声明
  input clk,
  input rst,            //复位，有效后00:00:00
  input [1:0] s,        // =00时，进入技术；01：设置小时；10：设置分钟；11：设置秒
  input [3:0] data_h,   //设置初值高位，使用BCD码表示
  input [3:0] data_l,   //设置初值低位，使用BCD码表示
  output reg [6:0] segs,   //七段数码管输入值，显示数字
  output reg [7:0] an,     //七段数码管控制位，控制时、分、秒 
  output reg [2:0] ledout   //输出3色指示灯
); 
// Add your code
reg [27:0] counter;
reg [27:0] counter0;
reg [2:0] counter1;
reg [5:0] counter2 = 5'b00000; // 五秒led
reg [5:0] counter3 = 5'b00000; // 十秒led
reg carry1 = 0;         // 整点标记
reg carry2 = 0;         // 23：59：59
//reg oneSec = 1'b0;
reg [3:0] hour_lo = 4'b0000;
reg [3:0] hour_hi = 4'b0000;
reg [3:0] min_lo =  4'b0000;
reg [3:0] min_hi =  4'b0000;
reg [3:0] sec_lo =  4'b0000;
reg [3:0] sec_hi =  4'b0000;
reg [4:0] number;

always @ (posedge clk) begin
  if (counter == 99999999) begin // 分频出 1s
     counter <= 0;
     //oneSec <= ~oneSec;
  end else begin
     counter <= counter + 1;
  end
  // 用于同时点亮数码管 若为 2 | 5 则跳过，因为数码管 2 5 均不显示
  // 分频出 500 Hz
  if (counter0 == 200000) begin
      counter1 <= counter1 + 1; 
      counter0 <= 0;
      end      
  else begin 
      counter0 <= counter0 + 1;
  end
      
  if (counter1 == 2 || counter1 == 5) begin 
      counter1 <= counter1 + 1;
  end
  else if (counter1 == 8) begin 
     counter1 <= 0;
  end
  
  if (carry2 == 1 && counter3 <= 10) begin // 用于十秒闪烁led
     if (counter == 99999999) begin 
     counter3 <= counter3 + 1; end
     ledout[0] <= 1;
     ledout[1] <= 1;
     ledout[2] <= 1;
  end 
  else begin  
     counter3 <= 0;
     carry2 <= 0;
     ledout[0] <= 0;
     ledout[1] <= 0;
     ledout[2] <= 0;
  end
  
  if (carry1 == 1 && counter2 <= 5) begin  // 用于五秒闪烁led
     if (counter == 99999999) begin 
     counter2 <= counter2 + 1; end
     ledout[0] <= 1;
     ledout[1] <= 1;
     ledout[2] <= 1;
  end 
  else if (carry2 == 0) begin
     counter2 <= 0;
     carry1 <= 0;
     ledout[0] <= 0;
     ledout[1] <= 0;
     ledout[2] <= 0;
  end

  
  // 数字时钟逻辑
  if(s == 2'b00) begin
if (counter == 99999999) begin
    if (sec_lo == 0 && !(sec_hi==0 && min_lo==0 && min_hi==0 && hour_lo==0 && hour_hi==0)) begin
      sec_lo <= 9;
      if (sec_hi == 0 && !( min_lo==0 && min_hi==0 && hour_lo==0 && hour_hi==0)) begin
        sec_hi <= 5;
        if (min_lo == 0 && !( min_hi==0 && hour_lo==0 && hour_hi==0)) begin
          min_lo <= 9;
          if (min_hi == 0 && !( hour_lo==0 && hour_hi==0)) begin
            min_hi <= 5;
            if (hour_lo == 0 && hour_hi != 0) begin
              hour_lo <= 9;
              hour_hi <= hour_hi - 1;
            end else if(hour_lo != 0)begin
              hour_lo <= hour_lo - 1;
            end
          end else if (min_hi!=0)begin
            min_hi <= min_hi - 1;
          end
        end else if (min_lo!=0)begin
          min_lo <= min_lo - 1;
        end
      end else if (sec_hi!=0)begin
        sec_hi <= sec_hi - 1;
      end
    end else if(sec_lo!=0)begin
      sec_lo <= sec_lo - 1;
    end
  end
  end
  else if (s == 2'b01) begin 
    hour_hi <= data_h;
    hour_lo <= data_l;
  end
  else if (s == 2'b10) begin
    min_hi <= data_h;
    min_lo <= data_l;
  end
  else if (s == 2'b11) begin
    sec_hi <= data_h;
    sec_lo <= data_l;
  end
  
  if (rst == 1) begin
   hour_lo <= 4'b0000;
   hour_hi <= 4'b0000;
   min_lo <= 4'b0000;
   min_hi <= 4'b0000;
   sec_lo <= 4'b0000;
   sec_hi <= 4'b0000;
  end

  case (counter1)
      3'b000: an <= ~(8'b00000001); 
      3'b001: an <= ~(8'b00000010);
      3'b010: an <= ~(8'b00000100);
      3'b011: an <= ~(8'b00001000);
      3'b100: an <= ~(8'b00010000);
      3'b101: an <= ~(8'b00100000);
      3'b110: an <= ~(8'b01000000);
      3'b111: an <= ~(8'b10000000);
  endcase
  
    case (counter1)
      3'b000: number <= sec_lo; 
      3'b001: number <= sec_hi;

      3'b011: number <= min_lo;
      3'b100: number <= min_hi;

      3'b110: number <= hour_lo;
      3'b111: number <= hour_hi;
  endcase
  
   case(number)
            4'b0000:segs <= 7'b1000000;
            4'b0001:segs <= 7'b1111001;
            4'b0010:segs <= 7'b0100100;
            4'b0011:segs <= 7'b0110000; 
            4'b0100:segs <= 7'b0011001;
            4'b0101:segs <= 7'b0010010;
            4'b0110:segs <= 7'b0000010;
            4'b0111:segs <= 7'b1111000;
            4'b1000:segs <= 7'b0000000;
            4'b1001:segs <= 7'b0010000;
   endcase
end
endmodule