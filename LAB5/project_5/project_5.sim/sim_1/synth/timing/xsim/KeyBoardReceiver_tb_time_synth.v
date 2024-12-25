// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Oct 25 15:38:05 2023
// Host        : Cookiecoolkid running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/lizheng/Desktop/VivadoLab/LAB5/project_5/project_5.sim/sim_1/synth/timing/xsim/KeyBoardReceiver_tb_time_synth.v
// Design      : KeyboardSim
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module KeyBoardReceiver
   (O0_reg,
    overflow_OBUF,
    D,
    \keycode_reg[2]_0 ,
    E,
    LED1,
    \clkdiv_reg[19] ,
    \keycode_reg[7]_0 ,
    \keycode_reg[7]_1 ,
    \keycode_reg[0]_0 ,
    \keycode_reg[2]_1 ,
    \keycode_reg[2]_2 ,
    \keycode_reg[2]_3 ,
    \keycode_reg[2]_4 ,
    \keycode_reg[2]_5 ,
    PS2_CLK_IBUF,
    CLK50MHZ_BUFG,
    PS2_DATA_IBUF,
    BTNC_IBUF,
    kclkf,
    s,
    Q);
  output O0_reg;
  output overflow_OBUF;
  output [7:0]D;
  output [6:0]\keycode_reg[2]_0 ;
  output [5:0]E;
  output LED1;
  output [3:0]\clkdiv_reg[19] ;
  output \keycode_reg[7]_0 ;
  output \keycode_reg[7]_1 ;
  output \keycode_reg[0]_0 ;
  output \keycode_reg[2]_1 ;
  output \keycode_reg[2]_2 ;
  output \keycode_reg[2]_3 ;
  output \keycode_reg[2]_4 ;
  output \keycode_reg[2]_5 ;
  input PS2_CLK_IBUF;
  input CLK50MHZ_BUFG;
  input PS2_DATA_IBUF;
  input BTNC_IBUF;
  input kclkf;
  input [2:0]s;
  input [6:0]Q;

  wire BTNC_IBUF;
  wire CLK50MHZ_BUFG;
  wire [7:0]D;
  wire [5:0]E;
  wire Hz_250;
  wire Hz_250_i_1_n_0;
  wire LED1;
  wire \LED[10]_i_3_n_0 ;
  wire \LED[10]_i_4_n_0 ;
  wire \LED[11]_i_3_n_0 ;
  wire \LED[11]_i_4_n_0 ;
  wire \LED[11]_i_5_n_0 ;
  wire \LED[11]_i_6_n_0 ;
  wire \LED[12]_i_3_n_0 ;
  wire \LED[12]_i_4_n_0 ;
  wire \LED[12]_i_5_n_0 ;
  wire \LED[12]_i_6_n_0 ;
  wire \LED[14]_i_3_n_0 ;
  wire \LED[14]_i_4_n_0 ;
  wire \LED[14]_i_5_n_0 ;
  wire \LED[15]_i_3_n_0 ;
  wire \LED[15]_i_4_n_0 ;
  wire \LED[15]_i_5_n_0 ;
  wire \LED[15]_i_6_n_0 ;
  wire \LED[15]_i_7_n_0 ;
  wire \LED[6]_i_4_n_0 ;
  wire \LED[6]_i_5_n_0 ;
  wire \LED[6]_i_6_n_0 ;
  wire \LED[6]_i_7_n_0 ;
  wire \LED[8]_i_3_n_0 ;
  wire \LED[8]_i_4_n_0 ;
  wire \LED[8]_i_5_n_0 ;
  wire O0_reg;
  wire PS2_CLK_IBUF;
  wire PS2_DATA_IBUF;
  wire [6:0]Q;
  wire [5:5]ascii;
  wire \buffer[6]_i_1_n_0 ;
  wire \buffer[6]_i_2_n_0 ;
  wire \buffer_reg_n_0_[0] ;
  wire \buffercur[0]_i_1_n_0 ;
  wire \buffercur[1]_i_1_n_0 ;
  wire \buffercur[2]_i_1_n_0 ;
  wire \buffercur[3]_i_1_n_0 ;
  wire \buffercur[4]_i_1_n_0 ;
  wire \buffercur[5]_i_1_n_0 ;
  wire \buffercur[6]_i_1_n_0 ;
  wire \buffercur[7]_i_1_n_0 ;
  wire [7:0]bufferprev;
  wire \bufferprev[7]_i_2_n_0 ;
  wire \bufferprev[7]_i_3_n_0 ;
  wire \bufferprev[7]_i_4_n_0 ;
  wire bufferprev_0;
  wire [3:0]\clkdiv_reg[19] ;
  wire cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire [3:0]cnt_reg;
  wire [7:0]count;
  wire \count[7]_i_1_n_0 ;
  wire \count[7]_i_3_n_0 ;
  wire \count[7]_i_4_n_0 ;
  wire [7:0]count_1;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[7]_i_3_n_0 ;
  wire \counter[7]_i_4_n_0 ;
  wire [7:1]counter_reg;
  wire \counter_reg_n_0_[0] ;
  wire data0;
  wire data58;
  wire data59;
  wire data60;
  wire data61;
  wire data62;
  wire data63;
  wire [7:0]datacur;
  wire \datacur[7]_i_1_n_0 ;
  wire debounce_n_1;
  wire \digit[0]_i_2_n_0 ;
  wire \digit[0]_i_3_n_0 ;
  wire \digit[1]_i_2_n_0 ;
  wire \digit[1]_i_3_n_0 ;
  wire \digit[2]_i_2_n_0 ;
  wire \digit[2]_i_3_n_0 ;
  wire \digit[3]_i_2_n_0 ;
  wire \digit[3]_i_3_n_0 ;
  wire flag_i_1_n_0;
  wire flag_reg_n_0;
  wire kclkf;
  wire keycode0;
  wire \keycode[15]_i_2_n_0 ;
  wire \keycode[15]_i_3_n_0 ;
  wire \keycode[15]_i_4_n_0 ;
  wire \keycode[15]_i_5_n_0 ;
  wire \keycode[15]_i_6_n_0 ;
  wire \keycode_reg[0]_0 ;
  wire [6:0]\keycode_reg[2]_0 ;
  wire \keycode_reg[2]_1 ;
  wire \keycode_reg[2]_2 ;
  wire \keycode_reg[2]_3 ;
  wire \keycode_reg[2]_4 ;
  wire \keycode_reg[2]_5 ;
  wire \keycode_reg[7]_0 ;
  wire \keycode_reg[7]_1 ;
  wire \keycode_reg_n_0_[0] ;
  wire \keycode_reg_n_0_[1] ;
  wire \keycode_reg_n_0_[2] ;
  wire \keycode_reg_n_0_[3] ;
  wire \keycode_reg_n_0_[4] ;
  wire \keycode_reg_n_0_[5] ;
  wire \keycode_reg_n_0_[6] ;
  wire \keycode_reg_n_0_[7] ;
  wire [1:0]onetap;
  wire \onetap[0]_i_1_n_0 ;
  wire \onetap[1]_i_1_n_0 ;
  wire overflow_OBUF;
  wire overflow_i_1_n_0;
  wire overflow_i_2_n_0;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__1;
  wire [3:1]p_0_in__2;
  wire [7:0]p_63_in;
  wire [2:0]s;
  wire \tail[3]_i_1_n_0 ;
  wire \tail[4]_i_1_n_0 ;
  wire \tail[5]_i_1_n_0 ;
  wire [5:3]tail_reg;
  wire \tmp_ascii[0]_i_2_n_0 ;
  wire \tmp_ascii[0]_i_3_n_0 ;
  wire \tmp_ascii[1]_i_2_n_0 ;
  wire \tmp_ascii[1]_i_3_n_0 ;
  wire \tmp_ascii[2]_i_2_n_0 ;
  wire \tmp_ascii[2]_i_3_n_0 ;
  wire \tmp_ascii[3]_i_2_n_0 ;
  wire \tmp_ascii[3]_i_3_n_0 ;
  wire \tmp_ascii[4]_i_2_n_0 ;
  wire \tmp_ascii[4]_i_3_n_0 ;
  wire \tmp_ascii[5]_i_3_n_0 ;
  wire \tmp_ascii[5]_i_4_n_0 ;
  wire \tmp_ascii[5]_i_5_n_0 ;
  wire \tmp_ascii[5]_i_6_n_0 ;
  wire \tmp_ascii[6]_i_2_n_0 ;
  wire \tmp_ascii[6]_i_3_n_0 ;
  wire \tmp_ascii_reg[5]_i_10_n_0 ;
  wire \tmp_ascii_reg[5]_i_11_n_0 ;
  wire \tmp_ascii_reg[5]_i_7_n_0 ;
  wire \tmp_ascii_reg[5]_i_8_n_0 ;
  wire \tmp_ascii_reg[5]_i_9_n_0 ;
  wire tmp_capslock_i_1_n_0;
  wire tmp_capslock_i_2_n_0;
  wire tmp_capslock_i_3_n_0;
  wire tmp_capslock_i_4_n_0;
  wire tmp_capslock_i_5_n_0;
  wire tmp_numlock_i_1_n_0;
  wire tmp_numlock_i_2_n_0;
  wire tmp_numlock_i_3_n_0;

  LUT5 #(
    .INIT(32'h7FFF8000)) 
    Hz_250_i_1
       (.I0(\counter[7]_i_3_n_0 ),
        .I1(counter_reg[3]),
        .I2(counter_reg[4]),
        .I3(counter_reg[5]),
        .I4(Hz_250),
        .O(Hz_250_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Hz_250_reg
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(Hz_250_i_1_n_0),
        .Q(Hz_250),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \LED[0]_i_1 
       (.I0(\tmp_ascii[0]_i_2_n_0 ),
        .I1(\keycode_reg_n_0_[2] ),
        .I2(\tmp_ascii[0]_i_3_n_0 ),
        .I3(\keycode_reg_n_0_[7] ),
        .O(\keycode_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h8AA88888A88AAAAA)) 
    \LED[10]_i_1 
       (.I0(LED1),
        .I1(\LED[10]_i_3_n_0 ),
        .I2(\keycode_reg_n_0_[0] ),
        .I3(\keycode_reg_n_0_[1] ),
        .I4(\keycode_reg_n_0_[2] ),
        .I5(\keycode_reg_n_0_[4] ),
        .O(E[1]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \LED[10]_i_2 
       (.I0(\keycode_reg_n_0_[0] ),
        .I1(\keycode_reg_n_0_[7] ),
        .I2(\LED[11]_i_5_n_0 ),
        .I3(\keycode_reg_n_0_[6] ),
        .I4(\keycode_reg_n_0_[2] ),
        .I5(\keycode_reg_n_0_[3] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAABFBEFEFF)) 
    \LED[10]_i_3 
       (.I0(\LED[10]_i_4_n_0 ),
        .I1(\keycode_reg_n_0_[0] ),
        .I2(\keycode_reg_n_0_[3] ),
        .I3(\keycode_reg_n_0_[1] ),
        .I4(\keycode_reg_n_0_[2] ),
        .I5(\keycode_reg_n_0_[6] ),
        .O(\LED[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE4EEEEAE)) 
    \LED[10]_i_4 
       (.I0(\keycode_reg_n_0_[5] ),
        .I1(\keycode_reg_n_0_[6] ),
        .I2(\keycode_reg_n_0_[3] ),
        .I3(\keycode_reg_n_0_[2] ),
        .I4(\keycode_reg_n_0_[1] ),
        .I5(\keycode_reg_n_0_[7] ),
        .O(\LED[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LED[11]_i_1 
       (.I0(LED1),
        .I1(\LED[11]_i_3_n_0 ),
        .O(E[2]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \LED[11]_i_2 
       (.I0(\keycode_reg_n_0_[7] ),
        .I1(\keycode_reg_n_0_[0] ),
        .I2(\keycode_reg_n_0_[1] ),
        .I3(\keycode_reg_n_0_[2] ),
        .I4(\LED[11]_i_4_n_0 ),
        .I5(\LED[11]_i_5_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0800208200002080)) 
    \LED[11]_i_3 
       (.I0(\LED[11]_i_6_n_0 ),
        .I1(\keycode_reg_n_0_[6] ),
        .I2(\keycode_reg_n_0_[3] ),
        .I3(\keycode_reg_n_0_[2] ),
        .I4(\keycode_reg_n_0_[5] ),
        .I5(\keycode_reg_n_0_[1] ),
        .O(\LED[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \LED[11]_i_4 
       (.I0(\keycode_reg_n_0_[6] ),
        .I1(\keycode_reg_n_0_[3] ),
        .O(\LED[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \LED[11]_i_5 
       (.I0(\keycode_reg_n_0_[5] ),
        .I1(\keycode_reg_n_0_[4] ),
        .O(\LED[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3000033301310000)) 
    \LED[11]_i_6 
       (.I0(\keycode_reg_n_0_[3] ),
        .I1(\keycode_reg_n_0_[7] ),
        .I2(\keycode_reg_n_0_[0] ),
        .I3(\keycode_reg_n_0_[1] ),
        .I4(\keycode_reg_n_0_[2] ),
        .I5(\keycode_reg_n_0_[4] ),
        .O(\LED[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \LED[12]_i_1 
       (.I0(LED1),
        .I1(\LED[12]_i_3_n_0 ),
        .I2(\LED[12]_i_4_n_0 ),
        .O(E[3]));
  LUT6 #(
    .INIT(64'h0000002000200020)) 
    \LED[12]_i_2 
       (.I0(\LED[12]_i_5_n_0 ),
        .I1(\keycode_reg_n_0_[7] ),
        .I2(\keycode_reg_n_0_[4] ),
        .I3(\keycode_reg_n_0_[5] ),
        .I4(\keycode_reg_n_0_[1] ),
        .I5(\keycode_reg_n_0_[0] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hABAAEBEEFFFFFFFF)) 
    \LED[12]_i_3 
       (.I0(\keycode_reg_n_0_[7] ),
        .I1(\keycode_reg_n_0_[0] ),
        .I2(\keycode_reg_n_0_[6] ),
        .I3(\keycode_reg_n_0_[3] ),
        .I4(\keycode_reg_n_0_[5] ),
        .I5(\LED[12]_i_6_n_0 ),
        .O(\LED[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h849AFFFF)) 
    \LED[12]_i_4 
       (.I0(\keycode_reg_n_0_[1] ),
        .I1(\keycode_reg_n_0_[0] ),
        .I2(\keycode_reg_n_0_[4] ),
        .I3(\keycode_reg_n_0_[3] ),
        .I4(\keycode_reg_n_0_[2] ),
        .O(\LED[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h00A4)) 
    \LED[12]_i_5 
       (.I0(\keycode_reg_n_0_[6] ),
        .I1(\keycode_reg_n_0_[1] ),
        .I2(\keycode_reg_n_0_[3] ),
        .I3(\keycode_reg_n_0_[2] ),
        .O(\LED[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3390301800003000)) 
    \LED[12]_i_6 
       (.I0(\keycode_reg_n_0_[6] ),
        .I1(\keycode_reg_n_0_[5] ),
        .I2(\keycode_reg_n_0_[4] ),
        .I3(\keycode_reg_n_0_[3] ),
        .I4(\keycode_reg_n_0_[0] ),
        .I5(\keycode_reg_n_0_[2] ),
        .O(\LED[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA02A8AAAAAAAA)) 
    \LED[14]_i_1 
       (.I0(LED1),
        .I1(\keycode_reg_n_0_[0] ),
        .I2(\LED[15]_i_7_n_0 ),
        .I3(\keycode_reg_n_0_[4] ),
        .I4(\LED[14]_i_3_n_0 ),
        .I5(\LED[14]_i_4_n_0 ),
        .O(E[4]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \LED[14]_i_2 
       (.I0(\keycode_reg_n_0_[7] ),
        .I1(\keycode_reg_n_0_[0] ),
        .I2(\keycode_reg_n_0_[4] ),
        .I3(\LED[15]_i_6_n_0 ),
        .I4(\keycode_reg_n_0_[5] ),
        .I5(\LED[14]_i_5_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFAEFFAEAAAABBAA)) 
    \LED[14]_i_3 
       (.I0(\keycode_reg_n_0_[7] ),
        .I1(\keycode_reg_n_0_[2] ),
        .I2(\keycode_reg_n_0_[1] ),
        .I3(\keycode_reg_n_0_[3] ),
        .I4(\keycode_reg_n_0_[6] ),
        .I5(\keycode_reg_n_0_[5] ),
        .O(\LED[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80070087D0000014)) 
    \LED[14]_i_4 
       (.I0(\keycode_reg_n_0_[0] ),
        .I1(\keycode_reg_n_0_[1] ),
        .I2(\keycode_reg_n_0_[2] ),
        .I3(\keycode_reg_n_0_[5] ),
        .I4(\keycode_reg_n_0_[6] ),
        .I5(\keycode_reg_n_0_[3] ),
        .O(\LED[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \LED[14]_i_5 
       (.I0(\keycode_reg_n_0_[1] ),
        .I1(\keycode_reg_n_0_[2] ),
        .O(\LED[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA88A8)) 
    \LED[15]_i_1 
       (.I0(LED1),
        .I1(\LED[15]_i_3_n_0 ),
        .I2(\LED[15]_i_4_n_0 ),
        .I3(\keycode_reg_n_0_[2] ),
        .I4(\keycode_reg_n_0_[7] ),
        .I5(\LED[15]_i_5_n_0 ),
        .O(E[5]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \LED[15]_i_2 
       (.I0(\keycode_reg_n_0_[5] ),
        .I1(\keycode_reg_n_0_[4] ),
        .I2(\keycode_reg_n_0_[0] ),
        .I3(\keycode_reg_n_0_[7] ),
        .I4(\LED[15]_i_6_n_0 ),
        .I5(\LED[15]_i_7_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h9F7FF97FFA6FAF6F)) 
    \LED[15]_i_3 
       (.I0(\keycode_reg_n_0_[3] ),
        .I1(\keycode_reg_n_0_[6] ),
        .I2(\keycode_reg_n_0_[4] ),
        .I3(\keycode_reg_n_0_[2] ),
        .I4(\keycode_reg_n_0_[1] ),
        .I5(\keycode_reg_n_0_[0] ),
        .O(\LED[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \LED[15]_i_4 
       (.I0(\keycode_reg_n_0_[1] ),
        .I1(\keycode_reg_n_0_[3] ),
        .O(\LED[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFE0FFE00FFFFFE0)) 
    \LED[15]_i_5 
       (.I0(\keycode_reg_n_0_[0] ),
        .I1(\keycode_reg_n_0_[2] ),
        .I2(\keycode_reg_n_0_[1] ),
        .I3(\keycode_reg_n_0_[5] ),
        .I4(\keycode_reg_n_0_[6] ),
        .I5(\keycode_reg_n_0_[3] ),
        .O(\LED[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \LED[15]_i_6 
       (.I0(\keycode_reg_n_0_[6] ),
        .I1(\keycode_reg_n_0_[3] ),
        .O(\LED[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \LED[15]_i_7 
       (.I0(\keycode_reg_n_0_[2] ),
        .I1(\keycode_reg_n_0_[1] ),
        .O(\LED[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \LED[1]_i_1 
       (.I0(\tmp_ascii[1]_i_2_n_0 ),
        .I1(\keycode_reg_n_0_[2] ),
        .I2(\tmp_ascii[1]_i_3_n_0 ),
        .I3(\keycode_reg_n_0_[7] ),
        .O(\keycode_reg[2]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \LED[2]_i_1 
       (.I0(\tmp_ascii[2]_i_2_n_0 ),
        .I1(\keycode_reg_n_0_[2] ),
        .I2(\tmp_ascii[2]_i_3_n_0 ),
        .I3(\keycode_reg_n_0_[7] ),
        .O(\keycode_reg[2]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \LED[3]_i_1 
       (.I0(\tmp_ascii[3]_i_2_n_0 ),
        .I1(\keycode_reg_n_0_[2] ),
        .I2(\tmp_ascii[3]_i_3_n_0 ),
        .I3(\keycode_reg_n_0_[7] ),
        .O(\keycode_reg[2]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \LED[4]_i_1 
       (.I0(\tmp_ascii[4]_i_2_n_0 ),
        .I1(\keycode_reg_n_0_[2] ),
        .I2(\tmp_ascii[4]_i_3_n_0 ),
        .I3(\keycode_reg_n_0_[7] ),
        .O(\keycode_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LED[5]_i_1 
       (.I0(ascii),
        .I1(\keycode_reg_n_0_[7] ),
        .O(\keycode_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h000000000A080008)) 
    \LED[6]_i_1 
       (.I0(LED1),
        .I1(\LED[6]_i_4_n_0 ),
        .I2(\LED[6]_i_5_n_0 ),
        .I3(\keycode_reg_n_0_[0] ),
        .I4(\LED[6]_i_6_n_0 ),
        .I5(\LED[6]_i_7_n_0 ),
        .O(\keycode_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \LED[6]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[6]),
        .I2(p_0_in[5]),
        .I3(p_0_in[7]),
        .I4(\keycode[15]_i_5_n_0 ),
        .O(LED1));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LED[6]_i_3 
       (.I0(\keycode_reg[2]_0 [6]),
        .I1(\keycode_reg_n_0_[7] ),
        .O(\keycode_reg[7]_1 ));
  LUT6 #(
    .INIT(64'hFDFFFFFFBFFFFDFF)) 
    \LED[6]_i_4 
       (.I0(\keycode_reg_n_0_[4] ),
        .I1(\keycode_reg_n_0_[5] ),
        .I2(\keycode_reg_n_0_[2] ),
        .I3(\keycode_reg_n_0_[1] ),
        .I4(\keycode_reg_n_0_[6] ),
        .I5(\keycode_reg_n_0_[3] ),
        .O(\LED[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000400000)) 
    \LED[6]_i_5 
       (.I0(\LED[15]_i_7_n_0 ),
        .I1(\keycode_reg_n_0_[4] ),
        .I2(\keycode_reg_n_0_[0] ),
        .I3(\keycode_reg_n_0_[6] ),
        .I4(\keycode_reg_n_0_[3] ),
        .I5(\keycode_reg_n_0_[5] ),
        .O(\LED[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \LED[6]_i_6 
       (.I0(\keycode_reg_n_0_[1] ),
        .I1(\keycode_reg_n_0_[2] ),
        .I2(\keycode_reg_n_0_[5] ),
        .I3(\keycode_reg_n_0_[6] ),
        .I4(\keycode_reg_n_0_[3] ),
        .I5(\keycode_reg_n_0_[4] ),
        .O(\LED[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000005000010)) 
    \LED[6]_i_7 
       (.I0(\keycode_reg_n_0_[1] ),
        .I1(\keycode_reg_n_0_[0] ),
        .I2(\keycode_reg_n_0_[2] ),
        .I3(\keycode_reg_n_0_[6] ),
        .I4(\keycode_reg_n_0_[3] ),
        .I5(\LED[11]_i_5_n_0 ),
        .O(\LED[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \LED[8]_i_1 
       (.I0(LED1),
        .I1(\LED[8]_i_3_n_0 ),
        .I2(\keycode_reg_n_0_[7] ),
        .I3(\LED[8]_i_4_n_0 ),
        .O(E[0]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \LED[8]_i_2 
       (.I0(\keycode_reg_n_0_[0] ),
        .I1(\keycode_reg_n_0_[7] ),
        .I2(\LED[8]_i_5_n_0 ),
        .I3(\keycode_reg_n_0_[5] ),
        .I4(\keycode_reg_n_0_[4] ),
        .I5(\LED[15]_i_7_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hCC3FF5FFFFFC55AF)) 
    \LED[8]_i_3 
       (.I0(\keycode_reg_n_0_[6] ),
        .I1(\keycode_reg_n_0_[5] ),
        .I2(\keycode_reg_n_0_[1] ),
        .I3(\keycode_reg_n_0_[3] ),
        .I4(\keycode_reg_n_0_[2] ),
        .I5(\keycode_reg_n_0_[0] ),
        .O(\LED[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h66AAF6AAFFFF6FFF)) 
    \LED[8]_i_4 
       (.I0(\keycode_reg_n_0_[5] ),
        .I1(\keycode_reg_n_0_[6] ),
        .I2(\keycode_reg_n_0_[3] ),
        .I3(\keycode_reg_n_0_[2] ),
        .I4(\keycode_reg_n_0_[1] ),
        .I5(\keycode_reg_n_0_[4] ),
        .O(\LED[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \LED[8]_i_5 
       (.I0(\keycode_reg_n_0_[3] ),
        .I1(\keycode_reg_n_0_[6] ),
        .O(\LED[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \buffer[6]_i_1 
       (.I0(tail_reg[4]),
        .I1(tail_reg[3]),
        .I2(tail_reg[5]),
        .I3(\bufferprev[7]_i_2_n_0 ),
        .I4(\buffer[6]_i_2_n_0 ),
        .I5(cnt_reg[0]),
        .O(\buffer[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \buffer[6]_i_2 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[3]),
        .O(\buffer[6]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buffer_reg[0] 
       (.C(kclkf),
        .CE(\buffer[6]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(p_63_in[0]),
        .Q(\buffer_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buffer_reg[1] 
       (.C(kclkf),
        .CE(\buffer[6]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(p_63_in[1]),
        .Q(data58));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buffer_reg[2] 
       (.C(kclkf),
        .CE(\buffer[6]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(p_63_in[2]),
        .Q(data59));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buffer_reg[3] 
       (.C(kclkf),
        .CE(\buffer[6]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(p_63_in[3]),
        .Q(data60));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buffer_reg[4] 
       (.C(kclkf),
        .CE(\buffer[6]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(p_63_in[4]),
        .Q(data61));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buffer_reg[5] 
       (.C(kclkf),
        .CE(\buffer[6]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(p_63_in[5]),
        .Q(data62));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buffer_reg[6] 
       (.C(kclkf),
        .CE(\buffer[6]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(p_63_in[6]),
        .Q(data63));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buffer_reg[7] 
       (.C(kclkf),
        .CE(\buffer[6]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(p_63_in[7]),
        .Q(data0));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \buffercur[0]_i_1 
       (.I0(debounce_n_1),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[3]),
        .I4(cnt_reg[2]),
        .I5(p_63_in[0]),
        .O(\buffercur[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \buffercur[1]_i_1 
       (.I0(debounce_n_1),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[3]),
        .I4(cnt_reg[2]),
        .I5(p_63_in[1]),
        .O(\buffercur[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \buffercur[2]_i_1 
       (.I0(debounce_n_1),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[3]),
        .I4(cnt_reg[2]),
        .I5(p_63_in[2]),
        .O(\buffercur[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \buffercur[3]_i_1 
       (.I0(debounce_n_1),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[0]),
        .I4(cnt_reg[1]),
        .I5(p_63_in[3]),
        .O(\buffercur[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \buffercur[4]_i_1 
       (.I0(debounce_n_1),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[0]),
        .I5(p_63_in[4]),
        .O(\buffercur[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \buffercur[5]_i_1 
       (.I0(debounce_n_1),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[0]),
        .I4(cnt_reg[1]),
        .I5(p_63_in[5]),
        .O(\buffercur[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \buffercur[6]_i_1 
       (.I0(debounce_n_1),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[3]),
        .I4(cnt_reg[2]),
        .I5(p_63_in[6]),
        .O(\buffercur[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \buffercur[7]_i_1 
       (.I0(debounce_n_1),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[3]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[1]),
        .I5(p_63_in[7]),
        .O(\buffercur[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buffercur_reg[0] 
       (.C(kclkf),
        .CE(1'b1),
        .CLR(BTNC_IBUF),
        .D(\buffercur[0]_i_1_n_0 ),
        .Q(p_63_in[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buffercur_reg[1] 
       (.C(kclkf),
        .CE(1'b1),
        .CLR(BTNC_IBUF),
        .D(\buffercur[1]_i_1_n_0 ),
        .Q(p_63_in[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buffercur_reg[2] 
       (.C(kclkf),
        .CE(1'b1),
        .CLR(BTNC_IBUF),
        .D(\buffercur[2]_i_1_n_0 ),
        .Q(p_63_in[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buffercur_reg[3] 
       (.C(kclkf),
        .CE(1'b1),
        .CLR(BTNC_IBUF),
        .D(\buffercur[3]_i_1_n_0 ),
        .Q(p_63_in[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buffercur_reg[4] 
       (.C(kclkf),
        .CE(1'b1),
        .CLR(BTNC_IBUF),
        .D(\buffercur[4]_i_1_n_0 ),
        .Q(p_63_in[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buffercur_reg[5] 
       (.C(kclkf),
        .CE(1'b1),
        .CLR(BTNC_IBUF),
        .D(\buffercur[5]_i_1_n_0 ),
        .Q(p_63_in[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buffercur_reg[6] 
       (.C(kclkf),
        .CE(1'b1),
        .CLR(BTNC_IBUF),
        .D(\buffercur[6]_i_1_n_0 ),
        .Q(p_63_in[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buffercur_reg[7] 
       (.C(kclkf),
        .CE(1'b1),
        .CLR(BTNC_IBUF),
        .D(\buffercur[7]_i_1_n_0 ),
        .Q(p_63_in[7]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \bufferprev[7]_i_1 
       (.I0(\bufferprev[7]_i_2_n_0 ),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[0]),
        .O(bufferprev_0));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFFFEFFE)) 
    \bufferprev[7]_i_2 
       (.I0(\bufferprev[7]_i_3_n_0 ),
        .I1(\bufferprev[7]_i_4_n_0 ),
        .I2(p_63_in[6]),
        .I3(bufferprev[6]),
        .I4(p_63_in[7]),
        .I5(bufferprev[7]),
        .O(\bufferprev[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \bufferprev[7]_i_3 
       (.I0(bufferprev[3]),
        .I1(p_63_in[3]),
        .I2(p_63_in[5]),
        .I3(bufferprev[5]),
        .I4(p_63_in[4]),
        .I5(bufferprev[4]),
        .O(\bufferprev[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \bufferprev[7]_i_4 
       (.I0(p_63_in[2]),
        .I1(bufferprev[2]),
        .I2(p_63_in[1]),
        .I3(bufferprev[1]),
        .I4(bufferprev[0]),
        .I5(p_63_in[0]),
        .O(\bufferprev[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \bufferprev_reg[0] 
       (.C(kclkf),
        .CE(bufferprev_0),
        .CLR(BTNC_IBUF),
        .D(p_63_in[0]),
        .Q(bufferprev[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \bufferprev_reg[1] 
       (.C(kclkf),
        .CE(bufferprev_0),
        .CLR(BTNC_IBUF),
        .D(p_63_in[1]),
        .Q(bufferprev[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \bufferprev_reg[2] 
       (.C(kclkf),
        .CE(bufferprev_0),
        .CLR(BTNC_IBUF),
        .D(p_63_in[2]),
        .Q(bufferprev[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \bufferprev_reg[3] 
       (.C(kclkf),
        .CE(bufferprev_0),
        .CLR(BTNC_IBUF),
        .D(p_63_in[3]),
        .Q(bufferprev[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \bufferprev_reg[4] 
       (.C(kclkf),
        .CE(bufferprev_0),
        .CLR(BTNC_IBUF),
        .D(p_63_in[4]),
        .Q(bufferprev[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \bufferprev_reg[5] 
       (.C(kclkf),
        .CE(bufferprev_0),
        .CLR(BTNC_IBUF),
        .D(p_63_in[5]),
        .Q(bufferprev[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \bufferprev_reg[6] 
       (.C(kclkf),
        .CE(bufferprev_0),
        .CLR(BTNC_IBUF),
        .D(p_63_in[6]),
        .Q(bufferprev[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \bufferprev_reg[7] 
       (.C(kclkf),
        .CE(bufferprev_0),
        .CLR(BTNC_IBUF),
        .D(p_63_in[7]),
        .Q(bufferprev[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1115)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[1]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h112A)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h1230)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[1]),
        .O(p_0_in__2[2]));
  LUT4 #(
    .INIT(16'h557F)) 
    \cnt[3]_i_1 
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[2]),
        .O(cnt));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h200C)) 
    \cnt[3]_i_2 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[1]),
        .O(p_0_in__2[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[0] 
       (.C(kclkf),
        .CE(cnt),
        .CLR(BTNC_IBUF),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt_reg[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[1] 
       (.C(kclkf),
        .CE(cnt),
        .CLR(BTNC_IBUF),
        .D(p_0_in__2[1]),
        .Q(cnt_reg[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[2] 
       (.C(kclkf),
        .CE(cnt),
        .CLR(BTNC_IBUF),
        .D(p_0_in__2[2]),
        .Q(cnt_reg[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[3] 
       (.C(kclkf),
        .CE(cnt),
        .CLR(BTNC_IBUF),
        .D(p_0_in__2[3]),
        .Q(cnt_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .O(count_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .O(count_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(count[2]),
        .I1(count[1]),
        .I2(count[0]),
        .O(count_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .I2(count[2]),
        .I3(count[3]),
        .O(count_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_1 
       (.I0(count[4]),
        .I1(count[0]),
        .I2(count[1]),
        .I3(count[2]),
        .I4(count[3]),
        .O(count_1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \count[5]_i_1 
       (.I0(count[5]),
        .I1(count[3]),
        .I2(count[2]),
        .I3(count[1]),
        .I4(count[0]),
        .I5(count[4]),
        .O(count_1[5]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[6]_i_1 
       (.I0(count[6]),
        .I1(count[4]),
        .I2(\count[7]_i_4_n_0 ),
        .I3(count[5]),
        .O(count_1[6]));
  LUT5 #(
    .INIT(32'h44404044)) 
    \count[7]_i_1 
       (.I0(BTNC_IBUF),
        .I1(keycode0),
        .I2(\count[7]_i_3_n_0 ),
        .I3(onetap[1]),
        .I4(onetap[0]),
        .O(\count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[7]_i_2 
       (.I0(count[7]),
        .I1(count[5]),
        .I2(\count[7]_i_4_n_0 ),
        .I3(count[4]),
        .I4(count[6]),
        .O(count_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \count[7]_i_3 
       (.I0(\count[7]_i_4_n_0 ),
        .I1(count[5]),
        .I2(count[4]),
        .I3(count[6]),
        .I4(count[7]),
        .O(\count[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \count[7]_i_4 
       (.I0(count[3]),
        .I1(count[2]),
        .I2(count[1]),
        .I3(count[0]),
        .O(\count[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(flag_reg_n_0),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(count_1[0]),
        .Q(count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(flag_reg_n_0),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(count_1[1]),
        .Q(count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(flag_reg_n_0),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(count_1[2]),
        .Q(count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(flag_reg_n_0),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(count_1[3]),
        .Q(count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(flag_reg_n_0),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(count_1[4]),
        .Q(count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(flag_reg_n_0),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(count_1[5]),
        .Q(count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(flag_reg_n_0),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(count_1[6]),
        .Q(count[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(flag_reg_n_0),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(count_1[7]),
        .Q(count[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(counter_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter_reg[1]),
        .I1(\counter_reg_n_0_[0] ),
        .I2(counter_reg[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter_reg[2]),
        .I1(\counter_reg_n_0_[0] ),
        .I2(counter_reg[1]),
        .I3(counter_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(counter_reg[3]),
        .I1(counter_reg[1]),
        .I2(\counter_reg_n_0_[0] ),
        .I3(counter_reg[2]),
        .I4(counter_reg[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter[5]_i_1 
       (.I0(counter_reg[4]),
        .I1(counter_reg[2]),
        .I2(\counter_reg_n_0_[0] ),
        .I3(counter_reg[1]),
        .I4(counter_reg[3]),
        .I5(counter_reg[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \counter[6]_i_1 
       (.I0(\counter[7]_i_4_n_0 ),
        .I1(counter_reg[6]),
        .O(p_0_in__1[6]));
  LUT4 #(
    .INIT(16'h8000)) 
    \counter[7]_i_1 
       (.I0(\counter[7]_i_3_n_0 ),
        .I1(counter_reg[3]),
        .I2(counter_reg[4]),
        .I3(counter_reg[5]),
        .O(\counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \counter[7]_i_2 
       (.I0(counter_reg[6]),
        .I1(\counter[7]_i_4_n_0 ),
        .I2(counter_reg[7]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \counter[7]_i_3 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[7]),
        .I3(counter_reg[6]),
        .O(\counter[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter[7]_i_4 
       (.I0(counter_reg[4]),
        .I1(counter_reg[2]),
        .I2(\counter_reg_n_0_[0] ),
        .I3(counter_reg[1]),
        .I4(counter_reg[3]),
        .I5(counter_reg[5]),
        .O(\counter[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[0]),
        .Q(\counter_reg_n_0_[0] ),
        .R(\counter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[1]),
        .Q(counter_reg[1]),
        .R(\counter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[2]),
        .Q(counter_reg[2]),
        .R(\counter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[3]),
        .Q(counter_reg[3]),
        .R(\counter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[4]),
        .Q(counter_reg[4]),
        .R(\counter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[5]),
        .Q(counter_reg[5]),
        .R(\counter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[6]),
        .Q(counter_reg[6]),
        .R(\counter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[7]),
        .Q(counter_reg[7]),
        .R(\counter[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00005554)) 
    \datacur[7]_i_1 
       (.I0(flag_reg_n_0),
        .I1(tail_reg[5]),
        .I2(tail_reg[3]),
        .I3(tail_reg[4]),
        .I4(overflow_OBUF),
        .O(\datacur[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \datacur_reg[0] 
       (.C(Hz_250),
        .CE(\datacur[7]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(\buffer_reg_n_0_[0] ),
        .Q(datacur[0]));
  FDCE #(
    .INIT(1'b0)) 
    \datacur_reg[1] 
       (.C(Hz_250),
        .CE(\datacur[7]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(data58),
        .Q(datacur[1]));
  FDCE #(
    .INIT(1'b0)) 
    \datacur_reg[2] 
       (.C(Hz_250),
        .CE(\datacur[7]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(data59),
        .Q(datacur[2]));
  FDCE #(
    .INIT(1'b0)) 
    \datacur_reg[3] 
       (.C(Hz_250),
        .CE(\datacur[7]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(data60),
        .Q(datacur[3]));
  FDCE #(
    .INIT(1'b0)) 
    \datacur_reg[4] 
       (.C(Hz_250),
        .CE(\datacur[7]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(data61),
        .Q(datacur[4]));
  FDCE #(
    .INIT(1'b0)) 
    \datacur_reg[5] 
       (.C(Hz_250),
        .CE(\datacur[7]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(data62),
        .Q(datacur[5]));
  FDCE #(
    .INIT(1'b0)) 
    \datacur_reg[6] 
       (.C(Hz_250),
        .CE(\datacur[7]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(data63),
        .Q(datacur[6]));
  FDCE #(
    .INIT(1'b0)) 
    \datacur_reg[7] 
       (.C(Hz_250),
        .CE(\datacur[7]_i_1_n_0 ),
        .CLR(BTNC_IBUF),
        .D(data0),
        .Q(datacur[7]));
  debouncer debounce
       (.CLK50MHZ_BUFG(CLK50MHZ_BUFG),
        .O0_reg_0(O0_reg),
        .O1_reg_0(debounce_n_1),
        .PS2_CLK_IBUF(PS2_CLK_IBUF),
        .PS2_DATA_IBUF(PS2_DATA_IBUF));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \digit[0]_i_2 
       (.I0(\keycode_reg_n_0_[4] ),
        .I1(\keycode_reg_n_0_[0] ),
        .I2(s[1]),
        .I3(Q[4]),
        .I4(s[0]),
        .I5(Q[0]),
        .O(\digit[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \digit[0]_i_3 
       (.I0(count[4]),
        .I1(count[0]),
        .I2(s[1]),
        .I3(p_0_in[4]),
        .I4(s[0]),
        .I5(p_0_in[0]),
        .O(\digit[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \digit[1]_i_2 
       (.I0(\keycode_reg_n_0_[5] ),
        .I1(\keycode_reg_n_0_[1] ),
        .I2(s[1]),
        .I3(Q[5]),
        .I4(s[0]),
        .I5(Q[1]),
        .O(\digit[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \digit[1]_i_3 
       (.I0(count[5]),
        .I1(count[1]),
        .I2(s[1]),
        .I3(p_0_in[5]),
        .I4(s[0]),
        .I5(p_0_in[1]),
        .O(\digit[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \digit[2]_i_2 
       (.I0(\keycode_reg_n_0_[6] ),
        .I1(\keycode_reg_n_0_[2] ),
        .I2(s[1]),
        .I3(Q[6]),
        .I4(s[0]),
        .I5(Q[2]),
        .O(\digit[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \digit[2]_i_3 
       (.I0(count[6]),
        .I1(count[2]),
        .I2(s[1]),
        .I3(p_0_in[6]),
        .I4(s[0]),
        .I5(p_0_in[2]),
        .O(\digit[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \digit[3]_i_2 
       (.I0(\keycode_reg_n_0_[7] ),
        .I1(\keycode_reg_n_0_[3] ),
        .I2(s[1]),
        .I3(Q[3]),
        .I4(s[0]),
        .O(\digit[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \digit[3]_i_3 
       (.I0(count[7]),
        .I1(count[3]),
        .I2(s[1]),
        .I3(p_0_in[7]),
        .I4(s[0]),
        .I5(p_0_in[3]),
        .O(\digit[3]_i_3_n_0 ));
  MUXF7 \digit_reg[0]_i_1 
       (.I0(\digit[0]_i_2_n_0 ),
        .I1(\digit[0]_i_3_n_0 ),
        .O(\clkdiv_reg[19] [0]),
        .S(s[2]));
  MUXF7 \digit_reg[1]_i_1 
       (.I0(\digit[1]_i_2_n_0 ),
        .I1(\digit[1]_i_3_n_0 ),
        .O(\clkdiv_reg[19] [1]),
        .S(s[2]));
  MUXF7 \digit_reg[2]_i_1 
       (.I0(\digit[2]_i_2_n_0 ),
        .I1(\digit[2]_i_3_n_0 ),
        .O(\clkdiv_reg[19] [2]),
        .S(s[2]));
  MUXF7 \digit_reg[3]_i_1 
       (.I0(\digit[3]_i_2_n_0 ),
        .I1(\digit[3]_i_3_n_0 ),
        .O(\clkdiv_reg[19] [3]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'h8989898989898988)) 
    flag_i_1
       (.I0(BTNC_IBUF),
        .I1(flag_reg_n_0),
        .I2(overflow_OBUF),
        .I3(tail_reg[4]),
        .I4(tail_reg[3]),
        .I5(tail_reg[5]),
        .O(flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flag_reg
       (.C(Hz_250),
        .CE(1'b1),
        .D(flag_i_1_n_0),
        .Q(flag_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFEFEFFFE)) 
    \keycode[15]_i_1 
       (.I0(\keycode[15]_i_2_n_0 ),
        .I1(\keycode[15]_i_3_n_0 ),
        .I2(\keycode[15]_i_4_n_0 ),
        .I3(\keycode[15]_i_5_n_0 ),
        .I4(\keycode[15]_i_6_n_0 ),
        .O(keycode0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \keycode[15]_i_2 
       (.I0(\keycode_reg_n_0_[0] ),
        .I1(datacur[0]),
        .I2(datacur[2]),
        .I3(\keycode_reg_n_0_[2] ),
        .I4(datacur[1]),
        .I5(\keycode_reg_n_0_[1] ),
        .O(\keycode[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \keycode[15]_i_3 
       (.I0(datacur[4]),
        .I1(\keycode_reg_n_0_[4] ),
        .I2(datacur[5]),
        .I3(\keycode_reg_n_0_[5] ),
        .I4(datacur[3]),
        .I5(\keycode_reg_n_0_[3] ),
        .O(\keycode[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \keycode[15]_i_4 
       (.I0(\keycode_reg_n_0_[7] ),
        .I1(datacur[7]),
        .I2(\keycode_reg_n_0_[6] ),
        .I3(datacur[6]),
        .O(\keycode[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \keycode[15]_i_5 
       (.I0(p_0_in[0]),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .O(\keycode[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \keycode[15]_i_6 
       (.I0(p_0_in[7]),
        .I1(p_0_in[5]),
        .I2(p_0_in[6]),
        .I3(p_0_in[1]),
        .O(\keycode[15]_i_6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \keycode_reg[0] 
       (.C(flag_reg_n_0),
        .CE(keycode0),
        .CLR(BTNC_IBUF),
        .D(datacur[0]),
        .Q(\keycode_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \keycode_reg[10] 
       (.C(flag_reg_n_0),
        .CE(keycode0),
        .CLR(BTNC_IBUF),
        .D(\keycode_reg_n_0_[2] ),
        .Q(p_0_in[2]));
  FDCE #(
    .INIT(1'b0)) 
    \keycode_reg[11] 
       (.C(flag_reg_n_0),
        .CE(keycode0),
        .CLR(BTNC_IBUF),
        .D(\keycode_reg_n_0_[3] ),
        .Q(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \keycode_reg[12] 
       (.C(flag_reg_n_0),
        .CE(keycode0),
        .CLR(BTNC_IBUF),
        .D(\keycode_reg_n_0_[4] ),
        .Q(p_0_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \keycode_reg[13] 
       (.C(flag_reg_n_0),
        .CE(keycode0),
        .CLR(BTNC_IBUF),
        .D(\keycode_reg_n_0_[5] ),
        .Q(p_0_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \keycode_reg[14] 
       (.C(flag_reg_n_0),
        .CE(keycode0),
        .CLR(BTNC_IBUF),
        .D(\keycode_reg_n_0_[6] ),
        .Q(p_0_in[6]));
  FDCE #(
    .INIT(1'b0)) 
    \keycode_reg[15] 
       (.C(flag_reg_n_0),
        .CE(keycode0),
        .CLR(BTNC_IBUF),
        .D(\keycode_reg_n_0_[7] ),
        .Q(p_0_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \keycode_reg[1] 
       (.C(flag_reg_n_0),
        .CE(keycode0),
        .CLR(BTNC_IBUF),
        .D(datacur[1]),
        .Q(\keycode_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \keycode_reg[2] 
       (.C(flag_reg_n_0),
        .CE(keycode0),
        .CLR(BTNC_IBUF),
        .D(datacur[2]),
        .Q(\keycode_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \keycode_reg[3] 
       (.C(flag_reg_n_0),
        .CE(keycode0),
        .CLR(BTNC_IBUF),
        .D(datacur[3]),
        .Q(\keycode_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \keycode_reg[4] 
       (.C(flag_reg_n_0),
        .CE(keycode0),
        .CLR(BTNC_IBUF),
        .D(datacur[4]),
        .Q(\keycode_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \keycode_reg[5] 
       (.C(flag_reg_n_0),
        .CE(keycode0),
        .CLR(BTNC_IBUF),
        .D(datacur[5]),
        .Q(\keycode_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \keycode_reg[6] 
       (.C(flag_reg_n_0),
        .CE(keycode0),
        .CLR(BTNC_IBUF),
        .D(datacur[6]),
        .Q(\keycode_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \keycode_reg[7] 
       (.C(flag_reg_n_0),
        .CE(keycode0),
        .CLR(BTNC_IBUF),
        .D(datacur[7]),
        .Q(\keycode_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \keycode_reg[8] 
       (.C(flag_reg_n_0),
        .CE(keycode0),
        .CLR(BTNC_IBUF),
        .D(\keycode_reg_n_0_[0] ),
        .Q(p_0_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \keycode_reg[9] 
       (.C(flag_reg_n_0),
        .CE(keycode0),
        .CLR(BTNC_IBUF),
        .D(\keycode_reg_n_0_[1] ),
        .Q(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFB0C)) 
    \onetap[0]_i_1 
       (.I0(onetap[1]),
        .I1(keycode0),
        .I2(BTNC_IBUF),
        .I3(onetap[0]),
        .O(\onetap[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \onetap[1]_i_1 
       (.I0(onetap[0]),
        .I1(keycode0),
        .I2(BTNC_IBUF),
        .I3(onetap[1]),
        .O(\onetap[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \onetap_reg[0] 
       (.C(flag_reg_n_0),
        .CE(1'b1),
        .D(\onetap[0]_i_1_n_0 ),
        .Q(onetap[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \onetap_reg[1] 
       (.C(flag_reg_n_0),
        .CE(1'b1),
        .D(\onetap[1]_i_1_n_0 ),
        .Q(onetap[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0800)) 
    overflow_i_1
       (.I0(overflow_i_2_n_0),
        .I1(\bufferprev[7]_i_2_n_0 ),
        .I2(\buffer[6]_i_2_n_0 ),
        .I3(cnt_reg[0]),
        .I4(overflow_OBUF),
        .O(overflow_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    overflow_i_2
       (.I0(tail_reg[3]),
        .I1(tail_reg[4]),
        .I2(tail_reg[5]),
        .O(overflow_i_2_n_0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    overflow_reg
       (.C(kclkf),
        .CE(1'b1),
        .CLR(BTNC_IBUF),
        .D(overflow_i_1_n_0),
        .Q(overflow_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \tail[3]_i_1 
       (.I0(tail_reg[3]),
        .O(\tail[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tail[4]_i_1 
       (.I0(tail_reg[4]),
        .I1(tail_reg[3]),
        .O(\tail[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \tail[5]_i_1 
       (.I0(tail_reg[5]),
        .I1(tail_reg[3]),
        .I2(tail_reg[4]),
        .O(\tail[5]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \tail_reg[3] 
       (.C(kclkf),
        .CE(bufferprev_0),
        .CLR(BTNC_IBUF),
        .D(\tail[3]_i_1_n_0 ),
        .Q(tail_reg[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \tail_reg[4] 
       (.C(kclkf),
        .CE(bufferprev_0),
        .CLR(BTNC_IBUF),
        .D(\tail[4]_i_1_n_0 ),
        .Q(tail_reg[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \tail_reg[5] 
       (.C(kclkf),
        .CE(bufferprev_0),
        .CLR(BTNC_IBUF),
        .D(\tail[5]_i_1_n_0 ),
        .Q(tail_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \tmp_ascii[0]_i_1 
       (.I0(\tmp_ascii[0]_i_2_n_0 ),
        .I1(\keycode_reg_n_0_[2] ),
        .I2(\tmp_ascii[0]_i_3_n_0 ),
        .I3(\keycode_reg_n_0_[7] ),
        .O(\keycode_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'h64822004A2228000)) 
    \tmp_ascii[0]_i_2 
       (.I0(\keycode_reg_n_0_[1] ),
        .I1(\keycode_reg_n_0_[5] ),
        .I2(\keycode_reg_n_0_[4] ),
        .I3(\keycode_reg_n_0_[3] ),
        .I4(\keycode_reg_n_0_[6] ),
        .I5(\keycode_reg_n_0_[0] ),
        .O(\tmp_ascii[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4016552005035630)) 
    \tmp_ascii[0]_i_3 
       (.I0(\keycode_reg_n_0_[1] ),
        .I1(\keycode_reg_n_0_[0] ),
        .I2(\keycode_reg_n_0_[5] ),
        .I3(\keycode_reg_n_0_[4] ),
        .I4(\keycode_reg_n_0_[6] ),
        .I5(\keycode_reg_n_0_[3] ),
        .O(\tmp_ascii[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \tmp_ascii[1]_i_1 
       (.I0(\tmp_ascii[1]_i_2_n_0 ),
        .I1(\keycode_reg_n_0_[2] ),
        .I2(\tmp_ascii[1]_i_3_n_0 ),
        .I3(\keycode_reg_n_0_[7] ),
        .O(\keycode_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'h4A451800828828A0)) 
    \tmp_ascii[1]_i_2 
       (.I0(\keycode_reg_n_0_[1] ),
        .I1(\keycode_reg_n_0_[4] ),
        .I2(\keycode_reg_n_0_[6] ),
        .I3(\keycode_reg_n_0_[3] ),
        .I4(\keycode_reg_n_0_[5] ),
        .I5(\keycode_reg_n_0_[0] ),
        .O(\tmp_ascii[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1011110146304020)) 
    \tmp_ascii[1]_i_3 
       (.I0(\keycode_reg_n_0_[1] ),
        .I1(\keycode_reg_n_0_[0] ),
        .I2(\keycode_reg_n_0_[5] ),
        .I3(\keycode_reg_n_0_[3] ),
        .I4(\keycode_reg_n_0_[4] ),
        .I5(\keycode_reg_n_0_[6] ),
        .O(\tmp_ascii[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \tmp_ascii[2]_i_1 
       (.I0(\tmp_ascii[2]_i_2_n_0 ),
        .I1(\keycode_reg_n_0_[2] ),
        .I2(\tmp_ascii[2]_i_3_n_0 ),
        .I3(\keycode_reg_n_0_[7] ),
        .O(\keycode_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'hA2B0C6100AA00080)) 
    \tmp_ascii[2]_i_2 
       (.I0(\keycode_reg_n_0_[1] ),
        .I1(\keycode_reg_n_0_[4] ),
        .I2(\keycode_reg_n_0_[6] ),
        .I3(\keycode_reg_n_0_[5] ),
        .I4(\keycode_reg_n_0_[3] ),
        .I5(\keycode_reg_n_0_[0] ),
        .O(\tmp_ascii[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0414543012013050)) 
    \tmp_ascii[2]_i_3 
       (.I0(\keycode_reg_n_0_[1] ),
        .I1(\keycode_reg_n_0_[0] ),
        .I2(\keycode_reg_n_0_[5] ),
        .I3(\keycode_reg_n_0_[3] ),
        .I4(\keycode_reg_n_0_[6] ),
        .I5(\keycode_reg_n_0_[4] ),
        .O(\tmp_ascii[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \tmp_ascii[3]_i_1 
       (.I0(\tmp_ascii[3]_i_2_n_0 ),
        .I1(\keycode_reg_n_0_[2] ),
        .I2(\tmp_ascii[3]_i_3_n_0 ),
        .I3(\keycode_reg_n_0_[7] ),
        .O(\keycode_reg[2]_0 [3]));
  LUT6 #(
    .INIT(64'hC8B04C3008A80220)) 
    \tmp_ascii[3]_i_2 
       (.I0(\keycode_reg_n_0_[1] ),
        .I1(\keycode_reg_n_0_[4] ),
        .I2(\keycode_reg_n_0_[6] ),
        .I3(\keycode_reg_n_0_[5] ),
        .I4(\keycode_reg_n_0_[3] ),
        .I5(\keycode_reg_n_0_[0] ),
        .O(\tmp_ascii[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5445032320400000)) 
    \tmp_ascii[3]_i_3 
       (.I0(\keycode_reg_n_0_[1] ),
        .I1(\keycode_reg_n_0_[0] ),
        .I2(\keycode_reg_n_0_[5] ),
        .I3(\keycode_reg_n_0_[3] ),
        .I4(\keycode_reg_n_0_[4] ),
        .I5(\keycode_reg_n_0_[6] ),
        .O(\tmp_ascii[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \tmp_ascii[4]_i_1 
       (.I0(\tmp_ascii[4]_i_2_n_0 ),
        .I1(\keycode_reg_n_0_[2] ),
        .I2(\tmp_ascii[4]_i_3_n_0 ),
        .I3(\keycode_reg_n_0_[7] ),
        .O(\keycode_reg[2]_0 [4]));
  LUT6 #(
    .INIT(64'h2C02B00280A00000)) 
    \tmp_ascii[4]_i_2 
       (.I0(\keycode_reg_n_0_[1] ),
        .I1(\keycode_reg_n_0_[0] ),
        .I2(\keycode_reg_n_0_[4] ),
        .I3(\keycode_reg_n_0_[6] ),
        .I4(\keycode_reg_n_0_[3] ),
        .I5(\keycode_reg_n_0_[5] ),
        .O(\tmp_ascii[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4415767055066660)) 
    \tmp_ascii[4]_i_3 
       (.I0(\keycode_reg_n_0_[1] ),
        .I1(\keycode_reg_n_0_[0] ),
        .I2(\keycode_reg_n_0_[5] ),
        .I3(\keycode_reg_n_0_[4] ),
        .I4(\keycode_reg_n_0_[6] ),
        .I5(\keycode_reg_n_0_[3] ),
        .O(\tmp_ascii[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \tmp_ascii[5]_i_1 
       (.I0(ascii),
        .I1(\keycode_reg[2]_0 [6]),
        .I2(\tmp_ascii[5]_i_3_n_0 ),
        .I3(\tmp_ascii[5]_i_4_n_0 ),
        .O(\keycode_reg[2]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \tmp_ascii[5]_i_2 
       (.I0(\tmp_ascii[5]_i_5_n_0 ),
        .I1(\keycode_reg_n_0_[2] ),
        .I2(\tmp_ascii[5]_i_6_n_0 ),
        .I3(\keycode_reg_n_0_[7] ),
        .O(ascii));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    \tmp_ascii[5]_i_3 
       (.I0(D[5]),
        .I1(p_0_in[1]),
        .I2(p_0_in[5]),
        .I3(p_0_in[7]),
        .I4(p_0_in[6]),
        .I5(\keycode[15]_i_5_n_0 ),
        .O(\tmp_ascii[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1133133311333332)) 
    \tmp_ascii[5]_i_4 
       (.I0(\tmp_ascii_reg[5]_i_7_n_0 ),
        .I1(\keycode_reg_n_0_[7] ),
        .I2(\tmp_ascii_reg[5]_i_8_n_0 ),
        .I3(\tmp_ascii_reg[5]_i_9_n_0 ),
        .I4(\tmp_ascii_reg[5]_i_10_n_0 ),
        .I5(\tmp_ascii_reg[5]_i_11_n_0 ),
        .O(\tmp_ascii[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hECAEF0EE0EA02E00)) 
    \tmp_ascii[5]_i_5 
       (.I0(\keycode_reg_n_0_[1] ),
        .I1(\keycode_reg_n_0_[0] ),
        .I2(\keycode_reg_n_0_[4] ),
        .I3(\keycode_reg_n_0_[6] ),
        .I4(\keycode_reg_n_0_[3] ),
        .I5(\keycode_reg_n_0_[5] ),
        .O(\tmp_ascii[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5054170777767670)) 
    \tmp_ascii[5]_i_6 
       (.I0(\keycode_reg_n_0_[1] ),
        .I1(\keycode_reg_n_0_[0] ),
        .I2(\keycode_reg_n_0_[5] ),
        .I3(\keycode_reg_n_0_[3] ),
        .I4(\keycode_reg_n_0_[4] ),
        .I5(\keycode_reg_n_0_[6] ),
        .O(\tmp_ascii[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \tmp_ascii[6]_i_1 
       (.I0(\tmp_ascii[6]_i_2_n_0 ),
        .I1(\keycode_reg_n_0_[2] ),
        .I2(\tmp_ascii[6]_i_3_n_0 ),
        .I3(\keycode_reg_n_0_[7] ),
        .O(\keycode_reg[2]_0 [6]));
  LUT6 #(
    .INIT(64'h0C04C8F00004C8C0)) 
    \tmp_ascii[6]_i_2 
       (.I0(\keycode_reg_n_0_[4] ),
        .I1(\keycode_reg_n_0_[1] ),
        .I2(\keycode_reg_n_0_[5] ),
        .I3(\keycode_reg_n_0_[3] ),
        .I4(\keycode_reg_n_0_[6] ),
        .I5(\keycode_reg_n_0_[0] ),
        .O(\tmp_ascii[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0404155201015410)) 
    \tmp_ascii[6]_i_3 
       (.I0(\keycode_reg_n_0_[1] ),
        .I1(\keycode_reg_n_0_[0] ),
        .I2(\keycode_reg_n_0_[5] ),
        .I3(\keycode_reg_n_0_[4] ),
        .I4(\keycode_reg_n_0_[6] ),
        .I5(\keycode_reg_n_0_[3] ),
        .O(\tmp_ascii[6]_i_3_n_0 ));
  MUXF7 \tmp_ascii_reg[5]_i_10 
       (.I0(\tmp_ascii[2]_i_2_n_0 ),
        .I1(\tmp_ascii[2]_i_3_n_0 ),
        .O(\tmp_ascii_reg[5]_i_10_n_0 ),
        .S(\keycode_reg_n_0_[2] ));
  MUXF7 \tmp_ascii_reg[5]_i_11 
       (.I0(\tmp_ascii[0]_i_2_n_0 ),
        .I1(\tmp_ascii[0]_i_3_n_0 ),
        .O(\tmp_ascii_reg[5]_i_11_n_0 ),
        .S(\keycode_reg_n_0_[2] ));
  MUXF7 \tmp_ascii_reg[5]_i_7 
       (.I0(\tmp_ascii[3]_i_2_n_0 ),
        .I1(\tmp_ascii[3]_i_3_n_0 ),
        .O(\tmp_ascii_reg[5]_i_7_n_0 ),
        .S(\keycode_reg_n_0_[2] ));
  MUXF7 \tmp_ascii_reg[5]_i_8 
       (.I0(\tmp_ascii[1]_i_2_n_0 ),
        .I1(\tmp_ascii[1]_i_3_n_0 ),
        .O(\tmp_ascii_reg[5]_i_8_n_0 ),
        .S(\keycode_reg_n_0_[2] ));
  MUXF7 \tmp_ascii_reg[5]_i_9 
       (.I0(\tmp_ascii[4]_i_2_n_0 ),
        .I1(\tmp_ascii[4]_i_3_n_0 ),
        .O(\tmp_ascii_reg[5]_i_9_n_0 ),
        .S(\keycode_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'hFB04)) 
    tmp_capslock_i_1
       (.I0(tmp_capslock_i_2_n_0),
        .I1(keycode0),
        .I2(tmp_capslock_i_3_n_0),
        .I3(D[5]),
        .O(tmp_capslock_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tmp_capslock_i_2
       (.I0(BTNC_IBUF),
        .I1(datacur[5]),
        .I2(datacur[7]),
        .I3(tmp_capslock_i_4_n_0),
        .O(tmp_capslock_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    tmp_capslock_i_3
       (.I0(\keycode_reg_n_0_[6] ),
        .I1(\keycode_reg_n_0_[7] ),
        .I2(\keycode_reg_n_0_[5] ),
        .I3(\keycode_reg_n_0_[4] ),
        .I4(\LED[15]_i_4_n_0 ),
        .I5(tmp_capslock_i_5_n_0),
        .O(tmp_capslock_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    tmp_capslock_i_4
       (.I0(datacur[4]),
        .I1(datacur[6]),
        .I2(datacur[0]),
        .I3(datacur[3]),
        .I4(datacur[2]),
        .I5(datacur[1]),
        .O(tmp_capslock_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    tmp_capslock_i_5
       (.I0(\keycode_reg_n_0_[2] ),
        .I1(\keycode_reg_n_0_[0] ),
        .O(tmp_capslock_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tmp_capslock_reg
       (.C(flag_reg_n_0),
        .CE(1'b1),
        .D(tmp_capslock_i_1_n_0),
        .Q(D[5]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB04)) 
    tmp_numlock_i_1
       (.I0(tmp_numlock_i_2_n_0),
        .I1(keycode0),
        .I2(tmp_capslock_i_3_n_0),
        .I3(D[1]),
        .O(tmp_numlock_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    tmp_numlock_i_2
       (.I0(datacur[0]),
        .I1(datacur[7]),
        .I2(datacur[1]),
        .I3(tmp_numlock_i_3_n_0),
        .O(tmp_numlock_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFFFFFF)) 
    tmp_numlock_i_3
       (.I0(datacur[4]),
        .I1(datacur[6]),
        .I2(datacur[3]),
        .I3(datacur[5]),
        .I4(BTNC_IBUF),
        .I5(datacur[2]),
        .O(tmp_numlock_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tmp_numlock_reg
       (.C(flag_reg_n_0),
        .CE(1'b1),
        .D(tmp_numlock_i_1_n_0),
        .Q(D[1]),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module KeyboardSim
   (CLK100MHZ,
    PS2_CLK,
    PS2_DATA,
    BTNC,
    SEG,
    AN,
    LED,
    overflow);
  input CLK100MHZ;
  input PS2_CLK;
  input PS2_DATA;
  input BTNC;
  output [6:0]SEG;
  output [7:0]AN;
  output [15:0]LED;
  output overflow;

  wire [7:0]AN;
  wire [7:0]AN_OBUF;
  wire BTNC;
  wire BTNC_IBUF;
  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire CLK50MHZ;
  wire CLK50MHZ_BUFG;
  wire CLK50MHZ_i_1_n_0;
  wire [15:0]LED;
  wire LED1;
  wire [15:0]LED_OBUF;
  wire PS2_CLK;
  wire PS2_CLK_IBUF;
  wire PS2_DATA;
  wire PS2_DATA_IBUF;
  wire [6:0]SEG;
  wire [6:0]SEG_OBUF;
  wire [6:0]ascii;
  wire capslock;
  wire [3:0]digit;
  wire kclkf;
  wire keyboard_uut_n_0;
  wire keyboard_uut_n_17;
  wire keyboard_uut_n_18;
  wire keyboard_uut_n_19;
  wire keyboard_uut_n_20;
  wire keyboard_uut_n_21;
  wire keyboard_uut_n_22;
  wire keyboard_uut_n_28;
  wire keyboard_uut_n_29;
  wire keyboard_uut_n_30;
  wire keyboard_uut_n_31;
  wire keyboard_uut_n_32;
  wire keyboard_uut_n_33;
  wire keyboard_uut_n_34;
  wire keyboard_uut_n_35;
  wire keyboard_uut_n_7;
  wire keyboard_uut_n_9;
  wire numlock;
  wire overflow;
  wire overflow_OBUF;
  wire [15:11]p_4_out;
  wire [2:0]s;
  wire [5:5]tmp_ascii;
  wire \tmp_ascii_reg_n_0_[0] ;
  wire \tmp_ascii_reg_n_0_[1] ;
  wire \tmp_ascii_reg_n_0_[2] ;
  wire \tmp_ascii_reg_n_0_[3] ;
  wire \tmp_ascii_reg_n_0_[4] ;
  wire \tmp_ascii_reg_n_0_[5] ;
  wire \tmp_ascii_reg_n_0_[6] ;
  wire NLW_i_68_O_UNCONNECTED;

initial begin
 $sdf_annotate("KeyBoardReceiver_tb_time_synth.sdf",,,,"tool_control");
end
  OBUF \AN_OBUF[0]_inst 
       (.I(AN_OBUF[0]),
        .O(AN[0]));
  OBUF \AN_OBUF[1]_inst 
       (.I(AN_OBUF[1]),
        .O(AN[1]));
  OBUF \AN_OBUF[2]_inst 
       (.I(AN_OBUF[2]),
        .O(AN[2]));
  OBUF \AN_OBUF[3]_inst 
       (.I(AN_OBUF[3]),
        .O(AN[3]));
  OBUF \AN_OBUF[4]_inst 
       (.I(AN_OBUF[4]),
        .O(AN[4]));
  OBUF \AN_OBUF[5]_inst 
       (.I(AN_OBUF[5]),
        .O(AN[5]));
  OBUF \AN_OBUF[6]_inst 
       (.I(AN_OBUF[6]),
        .O(AN[6]));
  OBUF \AN_OBUF[7]_inst 
       (.I(AN_OBUF[7]),
        .O(AN[7]));
  IBUF BTNC_IBUF_inst
       (.I(BTNC),
        .O(BTNC_IBUF));
  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  BUFG CLK50MHZ_BUFG_inst
       (.I(CLK50MHZ),
        .O(CLK50MHZ_BUFG));
  LUT1 #(
    .INIT(2'h1)) 
    CLK50MHZ_i_1
       (.I0(CLK50MHZ),
        .O(CLK50MHZ_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CLK50MHZ_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(CLK50MHZ_i_1_n_0),
        .Q(CLK50MHZ),
        .R(1'b0));
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  OBUF \LED_OBUF[10]_inst 
       (.I(LED_OBUF[10]),
        .O(LED[10]));
  OBUF \LED_OBUF[11]_inst 
       (.I(LED_OBUF[11]),
        .O(LED[11]));
  OBUF \LED_OBUF[12]_inst 
       (.I(LED_OBUF[12]),
        .O(LED[12]));
  OBUF \LED_OBUF[13]_inst 
       (.I(LED_OBUF[13]),
        .O(LED[13]));
  OBUF \LED_OBUF[14]_inst 
       (.I(LED_OBUF[14]),
        .O(LED[14]));
  OBUF \LED_OBUF[15]_inst 
       (.I(LED_OBUF[15]),
        .O(LED[15]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[1]),
        .O(LED[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(LED_OBUF[2]),
        .O(LED[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(LED_OBUF[3]),
        .O(LED[3]));
  OBUF \LED_OBUF[4]_inst 
       (.I(LED_OBUF[4]),
        .O(LED[4]));
  OBUF \LED_OBUF[5]_inst 
       (.I(LED_OBUF[5]),
        .O(LED[5]));
  OBUF \LED_OBUF[6]_inst 
       (.I(LED_OBUF[6]),
        .O(LED[6]));
  OBUF \LED_OBUF[7]_inst 
       (.I(1'b0),
        .O(LED[7]));
  OBUF \LED_OBUF[8]_inst 
       (.I(LED_OBUF[8]),
        .O(LED[8]));
  OBUF \LED_OBUF[9]_inst 
       (.I(LED_OBUF[9]),
        .O(LED[9]));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[0] 
       (.C(CLK50MHZ_BUFG),
        .CE(LED1),
        .D(keyboard_uut_n_31),
        .Q(LED_OBUF[0]),
        .R(keyboard_uut_n_30));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[10] 
       (.C(CLK50MHZ_BUFG),
        .CE(keyboard_uut_n_21),
        .D(keyboard_uut_n_7),
        .Q(LED_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[11] 
       (.C(CLK50MHZ_BUFG),
        .CE(keyboard_uut_n_20),
        .D(p_4_out[11]),
        .Q(LED_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[12] 
       (.C(CLK50MHZ_BUFG),
        .CE(keyboard_uut_n_19),
        .D(p_4_out[12]),
        .Q(LED_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[13] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(capslock),
        .Q(LED_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[14] 
       (.C(CLK50MHZ_BUFG),
        .CE(keyboard_uut_n_18),
        .D(p_4_out[14]),
        .Q(LED_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[15] 
       (.C(CLK50MHZ_BUFG),
        .CE(keyboard_uut_n_17),
        .D(p_4_out[15]),
        .Q(LED_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[1] 
       (.C(CLK50MHZ_BUFG),
        .CE(LED1),
        .D(keyboard_uut_n_34),
        .Q(LED_OBUF[1]),
        .R(keyboard_uut_n_30));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[2] 
       (.C(CLK50MHZ_BUFG),
        .CE(LED1),
        .D(keyboard_uut_n_33),
        .Q(LED_OBUF[2]),
        .R(keyboard_uut_n_30));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[3] 
       (.C(CLK50MHZ_BUFG),
        .CE(LED1),
        .D(keyboard_uut_n_35),
        .Q(LED_OBUF[3]),
        .R(keyboard_uut_n_30));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[4] 
       (.C(CLK50MHZ_BUFG),
        .CE(LED1),
        .D(keyboard_uut_n_32),
        .Q(LED_OBUF[4]),
        .R(keyboard_uut_n_30));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[5] 
       (.C(CLK50MHZ_BUFG),
        .CE(LED1),
        .D(keyboard_uut_n_28),
        .Q(LED_OBUF[5]),
        .R(keyboard_uut_n_30));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[6] 
       (.C(CLK50MHZ_BUFG),
        .CE(LED1),
        .D(keyboard_uut_n_29),
        .Q(LED_OBUF[6]),
        .R(keyboard_uut_n_30));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[8] 
       (.C(CLK50MHZ_BUFG),
        .CE(keyboard_uut_n_22),
        .D(keyboard_uut_n_9),
        .Q(LED_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[9] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(numlock),
        .Q(LED_OBUF[9]),
        .R(1'b0));
  IBUF PS2_CLK_IBUF_inst
       (.I(PS2_CLK),
        .O(PS2_CLK_IBUF));
  IBUF PS2_DATA_IBUF_inst
       (.I(PS2_DATA),
        .O(PS2_DATA_IBUF));
  OBUF \SEG_OBUF[0]_inst 
       (.I(SEG_OBUF[0]),
        .O(SEG[0]));
  OBUF \SEG_OBUF[1]_inst 
       (.I(SEG_OBUF[1]),
        .O(SEG[1]));
  OBUF \SEG_OBUF[2]_inst 
       (.I(SEG_OBUF[2]),
        .O(SEG[2]));
  OBUF \SEG_OBUF[3]_inst 
       (.I(SEG_OBUF[3]),
        .O(SEG[3]));
  OBUF \SEG_OBUF[4]_inst 
       (.I(SEG_OBUF[4]),
        .O(SEG[4]));
  OBUF \SEG_OBUF[5]_inst 
       (.I(SEG_OBUF[5]),
        .O(SEG[5]));
  OBUF \SEG_OBUF[6]_inst 
       (.I(SEG_OBUF[6]),
        .O(SEG[6]));
  BUFG \buffercur_reg[7]_i_2 
       (.I(keyboard_uut_n_0),
        .O(kclkf));
  LUT1 #(
    .INIT(2'h1)) 
    i_68
       (.I0(CLK50MHZ_BUFG),
        .O(NLW_i_68_O_UNCONNECTED));
  KeyBoardReceiver keyboard_uut
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK50MHZ_BUFG(CLK50MHZ_BUFG),
        .D({p_4_out[15:14],capslock,p_4_out[12:11],keyboard_uut_n_7,numlock,keyboard_uut_n_9}),
        .E({keyboard_uut_n_17,keyboard_uut_n_18,keyboard_uut_n_19,keyboard_uut_n_20,keyboard_uut_n_21,keyboard_uut_n_22}),
        .LED1(LED1),
        .O0_reg(keyboard_uut_n_0),
        .PS2_CLK_IBUF(PS2_CLK_IBUF),
        .PS2_DATA_IBUF(PS2_DATA_IBUF),
        .Q({\tmp_ascii_reg_n_0_[6] ,\tmp_ascii_reg_n_0_[5] ,\tmp_ascii_reg_n_0_[4] ,\tmp_ascii_reg_n_0_[3] ,\tmp_ascii_reg_n_0_[2] ,\tmp_ascii_reg_n_0_[1] ,\tmp_ascii_reg_n_0_[0] }),
        .\clkdiv_reg[19] (digit),
        .kclkf(kclkf),
        .\keycode_reg[0]_0 (keyboard_uut_n_30),
        .\keycode_reg[2]_0 ({ascii[6],tmp_ascii,ascii[4:0]}),
        .\keycode_reg[2]_1 (keyboard_uut_n_31),
        .\keycode_reg[2]_2 (keyboard_uut_n_32),
        .\keycode_reg[2]_3 (keyboard_uut_n_33),
        .\keycode_reg[2]_4 (keyboard_uut_n_34),
        .\keycode_reg[2]_5 (keyboard_uut_n_35),
        .\keycode_reg[7]_0 (keyboard_uut_n_28),
        .\keycode_reg[7]_1 (keyboard_uut_n_29),
        .overflow_OBUF(overflow_OBUF),
        .s(s));
  OBUF overflow_OBUF_inst
       (.I(overflow_OBUF),
        .O(overflow));
  seg7decimal sevenSeg
       (.AN_OBUF(AN_OBUF),
        .CLK(CLK100MHZ_IBUF_BUFG),
        .D(digit),
        .SEG_OBUF(SEG_OBUF),
        .s(s));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_ascii_reg[0] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .CLR(BTNC_IBUF),
        .D(ascii[0]),
        .Q(\tmp_ascii_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_ascii_reg[1] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .CLR(BTNC_IBUF),
        .D(ascii[1]),
        .Q(\tmp_ascii_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_ascii_reg[2] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .CLR(BTNC_IBUF),
        .D(ascii[2]),
        .Q(\tmp_ascii_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_ascii_reg[3] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .CLR(BTNC_IBUF),
        .D(ascii[3]),
        .Q(\tmp_ascii_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_ascii_reg[4] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .CLR(BTNC_IBUF),
        .D(ascii[4]),
        .Q(\tmp_ascii_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_ascii_reg[5] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .CLR(BTNC_IBUF),
        .D(tmp_ascii),
        .Q(\tmp_ascii_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_ascii_reg[6] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .CLR(BTNC_IBUF),
        .D(ascii[6]),
        .Q(\tmp_ascii_reg_n_0_[6] ));
endmodule

module debouncer
   (O0_reg_0,
    O1_reg_0,
    PS2_CLK_IBUF,
    CLK50MHZ_BUFG,
    PS2_DATA_IBUF);
  output O0_reg_0;
  output O1_reg_0;
  input PS2_CLK_IBUF;
  input CLK50MHZ_BUFG;
  input PS2_DATA_IBUF;

  wire CLK50MHZ_BUFG;
  wire Iv0;
  wire Iv1;
  wire Iv1_i_1_n_0;
  wire O01_out;
  wire O0_reg_0;
  wire O10_out;
  wire O1_i_2_n_0;
  wire O1_reg_0;
  wire PS2_CLK_IBUF;
  wire PS2_DATA_IBUF;
  wire clear;
  wire \cnt0[0]_i_1_n_0 ;
  wire \cnt0[1]_i_1_n_0 ;
  wire [1:0]cnt0_reg;
  wire \cnt1[4]_i_1_n_0 ;
  wire [4:0]cnt1_reg;
  wire [4:0]p_0_in__0;

  LUT2 #(
    .INIT(4'h6)) 
    Iv0_i_1
       (.I0(PS2_CLK_IBUF),
        .I1(Iv0),
        .O(clear));
  FDRE #(
    .INIT(1'b0)) 
    Iv0_reg
       (.C(CLK50MHZ_BUFG),
        .CE(clear),
        .D(PS2_CLK_IBUF),
        .Q(Iv0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    Iv1_i_1
       (.I0(PS2_DATA_IBUF),
        .I1(Iv1),
        .O(Iv1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Iv1_reg
       (.C(CLK50MHZ_BUFG),
        .CE(Iv1_i_1_n_0),
        .D(PS2_DATA_IBUF),
        .Q(Iv1),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8008)) 
    O0_i_1
       (.I0(cnt0_reg[0]),
        .I1(cnt0_reg[1]),
        .I2(PS2_CLK_IBUF),
        .I3(Iv0),
        .O(O01_out));
  FDRE #(
    .INIT(1'b0)) 
    O0_reg
       (.C(CLK50MHZ_BUFG),
        .CE(O01_out),
        .D(PS2_CLK_IBUF),
        .Q(O0_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004004)) 
    O1_i_1
       (.I0(cnt1_reg[3]),
        .I1(cnt1_reg[4]),
        .I2(Iv1),
        .I3(PS2_DATA_IBUF),
        .I4(O1_i_2_n_0),
        .O(O10_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    O1_i_2
       (.I0(cnt1_reg[1]),
        .I1(cnt1_reg[0]),
        .I2(cnt1_reg[2]),
        .O(O1_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    O1_reg
       (.C(CLK50MHZ_BUFG),
        .CE(O10_out),
        .D(PS2_DATA_IBUF),
        .Q(O1_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC341)) 
    \cnt0[0]_i_1 
       (.I0(cnt0_reg[0]),
        .I1(Iv0),
        .I2(PS2_CLK_IBUF),
        .I3(cnt0_reg[1]),
        .O(\cnt0[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h9990)) 
    \cnt0[1]_i_1 
       (.I0(Iv0),
        .I1(PS2_CLK_IBUF),
        .I2(cnt0_reg[1]),
        .I3(cnt0_reg[0]),
        .O(\cnt0[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt0_reg[0] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(\cnt0[0]_i_1_n_0 ),
        .Q(cnt0_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt0_reg[1] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(\cnt0[1]_i_1_n_0 ),
        .Q(cnt0_reg[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt1[0]_i_1 
       (.I0(cnt1_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt1[1]_i_1 
       (.I0(cnt1_reg[0]),
        .I1(cnt1_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt1[2]_i_1 
       (.I0(cnt1_reg[2]),
        .I1(cnt1_reg[0]),
        .I2(cnt1_reg[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt1[3]_i_1 
       (.I0(cnt1_reg[2]),
        .I1(cnt1_reg[0]),
        .I2(cnt1_reg[1]),
        .I3(cnt1_reg[3]),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \cnt1[4]_i_1 
       (.I0(cnt1_reg[2]),
        .I1(cnt1_reg[0]),
        .I2(cnt1_reg[1]),
        .I3(cnt1_reg[4]),
        .I4(cnt1_reg[3]),
        .O(\cnt1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6CCCCCCC)) 
    \cnt1[4]_i_2 
       (.I0(cnt1_reg[3]),
        .I1(cnt1_reg[4]),
        .I2(cnt1_reg[1]),
        .I3(cnt1_reg[0]),
        .I4(cnt1_reg[2]),
        .O(p_0_in__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt1_reg[0] 
       (.C(CLK50MHZ_BUFG),
        .CE(\cnt1[4]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(cnt1_reg[0]),
        .R(Iv1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt1_reg[1] 
       (.C(CLK50MHZ_BUFG),
        .CE(\cnt1[4]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(cnt1_reg[1]),
        .R(Iv1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt1_reg[2] 
       (.C(CLK50MHZ_BUFG),
        .CE(\cnt1[4]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(cnt1_reg[2]),
        .R(Iv1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt1_reg[3] 
       (.C(CLK50MHZ_BUFG),
        .CE(\cnt1[4]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(cnt1_reg[3]),
        .R(Iv1_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \cnt1_reg[4] 
       (.C(CLK50MHZ_BUFG),
        .CE(\cnt1[4]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(cnt1_reg[4]),
        .S(Iv1_i_1_n_0));
endmodule

module seg7decimal
   (s,
    AN_OBUF,
    SEG_OBUF,
    CLK,
    D);
  output [2:0]s;
  output [7:0]AN_OBUF;
  output [6:0]SEG_OBUF;
  input CLK;
  input [3:0]D;

  wire [7:0]AN_OBUF;
  wire CLK;
  wire [3:0]D;
  wire [6:0]SEG_OBUF;
  wire \clkdiv[0]_i_2_n_0 ;
  wire \clkdiv_reg[0]_i_1_n_0 ;
  wire \clkdiv_reg[0]_i_1_n_1 ;
  wire \clkdiv_reg[0]_i_1_n_2 ;
  wire \clkdiv_reg[0]_i_1_n_3 ;
  wire \clkdiv_reg[0]_i_1_n_4 ;
  wire \clkdiv_reg[0]_i_1_n_5 ;
  wire \clkdiv_reg[0]_i_1_n_6 ;
  wire \clkdiv_reg[0]_i_1_n_7 ;
  wire \clkdiv_reg[12]_i_1_n_0 ;
  wire \clkdiv_reg[12]_i_1_n_1 ;
  wire \clkdiv_reg[12]_i_1_n_2 ;
  wire \clkdiv_reg[12]_i_1_n_3 ;
  wire \clkdiv_reg[12]_i_1_n_4 ;
  wire \clkdiv_reg[12]_i_1_n_5 ;
  wire \clkdiv_reg[12]_i_1_n_6 ;
  wire \clkdiv_reg[12]_i_1_n_7 ;
  wire \clkdiv_reg[16]_i_1_n_1 ;
  wire \clkdiv_reg[16]_i_1_n_2 ;
  wire \clkdiv_reg[16]_i_1_n_3 ;
  wire \clkdiv_reg[16]_i_1_n_4 ;
  wire \clkdiv_reg[16]_i_1_n_5 ;
  wire \clkdiv_reg[16]_i_1_n_6 ;
  wire \clkdiv_reg[16]_i_1_n_7 ;
  wire \clkdiv_reg[4]_i_1_n_0 ;
  wire \clkdiv_reg[4]_i_1_n_1 ;
  wire \clkdiv_reg[4]_i_1_n_2 ;
  wire \clkdiv_reg[4]_i_1_n_3 ;
  wire \clkdiv_reg[4]_i_1_n_4 ;
  wire \clkdiv_reg[4]_i_1_n_5 ;
  wire \clkdiv_reg[4]_i_1_n_6 ;
  wire \clkdiv_reg[4]_i_1_n_7 ;
  wire \clkdiv_reg[8]_i_1_n_0 ;
  wire \clkdiv_reg[8]_i_1_n_1 ;
  wire \clkdiv_reg[8]_i_1_n_2 ;
  wire \clkdiv_reg[8]_i_1_n_3 ;
  wire \clkdiv_reg[8]_i_1_n_4 ;
  wire \clkdiv_reg[8]_i_1_n_5 ;
  wire \clkdiv_reg[8]_i_1_n_6 ;
  wire \clkdiv_reg[8]_i_1_n_7 ;
  wire \clkdiv_reg_n_0_[0] ;
  wire \clkdiv_reg_n_0_[10] ;
  wire \clkdiv_reg_n_0_[11] ;
  wire \clkdiv_reg_n_0_[12] ;
  wire \clkdiv_reg_n_0_[13] ;
  wire \clkdiv_reg_n_0_[14] ;
  wire \clkdiv_reg_n_0_[15] ;
  wire \clkdiv_reg_n_0_[16] ;
  wire \clkdiv_reg_n_0_[1] ;
  wire \clkdiv_reg_n_0_[2] ;
  wire \clkdiv_reg_n_0_[3] ;
  wire \clkdiv_reg_n_0_[4] ;
  wire \clkdiv_reg_n_0_[5] ;
  wire \clkdiv_reg_n_0_[6] ;
  wire \clkdiv_reg_n_0_[7] ;
  wire \clkdiv_reg_n_0_[8] ;
  wire \clkdiv_reg_n_0_[9] ;
  wire [3:0]digit;
  wire [2:0]s;
  wire [3:3]\NLW_clkdiv_reg[16]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \AN_OBUF[0]_inst_i_1 
       (.I0(s[2]),
        .I1(s[1]),
        .I2(s[0]),
        .O(AN_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \AN_OBUF[1]_inst_i_1 
       (.I0(s[2]),
        .I1(s[0]),
        .I2(s[1]),
        .O(AN_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \AN_OBUF[2]_inst_i_1 
       (.I0(s[2]),
        .I1(s[1]),
        .I2(s[0]),
        .O(AN_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \AN_OBUF[3]_inst_i_1 
       (.I0(s[2]),
        .I1(s[1]),
        .I2(s[0]),
        .O(AN_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \AN_OBUF[4]_inst_i_1 
       (.I0(s[1]),
        .I1(s[0]),
        .I2(s[2]),
        .O(AN_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \AN_OBUF[5]_inst_i_1 
       (.I0(s[0]),
        .I1(s[1]),
        .I2(s[2]),
        .O(AN_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \AN_OBUF[6]_inst_i_1 
       (.I0(s[1]),
        .I1(s[0]),
        .I2(s[2]),
        .O(AN_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \AN_OBUF[7]_inst_i_1 
       (.I0(s[1]),
        .I1(s[0]),
        .I2(s[2]),
        .O(AN_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \SEG_OBUF[0]_inst_i_1 
       (.I0(digit[3]),
        .I1(digit[2]),
        .I2(digit[0]),
        .I3(digit[1]),
        .O(SEG_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \SEG_OBUF[1]_inst_i_1 
       (.I0(digit[3]),
        .I1(digit[2]),
        .I2(digit[1]),
        .I3(digit[0]),
        .O(SEG_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \SEG_OBUF[2]_inst_i_1 
       (.I0(digit[3]),
        .I1(digit[0]),
        .I2(digit[1]),
        .I3(digit[2]),
        .O(SEG_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \SEG_OBUF[3]_inst_i_1 
       (.I0(digit[3]),
        .I1(digit[2]),
        .I2(digit[0]),
        .I3(digit[1]),
        .O(SEG_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \SEG_OBUF[4]_inst_i_1 
       (.I0(digit[3]),
        .I1(digit[1]),
        .I2(digit[2]),
        .I3(digit[0]),
        .O(SEG_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \SEG_OBUF[5]_inst_i_1 
       (.I0(digit[3]),
        .I1(digit[2]),
        .I2(digit[0]),
        .I3(digit[1]),
        .O(SEG_OBUF[5]));
  LUT4 #(
    .INIT(16'h4025)) 
    \SEG_OBUF[6]_inst_i_1 
       (.I0(digit[3]),
        .I1(digit[0]),
        .I2(digit[2]),
        .I3(digit[1]),
        .O(SEG_OBUF[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \clkdiv[0]_i_2 
       (.I0(\clkdiv_reg_n_0_[0] ),
        .O(\clkdiv[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[0]_i_1_n_7 ),
        .Q(\clkdiv_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clkdiv_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\clkdiv_reg[0]_i_1_n_0 ,\clkdiv_reg[0]_i_1_n_1 ,\clkdiv_reg[0]_i_1_n_2 ,\clkdiv_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clkdiv_reg[0]_i_1_n_4 ,\clkdiv_reg[0]_i_1_n_5 ,\clkdiv_reg[0]_i_1_n_6 ,\clkdiv_reg[0]_i_1_n_7 }),
        .S({\clkdiv_reg_n_0_[3] ,\clkdiv_reg_n_0_[2] ,\clkdiv_reg_n_0_[1] ,\clkdiv[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[8]_i_1_n_5 ),
        .Q(\clkdiv_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[8]_i_1_n_4 ),
        .Q(\clkdiv_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[12]_i_1_n_7 ),
        .Q(\clkdiv_reg_n_0_[12] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clkdiv_reg[12]_i_1 
       (.CI(\clkdiv_reg[8]_i_1_n_0 ),
        .CO({\clkdiv_reg[12]_i_1_n_0 ,\clkdiv_reg[12]_i_1_n_1 ,\clkdiv_reg[12]_i_1_n_2 ,\clkdiv_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clkdiv_reg[12]_i_1_n_4 ,\clkdiv_reg[12]_i_1_n_5 ,\clkdiv_reg[12]_i_1_n_6 ,\clkdiv_reg[12]_i_1_n_7 }),
        .S({\clkdiv_reg_n_0_[15] ,\clkdiv_reg_n_0_[14] ,\clkdiv_reg_n_0_[13] ,\clkdiv_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[12]_i_1_n_6 ),
        .Q(\clkdiv_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[12]_i_1_n_5 ),
        .Q(\clkdiv_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[12]_i_1_n_4 ),
        .Q(\clkdiv_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[16]_i_1_n_7 ),
        .Q(\clkdiv_reg_n_0_[16] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clkdiv_reg[16]_i_1 
       (.CI(\clkdiv_reg[12]_i_1_n_0 ),
        .CO({\NLW_clkdiv_reg[16]_i_1_CO_UNCONNECTED [3],\clkdiv_reg[16]_i_1_n_1 ,\clkdiv_reg[16]_i_1_n_2 ,\clkdiv_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clkdiv_reg[16]_i_1_n_4 ,\clkdiv_reg[16]_i_1_n_5 ,\clkdiv_reg[16]_i_1_n_6 ,\clkdiv_reg[16]_i_1_n_7 }),
        .S({s,\clkdiv_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[16]_i_1_n_6 ),
        .Q(s[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[16]_i_1_n_5 ),
        .Q(s[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[16]_i_1_n_4 ),
        .Q(s[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[0]_i_1_n_6 ),
        .Q(\clkdiv_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[0]_i_1_n_5 ),
        .Q(\clkdiv_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[0]_i_1_n_4 ),
        .Q(\clkdiv_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[4]_i_1_n_7 ),
        .Q(\clkdiv_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clkdiv_reg[4]_i_1 
       (.CI(\clkdiv_reg[0]_i_1_n_0 ),
        .CO({\clkdiv_reg[4]_i_1_n_0 ,\clkdiv_reg[4]_i_1_n_1 ,\clkdiv_reg[4]_i_1_n_2 ,\clkdiv_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clkdiv_reg[4]_i_1_n_4 ,\clkdiv_reg[4]_i_1_n_5 ,\clkdiv_reg[4]_i_1_n_6 ,\clkdiv_reg[4]_i_1_n_7 }),
        .S({\clkdiv_reg_n_0_[7] ,\clkdiv_reg_n_0_[6] ,\clkdiv_reg_n_0_[5] ,\clkdiv_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[4]_i_1_n_6 ),
        .Q(\clkdiv_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[4]_i_1_n_5 ),
        .Q(\clkdiv_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[4]_i_1_n_4 ),
        .Q(\clkdiv_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[8]_i_1_n_7 ),
        .Q(\clkdiv_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clkdiv_reg[8]_i_1 
       (.CI(\clkdiv_reg[4]_i_1_n_0 ),
        .CO({\clkdiv_reg[8]_i_1_n_0 ,\clkdiv_reg[8]_i_1_n_1 ,\clkdiv_reg[8]_i_1_n_2 ,\clkdiv_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clkdiv_reg[8]_i_1_n_4 ,\clkdiv_reg[8]_i_1_n_5 ,\clkdiv_reg[8]_i_1_n_6 ,\clkdiv_reg[8]_i_1_n_7 }),
        .S({\clkdiv_reg_n_0_[11] ,\clkdiv_reg_n_0_[10] ,\clkdiv_reg_n_0_[9] ,\clkdiv_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clkdiv_reg[8]_i_1_n_6 ),
        .Q(\clkdiv_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(digit[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(digit[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(digit[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(digit[3]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
