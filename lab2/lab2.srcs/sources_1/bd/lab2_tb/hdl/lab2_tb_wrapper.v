//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
//Date        : Tue Apr 04 23:27:16 2017
//Host        : DESKTOP-RKN67HR running 64-bit major release  (build 9200)
//Command     : generate_target lab2_tb_wrapper.bd
//Design      : lab2_tb_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
 
module lab2_tb_wrapper
   (reset_rtl_0,
    reset_rtl_0_1,
    sys_clock);
  input reset_rtl_0;
  input reset_rtl_0_1;
  input sys_clock;

  wire reset_rtl_0;
  wire reset_rtl_0_1;
  wire sys_clock;

  lab2_tb lab2_tb_i
       (.reset_rtl_0(reset_rtl_0),
        .reset_rtl_0_1(reset_rtl_0_1),
        .sys_clock(sys_clock));
endmodule
