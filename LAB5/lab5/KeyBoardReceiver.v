`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/13 10:56:11
// Design Name: 
// Module Name: KeyBoardReceiver
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

module KeyBoardReceiver(
    output [31:0] keycodeout,           //���յ�����4������ɨ����
    output ready,                     //���ݾ�����־λ
    output reg [7:0] count,
    output capslock,
    output numlock,
    input clk,                        //ϵͳʱ�� 
    input kb_clk,                    //���� ʱ���ź�
    input kb_data,                    //���� ��������
    input reset
    );
    wire kclkf, kdataf;
    reg [7:0]datacur;              //��ǰɨ����
    reg [7:0]dataprev;            //��һ��ɨ����
    reg [3:0]cnt;                //�յ�����λ��
    reg [31:0]keycode;            //ɨ����
    reg flag;                     //����1֡����
    reg readyflag;
    reg[2:0] onetap;
    reg tmp_capslock;
    reg tmp_numlock;
    
    initial begin                 //��ʼ��
        keycode[7:0]<=8'b00000000;
        cnt<=4'b0000;
        tmp_capslock = 0;
        tmp_numlock = 0;
    end
    debouncer debounce( .clk(clk), .I0(kb_clk), .I1(kb_data), .O0(kclkf), .O1(kdataf));  //������������
    always@(negedge(kclkf))begin
     case(cnt)
            0:readyflag  =  1'b0;                       //��ʼλ
            1:datacur[0]<=kdataf;
            2:datacur[1]<=kdataf;
            3:datacur[2]<=kdataf;
            4:datacur[3]<=kdataf;
            5:datacur[4]<=kdataf;
            6:datacur[5]<=kdataf;
            7:datacur[6]<=kdataf;
            8:begin datacur[7]<=kdataf; end
            9:begin flag<=1'b1; end        //�ѽ���8λ��Ч����
            10:flag<=1'b0;       //����λ
          endcase
        if(cnt<=9) cnt<=cnt+1;
        else if(cnt==10)  cnt<=0;
    end

    always @(posedge flag or posedge reset)begin
        if(reset)
        begin
            keycode <= 0;
            count <= 0;
        end
        else
        begin
            if ((dataprev!=datacur || (dataprev == datacur && keycode[15:8] == 240)))begin
                keycode[31:24]<=keycode[23:16];
                keycode[23:16]<=keycode[15:8];
                keycode[15:8]<=dataprev;
                keycode[7:0]<=datacur;
                dataprev<=datacur;
                readyflag = 1'b1;              //���ݾ�����־λ��1
            
                if(datacur[7:0] == 88 && dataprev != 240) tmp_capslock <= ~tmp_capslock;
                if(datacur[7:0] == 119 && dataprev != 240) tmp_numlock <= ~tmp_numlock;
            
                if(onetap == 3) onetap = 1;
                else onetap = onetap + 1;
                if(count == 255) count = 0;
                else if (onetap == 1)count = count + 1;
            end
        end
    end
    assign capslock = tmp_capslock;
    assign numlock = tmp_numlock;
    assign keycodeout=keycode;
    assign ready=flag;
endmodule

module debouncer(
    input clk,
    input I0,
    input I1,
    output reg O0,
    output reg O1
    );
    reg [4:0]cnt0, cnt1;
    reg Iv0=0,Iv1=0;
    reg out0, out1;
    always@(posedge(clk))begin
    if (I0==Iv0)begin
        if (cnt0==19) O0<=I0;   //���յ�20����ͬ����
        else cnt0<=cnt0+1;
      end
    else begin
        cnt0<="00000";
        Iv0<=I0;
    end
    if (I1==Iv1)begin
            if (cnt1==19) O1<=I1;  //���յ�20����ͬ����
            else cnt1<=cnt1+1;
          end
        else begin
            cnt1<="00000";
            Iv1<=I1;
        end
    end
endmodule
