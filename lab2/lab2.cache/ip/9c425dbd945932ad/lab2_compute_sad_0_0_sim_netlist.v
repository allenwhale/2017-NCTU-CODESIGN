// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Fri Mar 24 23:07:53 2017
// Host        : shlab_57-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ lab2_compute_sad_0_0_sim_netlist.v
// Design      : lab2_compute_sad_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compute_sad_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aresetn,
    s00_axi_arvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aresetn;
  input s00_axi_arvalid;
  input s00_axi_aclk;
  input [3:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_araddr;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .I4(S_AXI_WREADY),
        .I5(S_AXI_AWREADY),
        .O(axi_bvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compute_sad_v1_0_S00_AXI compute_sad_v1_0_S00_AXI_inst
       (.axi_arready_reg_0(axi_rvalid_i_1_n_0),
        .axi_bvalid_reg_0(axi_bvalid_i_1_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(S_AXI_ARREADY),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(S_AXI_AWREADY),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(S_AXI_WREADY),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compute_sad_v1_0_S00_AXI
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_arvalid,
    axi_bvalid_reg_0,
    axi_arready_reg_0,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input axi_bvalid_reg_0;
  input axi_arready_reg_0;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aresetn;
  input [3:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_araddr;

  wire \abs_diff[0][0]_i_1_n_0 ;
  wire \abs_diff[0][1]_i_1_n_0 ;
  wire \abs_diff[0][2]_i_1_n_0 ;
  wire \abs_diff[0][3]_i_1_n_0 ;
  wire \abs_diff[0][3]_i_2_n_0 ;
  wire \abs_diff[0][3]_i_3_n_0 ;
  wire \abs_diff[0][3]_i_4_n_0 ;
  wire \abs_diff[10][0]_i_1_n_0 ;
  wire \abs_diff[10][1]_i_1_n_0 ;
  wire \abs_diff[10][2]_i_1_n_0 ;
  wire \abs_diff[10][3]_i_1_n_0 ;
  wire \abs_diff[10][3]_i_2_n_0 ;
  wire \abs_diff[10][3]_i_3_n_0 ;
  wire \abs_diff[10][3]_i_4_n_0 ;
  wire \abs_diff[11][0]_i_1_n_0 ;
  wire \abs_diff[11][1]_i_1_n_0 ;
  wire \abs_diff[11][2]_i_1_n_0 ;
  wire \abs_diff[11][3]_i_1_n_0 ;
  wire \abs_diff[11][3]_i_2_n_0 ;
  wire \abs_diff[11][3]_i_3_n_0 ;
  wire \abs_diff[11][3]_i_4_n_0 ;
  wire \abs_diff[12][0]_i_1_n_0 ;
  wire \abs_diff[12][1]_i_1_n_0 ;
  wire \abs_diff[12][2]_i_1_n_0 ;
  wire \abs_diff[12][3]_i_1_n_0 ;
  wire \abs_diff[12][3]_i_2_n_0 ;
  wire \abs_diff[12][3]_i_3_n_0 ;
  wire \abs_diff[12][3]_i_4_n_0 ;
  wire \abs_diff[13][0]_i_1_n_0 ;
  wire \abs_diff[13][1]_i_1_n_0 ;
  wire \abs_diff[13][2]_i_1_n_0 ;
  wire \abs_diff[13][3]_i_1_n_0 ;
  wire \abs_diff[13][3]_i_2_n_0 ;
  wire \abs_diff[13][3]_i_3_n_0 ;
  wire \abs_diff[13][3]_i_4_n_0 ;
  wire \abs_diff[14][0]_i_1_n_0 ;
  wire \abs_diff[14][1]_i_1_n_0 ;
  wire \abs_diff[14][2]_i_1_n_0 ;
  wire \abs_diff[14][3]_i_1_n_0 ;
  wire \abs_diff[14][3]_i_2_n_0 ;
  wire \abs_diff[14][3]_i_3_n_0 ;
  wire \abs_diff[14][3]_i_4_n_0 ;
  wire \abs_diff[15][0]_i_1_n_0 ;
  wire \abs_diff[15][1]_i_1_n_0 ;
  wire \abs_diff[15][2]_i_1_n_0 ;
  wire \abs_diff[15][3]_i_1_n_0 ;
  wire \abs_diff[15][3]_i_2_n_0 ;
  wire \abs_diff[15][3]_i_3_n_0 ;
  wire \abs_diff[15][3]_i_4_n_0 ;
  wire \abs_diff[1][0]_i_1_n_0 ;
  wire \abs_diff[1][1]_i_1_n_0 ;
  wire \abs_diff[1][2]_i_1_n_0 ;
  wire \abs_diff[1][3]_i_1_n_0 ;
  wire \abs_diff[1][3]_i_2_n_0 ;
  wire \abs_diff[1][3]_i_3_n_0 ;
  wire \abs_diff[1][3]_i_4_n_0 ;
  wire \abs_diff[2][0]_i_1_n_0 ;
  wire \abs_diff[2][1]_i_1_n_0 ;
  wire \abs_diff[2][2]_i_1_n_0 ;
  wire \abs_diff[2][3]_i_1_n_0 ;
  wire \abs_diff[2][3]_i_2_n_0 ;
  wire \abs_diff[2][3]_i_3_n_0 ;
  wire \abs_diff[2][3]_i_4_n_0 ;
  wire \abs_diff[3][0]_i_1_n_0 ;
  wire \abs_diff[3][1]_i_1_n_0 ;
  wire \abs_diff[3][2]_i_1_n_0 ;
  wire \abs_diff[3][3]_i_1_n_0 ;
  wire \abs_diff[3][3]_i_2_n_0 ;
  wire \abs_diff[3][3]_i_3_n_0 ;
  wire \abs_diff[3][3]_i_4_n_0 ;
  wire \abs_diff[4][0]_i_1_n_0 ;
  wire \abs_diff[4][1]_i_1_n_0 ;
  wire \abs_diff[4][2]_i_1_n_0 ;
  wire \abs_diff[4][3]_i_1_n_0 ;
  wire \abs_diff[4][3]_i_2_n_0 ;
  wire \abs_diff[4][3]_i_3_n_0 ;
  wire \abs_diff[4][3]_i_4_n_0 ;
  wire \abs_diff[5][0]_i_1_n_0 ;
  wire \abs_diff[5][1]_i_1_n_0 ;
  wire \abs_diff[5][2]_i_1_n_0 ;
  wire \abs_diff[5][3]_i_1_n_0 ;
  wire \abs_diff[5][3]_i_2_n_0 ;
  wire \abs_diff[5][3]_i_3_n_0 ;
  wire \abs_diff[5][3]_i_4_n_0 ;
  wire \abs_diff[6][0]_i_1_n_0 ;
  wire \abs_diff[6][1]_i_1_n_0 ;
  wire \abs_diff[6][2]_i_1_n_0 ;
  wire \abs_diff[6][3]_i_1_n_0 ;
  wire \abs_diff[6][3]_i_2_n_0 ;
  wire \abs_diff[6][3]_i_3_n_0 ;
  wire \abs_diff[6][3]_i_4_n_0 ;
  wire \abs_diff[7][0]_i_1_n_0 ;
  wire \abs_diff[7][1]_i_1_n_0 ;
  wire \abs_diff[7][2]_i_1_n_0 ;
  wire \abs_diff[7][3]_i_1_n_0 ;
  wire \abs_diff[7][3]_i_2_n_0 ;
  wire \abs_diff[7][3]_i_3_n_0 ;
  wire \abs_diff[7][3]_i_4_n_0 ;
  wire \abs_diff[8][0]_i_1_n_0 ;
  wire \abs_diff[8][1]_i_1_n_0 ;
  wire \abs_diff[8][2]_i_1_n_0 ;
  wire \abs_diff[8][3]_i_1_n_0 ;
  wire \abs_diff[8][3]_i_2_n_0 ;
  wire \abs_diff[8][3]_i_3_n_0 ;
  wire \abs_diff[8][3]_i_4_n_0 ;
  wire \abs_diff[9][0]_i_1_n_0 ;
  wire \abs_diff[9][1]_i_1_n_0 ;
  wire \abs_diff[9][2]_i_1_n_0 ;
  wire \abs_diff[9][3]_i_1_n_0 ;
  wire \abs_diff[9][3]_i_2_n_0 ;
  wire \abs_diff[9][3]_i_3_n_0 ;
  wire \abs_diff[9][3]_i_4_n_0 ;
  wire [3:0]\abs_diff_reg[0]_46 ;
  wire [3:0]\abs_diff_reg[10]_44 ;
  wire [3:0]\abs_diff_reg[11]_42 ;
  wire [3:0]\abs_diff_reg[12]_45 ;
  wire [3:0]\abs_diff_reg[13]_40 ;
  wire [3:0]\abs_diff_reg[14]_41 ;
  wire [3:0]\abs_diff_reg[15]_39 ;
  wire [3:0]\abs_diff_reg[1]_36 ;
  wire [3:0]\abs_diff_reg[2]_37 ;
  wire [3:0]\abs_diff_reg[3]_35 ;
  wire [3:0]\abs_diff_reg[4]_38 ;
  wire [3:0]\abs_diff_reg[5]_33 ;
  wire [3:0]\abs_diff_reg[6]_34 ;
  wire [3:0]\abs_diff_reg[7]_32 ;
  wire [3:0]\abs_diff_reg[8]_47 ;
  wire [3:0]\abs_diff_reg[9]_43 ;
  wire \adder[14]__0_carry__0_i_1_n_0 ;
  wire \adder[14]__0_carry__0_i_2_n_0 ;
  wire \adder[14]__0_carry__0_n_2 ;
  wire \adder[14]__0_carry__0_n_7 ;
  wire \adder[14]__0_carry_i_1_n_0 ;
  wire \adder[14]__0_carry_i_2_n_0 ;
  wire \adder[14]__0_carry_i_3_n_0 ;
  wire \adder[14]__0_carry_i_4_n_0 ;
  wire \adder[14]__0_carry_i_5_n_0 ;
  wire \adder[14]__0_carry_i_6_n_0 ;
  wire \adder[14]__0_carry_i_7_n_0 ;
  wire \adder[14]__0_carry_n_0 ;
  wire \adder[14]__0_carry_n_1 ;
  wire \adder[14]__0_carry_n_2 ;
  wire \adder[14]__0_carry_n_3 ;
  wire \adder[14]__0_carry_n_4 ;
  wire \adder[14]__0_carry_n_5 ;
  wire \adder[14]__0_carry_n_6 ;
  wire \adder[14]__0_carry_n_7 ;
  wire \adder[14]__14_carry__0_i_1_n_0 ;
  wire \adder[14]__14_carry__0_i_2_n_0 ;
  wire \adder[14]__14_carry__0_n_2 ;
  wire \adder[14]__14_carry__0_n_7 ;
  wire \adder[14]__14_carry_i_1_n_0 ;
  wire \adder[14]__14_carry_i_2_n_0 ;
  wire \adder[14]__14_carry_i_3_n_0 ;
  wire \adder[14]__14_carry_i_4_n_0 ;
  wire \adder[14]__14_carry_i_5_n_0 ;
  wire \adder[14]__14_carry_i_6_n_0 ;
  wire \adder[14]__14_carry_i_7_n_0 ;
  wire \adder[14]__14_carry_n_0 ;
  wire \adder[14]__14_carry_n_1 ;
  wire \adder[14]__14_carry_n_2 ;
  wire \adder[14]__14_carry_n_3 ;
  wire \adder[14]__14_carry_n_4 ;
  wire \adder[14]__14_carry_n_5 ;
  wire \adder[14]__14_carry_n_6 ;
  wire \adder[14]__14_carry_n_7 ;
  wire \adder[14]__28_carry__0_i_1_n_0 ;
  wire \adder[14]__28_carry__0_i_2_n_0 ;
  wire \adder[14]__28_carry__0_n_2 ;
  wire \adder[14]__28_carry__0_n_7 ;
  wire \adder[14]__28_carry_i_1_n_0 ;
  wire \adder[14]__28_carry_i_2_n_0 ;
  wire \adder[14]__28_carry_i_3_n_0 ;
  wire \adder[14]__28_carry_i_4_n_0 ;
  wire \adder[14]__28_carry_i_5_n_0 ;
  wire \adder[14]__28_carry_i_6_n_0 ;
  wire \adder[14]__28_carry_i_7_n_0 ;
  wire \adder[14]__28_carry_n_0 ;
  wire \adder[14]__28_carry_n_1 ;
  wire \adder[14]__28_carry_n_2 ;
  wire \adder[14]__28_carry_n_3 ;
  wire \adder[14]__28_carry_n_4 ;
  wire \adder[14]__28_carry_n_5 ;
  wire \adder[14]__28_carry_n_6 ;
  wire \adder[14]__28_carry_n_7 ;
  wire \adder[14]__42_carry__0_i_1_n_0 ;
  wire \adder[14]__42_carry__0_i_2_n_0 ;
  wire \adder[14]__42_carry__0_n_2 ;
  wire \adder[14]__42_carry__0_n_7 ;
  wire \adder[14]__42_carry_i_1_n_0 ;
  wire \adder[14]__42_carry_i_2_n_0 ;
  wire \adder[14]__42_carry_i_3_n_0 ;
  wire \adder[14]__42_carry_i_4_n_0 ;
  wire \adder[14]__42_carry_i_5_n_0 ;
  wire \adder[14]__42_carry_i_6_n_0 ;
  wire \adder[14]__42_carry_i_7_n_0 ;
  wire \adder[14]__42_carry_n_0 ;
  wire \adder[14]__42_carry_n_1 ;
  wire \adder[14]__42_carry_n_2 ;
  wire \adder[14]__42_carry_n_3 ;
  wire \adder[14]__42_carry_n_4 ;
  wire \adder[14]__42_carry_n_5 ;
  wire \adder[14]__42_carry_n_6 ;
  wire \adder[14]__42_carry_n_7 ;
  wire \adder[14]__56_carry__0_i_1_n_0 ;
  wire \adder[14]__56_carry__0_i_2_n_0 ;
  wire \adder[14]__56_carry__0_n_2 ;
  wire \adder[14]__56_carry__0_n_7 ;
  wire \adder[14]__56_carry_i_1_n_0 ;
  wire \adder[14]__56_carry_i_2_n_0 ;
  wire \adder[14]__56_carry_i_3_n_0 ;
  wire \adder[14]__56_carry_i_4_n_0 ;
  wire \adder[14]__56_carry_i_5_n_0 ;
  wire \adder[14]__56_carry_i_6_n_0 ;
  wire \adder[14]__56_carry_i_7_n_0 ;
  wire \adder[14]__56_carry_n_0 ;
  wire \adder[14]__56_carry_n_1 ;
  wire \adder[14]__56_carry_n_2 ;
  wire \adder[14]__56_carry_n_3 ;
  wire \adder[14]__56_carry_n_4 ;
  wire \adder[14]__56_carry_n_5 ;
  wire \adder[14]__56_carry_n_6 ;
  wire \adder[14]__56_carry_n_7 ;
  wire \adder[14]__70_carry__0_i_1_n_0 ;
  wire \adder[14]__70_carry__0_i_2_n_0 ;
  wire \adder[14]__70_carry__0_i_3_n_0 ;
  wire \adder[14]__70_carry__0_i_4_n_0 ;
  wire \adder[14]__70_carry__0_i_5_n_0 ;
  wire \adder[14]__70_carry__0_i_6_n_0 ;
  wire \adder[14]__70_carry__0_n_0 ;
  wire \adder[14]__70_carry__0_n_2 ;
  wire \adder[14]__70_carry__0_n_3 ;
  wire \adder[14]__70_carry__0_n_5 ;
  wire \adder[14]__70_carry__0_n_6 ;
  wire \adder[14]__70_carry__0_n_7 ;
  wire \adder[14]__70_carry_i_1_n_0 ;
  wire \adder[14]__70_carry_i_2_n_0 ;
  wire \adder[14]__70_carry_i_3_n_0 ;
  wire \adder[14]__70_carry_i_4_n_0 ;
  wire \adder[14]__70_carry_i_5_n_0 ;
  wire \adder[14]__70_carry_i_6_n_0 ;
  wire \adder[14]__70_carry_i_7_n_0 ;
  wire \adder[14]__70_carry_n_0 ;
  wire \adder[14]__70_carry_n_1 ;
  wire \adder[14]__70_carry_n_2 ;
  wire \adder[14]__70_carry_n_3 ;
  wire \adder[14]__70_carry_n_4 ;
  wire \adder[14]__70_carry_n_5 ;
  wire \adder[14]__70_carry_n_6 ;
  wire \adder[14]__70_carry_n_7 ;
  wire \adder[14]__92_carry__0_i_10_n_0 ;
  wire \adder[14]__92_carry__0_i_11_n_0 ;
  wire \adder[14]__92_carry__0_i_12_n_0 ;
  wire \adder[14]__92_carry__0_i_13_n_0 ;
  wire \adder[14]__92_carry__0_i_14_n_0 ;
  wire \adder[14]__92_carry__0_i_15_n_0 ;
  wire \adder[14]__92_carry__0_i_1_n_0 ;
  wire \adder[14]__92_carry__0_i_2_n_0 ;
  wire \adder[14]__92_carry__0_i_3_n_0 ;
  wire \adder[14]__92_carry__0_i_4_n_0 ;
  wire \adder[14]__92_carry__0_i_5_n_0 ;
  wire \adder[14]__92_carry__0_i_6_n_0 ;
  wire \adder[14]__92_carry__0_i_7_n_0 ;
  wire \adder[14]__92_carry__0_i_8_n_0 ;
  wire \adder[14]__92_carry__0_i_9_n_0 ;
  wire \adder[14]__92_carry__0_n_0 ;
  wire \adder[14]__92_carry__0_n_1 ;
  wire \adder[14]__92_carry__0_n_2 ;
  wire \adder[14]__92_carry__0_n_3 ;
  wire \adder[14]__92_carry__0_n_4 ;
  wire \adder[14]__92_carry__0_n_5 ;
  wire \adder[14]__92_carry__0_n_6 ;
  wire \adder[14]__92_carry__0_n_7 ;
  wire \adder[14]__92_carry_i_10_n_0 ;
  wire \adder[14]__92_carry_i_1_n_0 ;
  wire \adder[14]__92_carry_i_2_n_0 ;
  wire \adder[14]__92_carry_i_3_n_0 ;
  wire \adder[14]__92_carry_i_4_n_0 ;
  wire \adder[14]__92_carry_i_5_n_0 ;
  wire \adder[14]__92_carry_i_6_n_0 ;
  wire \adder[14]__92_carry_i_7_n_0 ;
  wire \adder[14]__92_carry_i_8_n_0 ;
  wire \adder[14]__92_carry_i_9_n_0 ;
  wire \adder[14]__92_carry_n_0 ;
  wire \adder[14]__92_carry_n_1 ;
  wire \adder[14]__92_carry_n_2 ;
  wire \adder[14]__92_carry_n_3 ;
  wire \adder[14]__92_carry_n_4 ;
  wire \adder[14]__92_carry_n_5 ;
  wire \adder[14]__92_carry_n_6 ;
  wire \adder[14]__92_carry_n_7 ;
  wire [5:2]axi_araddr;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_reg_0;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[0]_i_5_n_0 ;
  wire \axi_rdata[0]_i_6_n_0 ;
  wire \axi_rdata[0]_i_7_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[10]_i_5_n_0 ;
  wire \axi_rdata[10]_i_6_n_0 ;
  wire \axi_rdata[10]_i_7_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[11]_i_5_n_0 ;
  wire \axi_rdata[11]_i_6_n_0 ;
  wire \axi_rdata[11]_i_7_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[12]_i_5_n_0 ;
  wire \axi_rdata[12]_i_6_n_0 ;
  wire \axi_rdata[12]_i_7_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[13]_i_5_n_0 ;
  wire \axi_rdata[13]_i_6_n_0 ;
  wire \axi_rdata[13]_i_7_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[14]_i_5_n_0 ;
  wire \axi_rdata[14]_i_6_n_0 ;
  wire \axi_rdata[14]_i_7_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[15]_i_5_n_0 ;
  wire \axi_rdata[15]_i_6_n_0 ;
  wire \axi_rdata[15]_i_7_n_0 ;
  wire \axi_rdata[16]_i_4_n_0 ;
  wire \axi_rdata[16]_i_5_n_0 ;
  wire \axi_rdata[16]_i_6_n_0 ;
  wire \axi_rdata[16]_i_7_n_0 ;
  wire \axi_rdata[17]_i_4_n_0 ;
  wire \axi_rdata[17]_i_5_n_0 ;
  wire \axi_rdata[17]_i_6_n_0 ;
  wire \axi_rdata[17]_i_7_n_0 ;
  wire \axi_rdata[18]_i_4_n_0 ;
  wire \axi_rdata[18]_i_5_n_0 ;
  wire \axi_rdata[18]_i_6_n_0 ;
  wire \axi_rdata[18]_i_7_n_0 ;
  wire \axi_rdata[19]_i_4_n_0 ;
  wire \axi_rdata[19]_i_5_n_0 ;
  wire \axi_rdata[19]_i_6_n_0 ;
  wire \axi_rdata[19]_i_7_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[1]_i_5_n_0 ;
  wire \axi_rdata[1]_i_6_n_0 ;
  wire \axi_rdata[1]_i_7_n_0 ;
  wire \axi_rdata[20]_i_4_n_0 ;
  wire \axi_rdata[20]_i_5_n_0 ;
  wire \axi_rdata[20]_i_6_n_0 ;
  wire \axi_rdata[20]_i_7_n_0 ;
  wire \axi_rdata[21]_i_4_n_0 ;
  wire \axi_rdata[21]_i_5_n_0 ;
  wire \axi_rdata[21]_i_6_n_0 ;
  wire \axi_rdata[21]_i_7_n_0 ;
  wire \axi_rdata[22]_i_4_n_0 ;
  wire \axi_rdata[22]_i_5_n_0 ;
  wire \axi_rdata[22]_i_6_n_0 ;
  wire \axi_rdata[22]_i_7_n_0 ;
  wire \axi_rdata[23]_i_4_n_0 ;
  wire \axi_rdata[23]_i_5_n_0 ;
  wire \axi_rdata[23]_i_6_n_0 ;
  wire \axi_rdata[23]_i_7_n_0 ;
  wire \axi_rdata[24]_i_4_n_0 ;
  wire \axi_rdata[24]_i_5_n_0 ;
  wire \axi_rdata[24]_i_6_n_0 ;
  wire \axi_rdata[24]_i_7_n_0 ;
  wire \axi_rdata[25]_i_4_n_0 ;
  wire \axi_rdata[25]_i_5_n_0 ;
  wire \axi_rdata[25]_i_6_n_0 ;
  wire \axi_rdata[25]_i_7_n_0 ;
  wire \axi_rdata[26]_i_4_n_0 ;
  wire \axi_rdata[26]_i_5_n_0 ;
  wire \axi_rdata[26]_i_6_n_0 ;
  wire \axi_rdata[26]_i_7_n_0 ;
  wire \axi_rdata[27]_i_4_n_0 ;
  wire \axi_rdata[27]_i_5_n_0 ;
  wire \axi_rdata[27]_i_6_n_0 ;
  wire \axi_rdata[27]_i_7_n_0 ;
  wire \axi_rdata[28]_i_4_n_0 ;
  wire \axi_rdata[28]_i_5_n_0 ;
  wire \axi_rdata[28]_i_6_n_0 ;
  wire \axi_rdata[28]_i_7_n_0 ;
  wire \axi_rdata[29]_i_4_n_0 ;
  wire \axi_rdata[29]_i_5_n_0 ;
  wire \axi_rdata[29]_i_6_n_0 ;
  wire \axi_rdata[29]_i_7_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[2]_i_5_n_0 ;
  wire \axi_rdata[2]_i_6_n_0 ;
  wire \axi_rdata[2]_i_7_n_0 ;
  wire \axi_rdata[30]_i_4_n_0 ;
  wire \axi_rdata[30]_i_5_n_0 ;
  wire \axi_rdata[30]_i_6_n_0 ;
  wire \axi_rdata[30]_i_7_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[31]_i_6_n_0 ;
  wire \axi_rdata[31]_i_7_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[3]_i_5_n_0 ;
  wire \axi_rdata[3]_i_6_n_0 ;
  wire \axi_rdata[3]_i_7_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[4]_i_5_n_0 ;
  wire \axi_rdata[4]_i_6_n_0 ;
  wire \axi_rdata[4]_i_7_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[5]_i_5_n_0 ;
  wire \axi_rdata[5]_i_6_n_0 ;
  wire \axi_rdata[5]_i_7_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[6]_i_5_n_0 ;
  wire \axi_rdata[6]_i_6_n_0 ;
  wire \axi_rdata[6]_i_7_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[7]_i_5_n_0 ;
  wire \axi_rdata[7]_i_6_n_0 ;
  wire \axi_rdata[7]_i_7_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[8]_i_5_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire \axi_rdata[9]_i_5_n_0 ;
  wire \axi_rdata[9]_i_6_n_0 ;
  wire \axi_rdata[9]_i_7_n_0 ;
  wire \axi_rdata_reg[0]_i_2_n_0 ;
  wire \axi_rdata_reg[0]_i_3_n_0 ;
  wire \axi_rdata_reg[10]_i_2_n_0 ;
  wire \axi_rdata_reg[10]_i_3_n_0 ;
  wire \axi_rdata_reg[11]_i_2_n_0 ;
  wire \axi_rdata_reg[11]_i_3_n_0 ;
  wire \axi_rdata_reg[12]_i_2_n_0 ;
  wire \axi_rdata_reg[12]_i_3_n_0 ;
  wire \axi_rdata_reg[13]_i_2_n_0 ;
  wire \axi_rdata_reg[13]_i_3_n_0 ;
  wire \axi_rdata_reg[14]_i_2_n_0 ;
  wire \axi_rdata_reg[14]_i_3_n_0 ;
  wire \axi_rdata_reg[15]_i_2_n_0 ;
  wire \axi_rdata_reg[15]_i_3_n_0 ;
  wire \axi_rdata_reg[16]_i_2_n_0 ;
  wire \axi_rdata_reg[16]_i_3_n_0 ;
  wire \axi_rdata_reg[17]_i_2_n_0 ;
  wire \axi_rdata_reg[17]_i_3_n_0 ;
  wire \axi_rdata_reg[18]_i_2_n_0 ;
  wire \axi_rdata_reg[18]_i_3_n_0 ;
  wire \axi_rdata_reg[19]_i_2_n_0 ;
  wire \axi_rdata_reg[19]_i_3_n_0 ;
  wire \axi_rdata_reg[1]_i_2_n_0 ;
  wire \axi_rdata_reg[1]_i_3_n_0 ;
  wire \axi_rdata_reg[20]_i_2_n_0 ;
  wire \axi_rdata_reg[20]_i_3_n_0 ;
  wire \axi_rdata_reg[21]_i_2_n_0 ;
  wire \axi_rdata_reg[21]_i_3_n_0 ;
  wire \axi_rdata_reg[22]_i_2_n_0 ;
  wire \axi_rdata_reg[22]_i_3_n_0 ;
  wire \axi_rdata_reg[23]_i_2_n_0 ;
  wire \axi_rdata_reg[23]_i_3_n_0 ;
  wire \axi_rdata_reg[24]_i_2_n_0 ;
  wire \axi_rdata_reg[24]_i_3_n_0 ;
  wire \axi_rdata_reg[25]_i_2_n_0 ;
  wire \axi_rdata_reg[25]_i_3_n_0 ;
  wire \axi_rdata_reg[26]_i_2_n_0 ;
  wire \axi_rdata_reg[26]_i_3_n_0 ;
  wire \axi_rdata_reg[27]_i_2_n_0 ;
  wire \axi_rdata_reg[27]_i_3_n_0 ;
  wire \axi_rdata_reg[28]_i_2_n_0 ;
  wire \axi_rdata_reg[28]_i_3_n_0 ;
  wire \axi_rdata_reg[29]_i_2_n_0 ;
  wire \axi_rdata_reg[29]_i_3_n_0 ;
  wire \axi_rdata_reg[2]_i_2_n_0 ;
  wire \axi_rdata_reg[2]_i_3_n_0 ;
  wire \axi_rdata_reg[30]_i_2_n_0 ;
  wire \axi_rdata_reg[30]_i_3_n_0 ;
  wire \axi_rdata_reg[31]_i_2_n_0 ;
  wire \axi_rdata_reg[31]_i_3_n_0 ;
  wire \axi_rdata_reg[3]_i_2_n_0 ;
  wire \axi_rdata_reg[3]_i_3_n_0 ;
  wire \axi_rdata_reg[4]_i_2_n_0 ;
  wire \axi_rdata_reg[4]_i_3_n_0 ;
  wire \axi_rdata_reg[5]_i_2_n_0 ;
  wire \axi_rdata_reg[5]_i_3_n_0 ;
  wire \axi_rdata_reg[6]_i_2_n_0 ;
  wire \axi_rdata_reg[6]_i_3_n_0 ;
  wire \axi_rdata_reg[7]_i_2_n_0 ;
  wire \axi_rdata_reg[7]_i_3_n_0 ;
  wire \axi_rdata_reg[9]_i_2_n_0 ;
  wire \axi_rdata_reg[9]_i_3_n_0 ;
  wire axi_wready0;
  wire [3:0]\curr[0]_19 ;
  wire [3:0]\curr[10]_25 ;
  wire [3:0]\curr[11]_24 ;
  wire [3:0]\curr[12]_31 ;
  wire [3:0]\curr[13]_30 ;
  wire [3:0]\curr[14]_29 ;
  wire [3:0]\curr[15]_28 ;
  wire [3:0]\curr[1]_18 ;
  wire [3:0]\curr[2]_17 ;
  wire [3:0]\curr[3]_16 ;
  wire [3:0]\curr[4]_23 ;
  wire [3:0]\curr[5]_22 ;
  wire [3:0]\curr[6]_21 ;
  wire [3:0]\curr[7]_20 ;
  wire [3:0]\curr[8]_27 ;
  wire [3:0]\curr[9]_26 ;
  wire [3:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]p_2_in;
  wire [3:0]\prev[0]_3 ;
  wire [3:0]\prev[10]_9 ;
  wire [3:0]\prev[11]_8 ;
  wire [3:0]\prev[12]_15 ;
  wire [3:0]\prev[13]_14 ;
  wire [3:0]\prev[14]_13 ;
  wire [3:0]\prev[15]_12 ;
  wire [3:0]\prev[1]_2 ;
  wire [3:0]\prev[2]_1 ;
  wire [3:0]\prev[3]_0 ;
  wire [3:0]\prev[4]_7 ;
  wire [3:0]\prev[5]_6 ;
  wire [3:0]\prev[6]_5 ;
  wire [3:0]\prev[7]_4 ;
  wire [3:0]\prev[8]_11 ;
  wire [3:0]\prev[9]_10 ;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire [31:0]slv_reg10;
  wire \slv_reg10[15]_i_1_n_0 ;
  wire \slv_reg10[23]_i_1_n_0 ;
  wire \slv_reg10[31]_i_1_n_0 ;
  wire \slv_reg10[7]_i_1_n_0 ;
  wire [31:0]slv_reg11;
  wire \slv_reg11[15]_i_1_n_0 ;
  wire \slv_reg11[23]_i_1_n_0 ;
  wire \slv_reg11[31]_i_1_n_0 ;
  wire \slv_reg11[7]_i_1_n_0 ;
  wire [31:0]slv_reg12;
  wire \slv_reg12[15]_i_1_n_0 ;
  wire \slv_reg12[23]_i_1_n_0 ;
  wire \slv_reg12[31]_i_1_n_0 ;
  wire \slv_reg12[7]_i_1_n_0 ;
  wire [31:0]slv_reg13;
  wire \slv_reg13[15]_i_1_n_0 ;
  wire \slv_reg13[23]_i_1_n_0 ;
  wire \slv_reg13[31]_i_1_n_0 ;
  wire \slv_reg13[7]_i_1_n_0 ;
  wire [31:0]slv_reg14;
  wire \slv_reg14[15]_i_1_n_0 ;
  wire \slv_reg14[23]_i_1_n_0 ;
  wire \slv_reg14[31]_i_1_n_0 ;
  wire \slv_reg14[7]_i_1_n_0 ;
  wire [31:0]slv_reg15;
  wire \slv_reg15[15]_i_1_n_0 ;
  wire \slv_reg15[23]_i_1_n_0 ;
  wire \slv_reg15[31]_i_1_n_0 ;
  wire \slv_reg15[7]_i_1_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[16] ;
  wire \slv_reg2_reg_n_0_[17] ;
  wire \slv_reg2_reg_n_0_[18] ;
  wire \slv_reg2_reg_n_0_[19] ;
  wire \slv_reg2_reg_n_0_[20] ;
  wire \slv_reg2_reg_n_0_[21] ;
  wire \slv_reg2_reg_n_0_[22] ;
  wire \slv_reg2_reg_n_0_[23] ;
  wire \slv_reg2_reg_n_0_[24] ;
  wire \slv_reg2_reg_n_0_[25] ;
  wire \slv_reg2_reg_n_0_[26] ;
  wire \slv_reg2_reg_n_0_[27] ;
  wire \slv_reg2_reg_n_0_[28] ;
  wire \slv_reg2_reg_n_0_[29] ;
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire \slv_reg3_reg_n_0_[16] ;
  wire \slv_reg3_reg_n_0_[17] ;
  wire \slv_reg3_reg_n_0_[18] ;
  wire \slv_reg3_reg_n_0_[19] ;
  wire \slv_reg3_reg_n_0_[20] ;
  wire \slv_reg3_reg_n_0_[21] ;
  wire \slv_reg3_reg_n_0_[22] ;
  wire \slv_reg3_reg_n_0_[23] ;
  wire \slv_reg3_reg_n_0_[24] ;
  wire \slv_reg3_reg_n_0_[25] ;
  wire \slv_reg3_reg_n_0_[26] ;
  wire \slv_reg3_reg_n_0_[27] ;
  wire \slv_reg3_reg_n_0_[28] ;
  wire \slv_reg3_reg_n_0_[29] ;
  wire \slv_reg3_reg_n_0_[30] ;
  wire \slv_reg3_reg_n_0_[31] ;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire \slv_reg4_reg_n_0_[16] ;
  wire \slv_reg4_reg_n_0_[17] ;
  wire \slv_reg4_reg_n_0_[18] ;
  wire \slv_reg4_reg_n_0_[19] ;
  wire \slv_reg4_reg_n_0_[20] ;
  wire \slv_reg4_reg_n_0_[21] ;
  wire \slv_reg4_reg_n_0_[22] ;
  wire \slv_reg4_reg_n_0_[23] ;
  wire \slv_reg4_reg_n_0_[24] ;
  wire \slv_reg4_reg_n_0_[25] ;
  wire \slv_reg4_reg_n_0_[26] ;
  wire \slv_reg4_reg_n_0_[27] ;
  wire \slv_reg4_reg_n_0_[28] ;
  wire \slv_reg4_reg_n_0_[29] ;
  wire \slv_reg4_reg_n_0_[30] ;
  wire \slv_reg4_reg_n_0_[31] ;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire \slv_reg5_reg_n_0_[16] ;
  wire \slv_reg5_reg_n_0_[17] ;
  wire \slv_reg5_reg_n_0_[18] ;
  wire \slv_reg5_reg_n_0_[19] ;
  wire \slv_reg5_reg_n_0_[20] ;
  wire \slv_reg5_reg_n_0_[21] ;
  wire \slv_reg5_reg_n_0_[22] ;
  wire \slv_reg5_reg_n_0_[23] ;
  wire \slv_reg5_reg_n_0_[24] ;
  wire \slv_reg5_reg_n_0_[25] ;
  wire \slv_reg5_reg_n_0_[26] ;
  wire \slv_reg5_reg_n_0_[27] ;
  wire \slv_reg5_reg_n_0_[28] ;
  wire \slv_reg5_reg_n_0_[29] ;
  wire \slv_reg5_reg_n_0_[30] ;
  wire \slv_reg5_reg_n_0_[31] ;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire \slv_reg6_reg_n_0_[16] ;
  wire \slv_reg6_reg_n_0_[17] ;
  wire \slv_reg6_reg_n_0_[18] ;
  wire \slv_reg6_reg_n_0_[19] ;
  wire \slv_reg6_reg_n_0_[20] ;
  wire \slv_reg6_reg_n_0_[21] ;
  wire \slv_reg6_reg_n_0_[22] ;
  wire \slv_reg6_reg_n_0_[23] ;
  wire \slv_reg6_reg_n_0_[24] ;
  wire \slv_reg6_reg_n_0_[25] ;
  wire \slv_reg6_reg_n_0_[26] ;
  wire \slv_reg6_reg_n_0_[27] ;
  wire \slv_reg6_reg_n_0_[28] ;
  wire \slv_reg6_reg_n_0_[29] ;
  wire \slv_reg6_reg_n_0_[30] ;
  wire \slv_reg6_reg_n_0_[31] ;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire \slv_reg7_reg_n_0_[16] ;
  wire \slv_reg7_reg_n_0_[17] ;
  wire \slv_reg7_reg_n_0_[18] ;
  wire \slv_reg7_reg_n_0_[19] ;
  wire \slv_reg7_reg_n_0_[20] ;
  wire \slv_reg7_reg_n_0_[21] ;
  wire \slv_reg7_reg_n_0_[22] ;
  wire \slv_reg7_reg_n_0_[23] ;
  wire \slv_reg7_reg_n_0_[24] ;
  wire \slv_reg7_reg_n_0_[25] ;
  wire \slv_reg7_reg_n_0_[26] ;
  wire \slv_reg7_reg_n_0_[27] ;
  wire \slv_reg7_reg_n_0_[28] ;
  wire \slv_reg7_reg_n_0_[29] ;
  wire \slv_reg7_reg_n_0_[30] ;
  wire \slv_reg7_reg_n_0_[31] ;
  wire \slv_reg8[15]_i_1_n_0 ;
  wire \slv_reg8[23]_i_1_n_0 ;
  wire \slv_reg8[31]_i_1_n_0 ;
  wire \slv_reg8[31]_i_3_n_0 ;
  wire \slv_reg8[31]_i_4_n_0 ;
  wire \slv_reg8[31]_i_5_n_0 ;
  wire \slv_reg8[31]_i_6_n_0 ;
  wire \slv_reg8[31]_i_7_n_0 ;
  wire \slv_reg8[7]_i_1_n_0 ;
  wire \slv_reg8_reg_n_0_[0] ;
  wire \slv_reg8_reg_n_0_[10] ;
  wire \slv_reg8_reg_n_0_[11] ;
  wire \slv_reg8_reg_n_0_[12] ;
  wire \slv_reg8_reg_n_0_[13] ;
  wire \slv_reg8_reg_n_0_[14] ;
  wire \slv_reg8_reg_n_0_[15] ;
  wire \slv_reg8_reg_n_0_[16] ;
  wire \slv_reg8_reg_n_0_[17] ;
  wire \slv_reg8_reg_n_0_[18] ;
  wire \slv_reg8_reg_n_0_[19] ;
  wire \slv_reg8_reg_n_0_[1] ;
  wire \slv_reg8_reg_n_0_[20] ;
  wire \slv_reg8_reg_n_0_[21] ;
  wire \slv_reg8_reg_n_0_[22] ;
  wire \slv_reg8_reg_n_0_[23] ;
  wire \slv_reg8_reg_n_0_[24] ;
  wire \slv_reg8_reg_n_0_[25] ;
  wire \slv_reg8_reg_n_0_[26] ;
  wire \slv_reg8_reg_n_0_[27] ;
  wire \slv_reg8_reg_n_0_[28] ;
  wire \slv_reg8_reg_n_0_[29] ;
  wire \slv_reg8_reg_n_0_[2] ;
  wire \slv_reg8_reg_n_0_[30] ;
  wire \slv_reg8_reg_n_0_[31] ;
  wire \slv_reg8_reg_n_0_[3] ;
  wire \slv_reg8_reg_n_0_[4] ;
  wire \slv_reg8_reg_n_0_[5] ;
  wire \slv_reg8_reg_n_0_[6] ;
  wire \slv_reg8_reg_n_0_[7] ;
  wire \slv_reg8_reg_n_0_[8] ;
  wire \slv_reg8_reg_n_0_[9] ;
  wire [31:0]slv_reg9;
  wire \slv_reg9[0]_i_1_n_0 ;
  wire \slv_reg9[10]_i_1_n_0 ;
  wire \slv_reg9[11]_i_1_n_0 ;
  wire \slv_reg9[12]_i_10_n_0 ;
  wire \slv_reg9[12]_i_11_n_0 ;
  wire \slv_reg9[12]_i_12_n_0 ;
  wire \slv_reg9[12]_i_1_n_0 ;
  wire \slv_reg9[12]_i_2_n_0 ;
  wire \slv_reg9[12]_i_3_n_0 ;
  wire \slv_reg9[12]_i_4_n_0 ;
  wire \slv_reg9[12]_i_5_n_0 ;
  wire \slv_reg9[12]_i_6_n_0 ;
  wire \slv_reg9[12]_i_7_n_0 ;
  wire \slv_reg9[12]_i_8_n_0 ;
  wire \slv_reg9[12]_i_9_n_0 ;
  wire \slv_reg9[13]_i_1_n_0 ;
  wire \slv_reg9[14]_i_1_n_0 ;
  wire \slv_reg9[15]_i_1_n_0 ;
  wire \slv_reg9[1]_i_1_n_0 ;
  wire \slv_reg9[23]_i_1_n_0 ;
  wire \slv_reg9[23]_i_2_n_0 ;
  wire \slv_reg9[2]_i_1_n_0 ;
  wire \slv_reg9[31]_i_10_n_0 ;
  wire \slv_reg9[31]_i_11_n_0 ;
  wire \slv_reg9[31]_i_1_n_0 ;
  wire \slv_reg9[31]_i_2_n_0 ;
  wire \slv_reg9[31]_i_3_n_0 ;
  wire \slv_reg9[31]_i_4_n_0 ;
  wire \slv_reg9[31]_i_5_n_0 ;
  wire \slv_reg9[31]_i_6_n_0 ;
  wire \slv_reg9[31]_i_7_n_0 ;
  wire \slv_reg9[31]_i_8_n_0 ;
  wire \slv_reg9[31]_i_9_n_0 ;
  wire \slv_reg9[3]_i_1_n_0 ;
  wire \slv_reg9[4]_i_1_n_0 ;
  wire \slv_reg9[5]_i_1_n_0 ;
  wire \slv_reg9[6]_i_1_n_0 ;
  wire \slv_reg9[7]_i_1_n_0 ;
  wire \slv_reg9[7]_i_2_n_0 ;
  wire \slv_reg9[8]_i_1_n_0 ;
  wire \slv_reg9[9]_i_1_n_0 ;
  wire \slv_reg9_reg[8]_i_2_n_3 ;
  wire slv_reg_rden__0;
  wire [3:0]\NLW_adder[14]__0_carry__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_adder[14]__0_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_adder[14]__14_carry__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_adder[14]__14_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_adder[14]__28_carry__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_adder[14]__28_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_adder[14]__42_carry__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_adder[14]__42_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_adder[14]__56_carry__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_adder[14]__56_carry__0_O_UNCONNECTED ;
  wire [2:2]\NLW_adder[14]__70_carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_adder[14]__70_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_slv_reg9_reg[8]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_slv_reg9_reg[8]_i_2_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \abs_diff[0][0]_i_1 
       (.I0(\curr[0]_19 [0]),
        .I1(\prev[0]_3 [0]),
        .O(\abs_diff[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h66699666)) 
    \abs_diff[0][1]_i_1 
       (.I0(\curr[0]_19 [1]),
        .I1(\prev[0]_3 [1]),
        .I2(\curr[0]_19 [0]),
        .I3(\abs_diff[0][3]_i_3_n_0 ),
        .I4(\prev[0]_3 [0]),
        .O(\abs_diff[0][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \abs_diff[0][2]_i_1 
       (.I0(\prev[0]_3 [2]),
        .I1(\curr[0]_19 [2]),
        .I2(\abs_diff[0][3]_i_2_n_0 ),
        .O(\abs_diff[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066006066060600)) 
    \abs_diff[0][3]_i_1 
       (.I0(\prev[0]_3 [3]),
        .I1(\curr[0]_19 [3]),
        .I2(\prev[0]_3 [2]),
        .I3(\curr[0]_19 [2]),
        .I4(\abs_diff[0][3]_i_2_n_0 ),
        .I5(\abs_diff[0][3]_i_3_n_0 ),
        .O(\abs_diff[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hB0FBDF0D)) 
    \abs_diff[0][3]_i_2 
       (.I0(\prev[0]_3 [0]),
        .I1(\curr[0]_19 [0]),
        .I2(\prev[0]_3 [1]),
        .I3(\curr[0]_19 [1]),
        .I4(\abs_diff[0][3]_i_3_n_0 ),
        .O(\abs_diff[0][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \abs_diff[0][3]_i_3 
       (.I0(\curr[0]_19 [3]),
        .I1(\prev[0]_3 [3]),
        .I2(\curr[0]_19 [2]),
        .I3(\prev[0]_3 [2]),
        .I4(\abs_diff[0][3]_i_4_n_0 ),
        .O(\abs_diff[0][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \abs_diff[0][3]_i_4 
       (.I0(\prev[0]_3 [0]),
        .I1(\curr[0]_19 [0]),
        .I2(\curr[0]_19 [1]),
        .I3(\prev[0]_3 [1]),
        .I4(\curr[0]_19 [2]),
        .I5(\prev[0]_3 [2]),
        .O(\abs_diff[0][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_diff[10][0]_i_1 
       (.I0(\curr[10]_25 [0]),
        .I1(\prev[10]_9 [0]),
        .O(\abs_diff[10][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h69666696)) 
    \abs_diff[10][1]_i_1 
       (.I0(\curr[10]_25 [1]),
        .I1(\prev[10]_9 [1]),
        .I2(\prev[10]_9 [0]),
        .I3(\abs_diff[10][3]_i_3_n_0 ),
        .I4(\curr[10]_25 [0]),
        .O(\abs_diff[10][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \abs_diff[10][2]_i_1 
       (.I0(\prev[10]_9 [2]),
        .I1(\curr[10]_25 [2]),
        .I2(\abs_diff[10][3]_i_2_n_0 ),
        .O(\abs_diff[10][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066006066060600)) 
    \abs_diff[10][3]_i_1 
       (.I0(\prev[10]_9 [3]),
        .I1(\curr[10]_25 [3]),
        .I2(\prev[10]_9 [2]),
        .I3(\curr[10]_25 [2]),
        .I4(\abs_diff[10][3]_i_2_n_0 ),
        .I5(\abs_diff[10][3]_i_3_n_0 ),
        .O(\abs_diff[10][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hD0FDBF0B)) 
    \abs_diff[10][3]_i_2 
       (.I0(\curr[10]_25 [0]),
        .I1(\prev[10]_9 [0]),
        .I2(\prev[10]_9 [1]),
        .I3(\curr[10]_25 [1]),
        .I4(\abs_diff[10][3]_i_3_n_0 ),
        .O(\abs_diff[10][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \abs_diff[10][3]_i_3 
       (.I0(\curr[10]_25 [3]),
        .I1(\prev[10]_9 [3]),
        .I2(\curr[10]_25 [2]),
        .I3(\prev[10]_9 [2]),
        .I4(\abs_diff[10][3]_i_4_n_0 ),
        .O(\abs_diff[10][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \abs_diff[10][3]_i_4 
       (.I0(\prev[10]_9 [0]),
        .I1(\curr[10]_25 [0]),
        .I2(\curr[10]_25 [1]),
        .I3(\prev[10]_9 [1]),
        .I4(\curr[10]_25 [2]),
        .I5(\prev[10]_9 [2]),
        .O(\abs_diff[10][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_diff[11][0]_i_1 
       (.I0(\curr[11]_24 [0]),
        .I1(\prev[11]_8 [0]),
        .O(\abs_diff[11][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h66699666)) 
    \abs_diff[11][1]_i_1 
       (.I0(\curr[11]_24 [1]),
        .I1(\prev[11]_8 [1]),
        .I2(\curr[11]_24 [0]),
        .I3(\abs_diff[11][3]_i_3_n_0 ),
        .I4(\prev[11]_8 [0]),
        .O(\abs_diff[11][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \abs_diff[11][2]_i_1 
       (.I0(\prev[11]_8 [2]),
        .I1(\curr[11]_24 [2]),
        .I2(\abs_diff[11][3]_i_2_n_0 ),
        .O(\abs_diff[11][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066006066060600)) 
    \abs_diff[11][3]_i_1 
       (.I0(\prev[11]_8 [3]),
        .I1(\curr[11]_24 [3]),
        .I2(\prev[11]_8 [2]),
        .I3(\curr[11]_24 [2]),
        .I4(\abs_diff[11][3]_i_2_n_0 ),
        .I5(\abs_diff[11][3]_i_3_n_0 ),
        .O(\abs_diff[11][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hB0FBDF0D)) 
    \abs_diff[11][3]_i_2 
       (.I0(\prev[11]_8 [0]),
        .I1(\curr[11]_24 [0]),
        .I2(\prev[11]_8 [1]),
        .I3(\curr[11]_24 [1]),
        .I4(\abs_diff[11][3]_i_3_n_0 ),
        .O(\abs_diff[11][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \abs_diff[11][3]_i_3 
       (.I0(\curr[11]_24 [3]),
        .I1(\prev[11]_8 [3]),
        .I2(\curr[11]_24 [2]),
        .I3(\prev[11]_8 [2]),
        .I4(\abs_diff[11][3]_i_4_n_0 ),
        .O(\abs_diff[11][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \abs_diff[11][3]_i_4 
       (.I0(\prev[11]_8 [0]),
        .I1(\curr[11]_24 [0]),
        .I2(\curr[11]_24 [1]),
        .I3(\prev[11]_8 [1]),
        .I4(\curr[11]_24 [2]),
        .I5(\prev[11]_8 [2]),
        .O(\abs_diff[11][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_diff[12][0]_i_1 
       (.I0(\curr[12]_31 [0]),
        .I1(\prev[12]_15 [0]),
        .O(\abs_diff[12][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h66699666)) 
    \abs_diff[12][1]_i_1 
       (.I0(\curr[12]_31 [1]),
        .I1(\prev[12]_15 [1]),
        .I2(\curr[12]_31 [0]),
        .I3(\abs_diff[12][3]_i_3_n_0 ),
        .I4(\prev[12]_15 [0]),
        .O(\abs_diff[12][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \abs_diff[12][2]_i_1 
       (.I0(\prev[12]_15 [2]),
        .I1(\curr[12]_31 [2]),
        .I2(\abs_diff[12][3]_i_2_n_0 ),
        .O(\abs_diff[12][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066006066060600)) 
    \abs_diff[12][3]_i_1 
       (.I0(\prev[12]_15 [3]),
        .I1(\curr[12]_31 [3]),
        .I2(\prev[12]_15 [2]),
        .I3(\curr[12]_31 [2]),
        .I4(\abs_diff[12][3]_i_2_n_0 ),
        .I5(\abs_diff[12][3]_i_3_n_0 ),
        .O(\abs_diff[12][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hB0FBDF0D)) 
    \abs_diff[12][3]_i_2 
       (.I0(\prev[12]_15 [0]),
        .I1(\curr[12]_31 [0]),
        .I2(\prev[12]_15 [1]),
        .I3(\curr[12]_31 [1]),
        .I4(\abs_diff[12][3]_i_3_n_0 ),
        .O(\abs_diff[12][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \abs_diff[12][3]_i_3 
       (.I0(\curr[12]_31 [3]),
        .I1(\prev[12]_15 [3]),
        .I2(\curr[12]_31 [2]),
        .I3(\prev[12]_15 [2]),
        .I4(\abs_diff[12][3]_i_4_n_0 ),
        .O(\abs_diff[12][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \abs_diff[12][3]_i_4 
       (.I0(\prev[12]_15 [0]),
        .I1(\curr[12]_31 [0]),
        .I2(\curr[12]_31 [1]),
        .I3(\prev[12]_15 [1]),
        .I4(\curr[12]_31 [2]),
        .I5(\prev[12]_15 [2]),
        .O(\abs_diff[12][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_diff[13][0]_i_1 
       (.I0(\curr[13]_30 [0]),
        .I1(\prev[13]_14 [0]),
        .O(\abs_diff[13][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h66699666)) 
    \abs_diff[13][1]_i_1 
       (.I0(\curr[13]_30 [1]),
        .I1(\prev[13]_14 [1]),
        .I2(\curr[13]_30 [0]),
        .I3(\abs_diff[13][3]_i_3_n_0 ),
        .I4(\prev[13]_14 [0]),
        .O(\abs_diff[13][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \abs_diff[13][2]_i_1 
       (.I0(\prev[13]_14 [2]),
        .I1(\curr[13]_30 [2]),
        .I2(\abs_diff[13][3]_i_2_n_0 ),
        .O(\abs_diff[13][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066006066060600)) 
    \abs_diff[13][3]_i_1 
       (.I0(\prev[13]_14 [3]),
        .I1(\curr[13]_30 [3]),
        .I2(\prev[13]_14 [2]),
        .I3(\curr[13]_30 [2]),
        .I4(\abs_diff[13][3]_i_2_n_0 ),
        .I5(\abs_diff[13][3]_i_3_n_0 ),
        .O(\abs_diff[13][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hB0FBDF0D)) 
    \abs_diff[13][3]_i_2 
       (.I0(\prev[13]_14 [0]),
        .I1(\curr[13]_30 [0]),
        .I2(\prev[13]_14 [1]),
        .I3(\curr[13]_30 [1]),
        .I4(\abs_diff[13][3]_i_3_n_0 ),
        .O(\abs_diff[13][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \abs_diff[13][3]_i_3 
       (.I0(\curr[13]_30 [3]),
        .I1(\prev[13]_14 [3]),
        .I2(\curr[13]_30 [2]),
        .I3(\prev[13]_14 [2]),
        .I4(\abs_diff[13][3]_i_4_n_0 ),
        .O(\abs_diff[13][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \abs_diff[13][3]_i_4 
       (.I0(\prev[13]_14 [0]),
        .I1(\curr[13]_30 [0]),
        .I2(\curr[13]_30 [1]),
        .I3(\prev[13]_14 [1]),
        .I4(\curr[13]_30 [2]),
        .I5(\prev[13]_14 [2]),
        .O(\abs_diff[13][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_diff[14][0]_i_1 
       (.I0(\curr[14]_29 [0]),
        .I1(\prev[14]_13 [0]),
        .O(\abs_diff[14][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h69666696)) 
    \abs_diff[14][1]_i_1 
       (.I0(\curr[14]_29 [1]),
        .I1(\prev[14]_13 [1]),
        .I2(\prev[14]_13 [0]),
        .I3(\abs_diff[14][3]_i_3_n_0 ),
        .I4(\curr[14]_29 [0]),
        .O(\abs_diff[14][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \abs_diff[14][2]_i_1 
       (.I0(\prev[14]_13 [2]),
        .I1(\curr[14]_29 [2]),
        .I2(\abs_diff[14][3]_i_2_n_0 ),
        .O(\abs_diff[14][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066006066060600)) 
    \abs_diff[14][3]_i_1 
       (.I0(\prev[14]_13 [3]),
        .I1(\curr[14]_29 [3]),
        .I2(\prev[14]_13 [2]),
        .I3(\curr[14]_29 [2]),
        .I4(\abs_diff[14][3]_i_2_n_0 ),
        .I5(\abs_diff[14][3]_i_3_n_0 ),
        .O(\abs_diff[14][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hD0FDBF0B)) 
    \abs_diff[14][3]_i_2 
       (.I0(\curr[14]_29 [0]),
        .I1(\prev[14]_13 [0]),
        .I2(\prev[14]_13 [1]),
        .I3(\curr[14]_29 [1]),
        .I4(\abs_diff[14][3]_i_3_n_0 ),
        .O(\abs_diff[14][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \abs_diff[14][3]_i_3 
       (.I0(\curr[14]_29 [3]),
        .I1(\prev[14]_13 [3]),
        .I2(\curr[14]_29 [2]),
        .I3(\prev[14]_13 [2]),
        .I4(\abs_diff[14][3]_i_4_n_0 ),
        .O(\abs_diff[14][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \abs_diff[14][3]_i_4 
       (.I0(\prev[14]_13 [0]),
        .I1(\curr[14]_29 [0]),
        .I2(\curr[14]_29 [1]),
        .I3(\prev[14]_13 [1]),
        .I4(\curr[14]_29 [2]),
        .I5(\prev[14]_13 [2]),
        .O(\abs_diff[14][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_diff[15][0]_i_1 
       (.I0(\curr[15]_28 [0]),
        .I1(\prev[15]_12 [0]),
        .O(\abs_diff[15][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h66699666)) 
    \abs_diff[15][1]_i_1 
       (.I0(\curr[15]_28 [1]),
        .I1(\prev[15]_12 [1]),
        .I2(\curr[15]_28 [0]),
        .I3(\abs_diff[15][3]_i_3_n_0 ),
        .I4(\prev[15]_12 [0]),
        .O(\abs_diff[15][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \abs_diff[15][2]_i_1 
       (.I0(\prev[15]_12 [2]),
        .I1(\curr[15]_28 [2]),
        .I2(\abs_diff[15][3]_i_2_n_0 ),
        .O(\abs_diff[15][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066006066060600)) 
    \abs_diff[15][3]_i_1 
       (.I0(\prev[15]_12 [3]),
        .I1(\curr[15]_28 [3]),
        .I2(\prev[15]_12 [2]),
        .I3(\curr[15]_28 [2]),
        .I4(\abs_diff[15][3]_i_2_n_0 ),
        .I5(\abs_diff[15][3]_i_3_n_0 ),
        .O(\abs_diff[15][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hB0FBDF0D)) 
    \abs_diff[15][3]_i_2 
       (.I0(\prev[15]_12 [0]),
        .I1(\curr[15]_28 [0]),
        .I2(\prev[15]_12 [1]),
        .I3(\curr[15]_28 [1]),
        .I4(\abs_diff[15][3]_i_3_n_0 ),
        .O(\abs_diff[15][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \abs_diff[15][3]_i_3 
       (.I0(\curr[15]_28 [3]),
        .I1(\prev[15]_12 [3]),
        .I2(\curr[15]_28 [2]),
        .I3(\prev[15]_12 [2]),
        .I4(\abs_diff[15][3]_i_4_n_0 ),
        .O(\abs_diff[15][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \abs_diff[15][3]_i_4 
       (.I0(\prev[15]_12 [0]),
        .I1(\curr[15]_28 [0]),
        .I2(\curr[15]_28 [1]),
        .I3(\prev[15]_12 [1]),
        .I4(\curr[15]_28 [2]),
        .I5(\prev[15]_12 [2]),
        .O(\abs_diff[15][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_diff[1][0]_i_1 
       (.I0(\curr[1]_18 [0]),
        .I1(\prev[1]_2 [0]),
        .O(\abs_diff[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h66699666)) 
    \abs_diff[1][1]_i_1 
       (.I0(\curr[1]_18 [1]),
        .I1(\prev[1]_2 [1]),
        .I2(\curr[1]_18 [0]),
        .I3(\abs_diff[1][3]_i_3_n_0 ),
        .I4(\prev[1]_2 [0]),
        .O(\abs_diff[1][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \abs_diff[1][2]_i_1 
       (.I0(\prev[1]_2 [2]),
        .I1(\curr[1]_18 [2]),
        .I2(\abs_diff[1][3]_i_2_n_0 ),
        .O(\abs_diff[1][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066006066060600)) 
    \abs_diff[1][3]_i_1 
       (.I0(\prev[1]_2 [3]),
        .I1(\curr[1]_18 [3]),
        .I2(\prev[1]_2 [2]),
        .I3(\curr[1]_18 [2]),
        .I4(\abs_diff[1][3]_i_2_n_0 ),
        .I5(\abs_diff[1][3]_i_3_n_0 ),
        .O(\abs_diff[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hB0FBDF0D)) 
    \abs_diff[1][3]_i_2 
       (.I0(\prev[1]_2 [0]),
        .I1(\curr[1]_18 [0]),
        .I2(\prev[1]_2 [1]),
        .I3(\curr[1]_18 [1]),
        .I4(\abs_diff[1][3]_i_3_n_0 ),
        .O(\abs_diff[1][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \abs_diff[1][3]_i_3 
       (.I0(\curr[1]_18 [3]),
        .I1(\prev[1]_2 [3]),
        .I2(\curr[1]_18 [2]),
        .I3(\prev[1]_2 [2]),
        .I4(\abs_diff[1][3]_i_4_n_0 ),
        .O(\abs_diff[1][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \abs_diff[1][3]_i_4 
       (.I0(\prev[1]_2 [0]),
        .I1(\curr[1]_18 [0]),
        .I2(\curr[1]_18 [1]),
        .I3(\prev[1]_2 [1]),
        .I4(\curr[1]_18 [2]),
        .I5(\prev[1]_2 [2]),
        .O(\abs_diff[1][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_diff[2][0]_i_1 
       (.I0(\curr[2]_17 [0]),
        .I1(\prev[2]_1 [0]),
        .O(\abs_diff[2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h69666696)) 
    \abs_diff[2][1]_i_1 
       (.I0(\curr[2]_17 [1]),
        .I1(\prev[2]_1 [1]),
        .I2(\prev[2]_1 [0]),
        .I3(\abs_diff[2][3]_i_3_n_0 ),
        .I4(\curr[2]_17 [0]),
        .O(\abs_diff[2][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \abs_diff[2][2]_i_1 
       (.I0(\prev[2]_1 [2]),
        .I1(\curr[2]_17 [2]),
        .I2(\abs_diff[2][3]_i_2_n_0 ),
        .O(\abs_diff[2][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066006066060600)) 
    \abs_diff[2][3]_i_1 
       (.I0(\prev[2]_1 [3]),
        .I1(\curr[2]_17 [3]),
        .I2(\prev[2]_1 [2]),
        .I3(\curr[2]_17 [2]),
        .I4(\abs_diff[2][3]_i_2_n_0 ),
        .I5(\abs_diff[2][3]_i_3_n_0 ),
        .O(\abs_diff[2][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hD0FDBF0B)) 
    \abs_diff[2][3]_i_2 
       (.I0(\curr[2]_17 [0]),
        .I1(\prev[2]_1 [0]),
        .I2(\prev[2]_1 [1]),
        .I3(\curr[2]_17 [1]),
        .I4(\abs_diff[2][3]_i_3_n_0 ),
        .O(\abs_diff[2][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \abs_diff[2][3]_i_3 
       (.I0(\curr[2]_17 [3]),
        .I1(\prev[2]_1 [3]),
        .I2(\curr[2]_17 [2]),
        .I3(\prev[2]_1 [2]),
        .I4(\abs_diff[2][3]_i_4_n_0 ),
        .O(\abs_diff[2][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \abs_diff[2][3]_i_4 
       (.I0(\prev[2]_1 [0]),
        .I1(\curr[2]_17 [0]),
        .I2(\curr[2]_17 [1]),
        .I3(\prev[2]_1 [1]),
        .I4(\curr[2]_17 [2]),
        .I5(\prev[2]_1 [2]),
        .O(\abs_diff[2][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_diff[3][0]_i_1 
       (.I0(\curr[3]_16 [0]),
        .I1(\prev[3]_0 [0]),
        .O(\abs_diff[3][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h66699666)) 
    \abs_diff[3][1]_i_1 
       (.I0(\curr[3]_16 [1]),
        .I1(\prev[3]_0 [1]),
        .I2(\curr[3]_16 [0]),
        .I3(\abs_diff[3][3]_i_3_n_0 ),
        .I4(\prev[3]_0 [0]),
        .O(\abs_diff[3][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \abs_diff[3][2]_i_1 
       (.I0(\prev[3]_0 [2]),
        .I1(\curr[3]_16 [2]),
        .I2(\abs_diff[3][3]_i_2_n_0 ),
        .O(\abs_diff[3][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066006066060600)) 
    \abs_diff[3][3]_i_1 
       (.I0(\prev[3]_0 [3]),
        .I1(\curr[3]_16 [3]),
        .I2(\prev[3]_0 [2]),
        .I3(\curr[3]_16 [2]),
        .I4(\abs_diff[3][3]_i_2_n_0 ),
        .I5(\abs_diff[3][3]_i_3_n_0 ),
        .O(\abs_diff[3][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hB0FBDF0D)) 
    \abs_diff[3][3]_i_2 
       (.I0(\prev[3]_0 [0]),
        .I1(\curr[3]_16 [0]),
        .I2(\prev[3]_0 [1]),
        .I3(\curr[3]_16 [1]),
        .I4(\abs_diff[3][3]_i_3_n_0 ),
        .O(\abs_diff[3][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \abs_diff[3][3]_i_3 
       (.I0(\curr[3]_16 [3]),
        .I1(\prev[3]_0 [3]),
        .I2(\curr[3]_16 [2]),
        .I3(\prev[3]_0 [2]),
        .I4(\abs_diff[3][3]_i_4_n_0 ),
        .O(\abs_diff[3][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \abs_diff[3][3]_i_4 
       (.I0(\prev[3]_0 [0]),
        .I1(\curr[3]_16 [0]),
        .I2(\curr[3]_16 [1]),
        .I3(\prev[3]_0 [1]),
        .I4(\curr[3]_16 [2]),
        .I5(\prev[3]_0 [2]),
        .O(\abs_diff[3][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_diff[4][0]_i_1 
       (.I0(\curr[4]_23 [0]),
        .I1(\prev[4]_7 [0]),
        .O(\abs_diff[4][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h66699666)) 
    \abs_diff[4][1]_i_1 
       (.I0(\curr[4]_23 [1]),
        .I1(\prev[4]_7 [1]),
        .I2(\curr[4]_23 [0]),
        .I3(\abs_diff[4][3]_i_3_n_0 ),
        .I4(\prev[4]_7 [0]),
        .O(\abs_diff[4][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \abs_diff[4][2]_i_1 
       (.I0(\prev[4]_7 [2]),
        .I1(\curr[4]_23 [2]),
        .I2(\abs_diff[4][3]_i_2_n_0 ),
        .O(\abs_diff[4][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066006066060600)) 
    \abs_diff[4][3]_i_1 
       (.I0(\prev[4]_7 [3]),
        .I1(\curr[4]_23 [3]),
        .I2(\prev[4]_7 [2]),
        .I3(\curr[4]_23 [2]),
        .I4(\abs_diff[4][3]_i_2_n_0 ),
        .I5(\abs_diff[4][3]_i_3_n_0 ),
        .O(\abs_diff[4][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hB0FBDF0D)) 
    \abs_diff[4][3]_i_2 
       (.I0(\prev[4]_7 [0]),
        .I1(\curr[4]_23 [0]),
        .I2(\prev[4]_7 [1]),
        .I3(\curr[4]_23 [1]),
        .I4(\abs_diff[4][3]_i_3_n_0 ),
        .O(\abs_diff[4][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \abs_diff[4][3]_i_3 
       (.I0(\curr[4]_23 [3]),
        .I1(\prev[4]_7 [3]),
        .I2(\curr[4]_23 [2]),
        .I3(\prev[4]_7 [2]),
        .I4(\abs_diff[4][3]_i_4_n_0 ),
        .O(\abs_diff[4][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \abs_diff[4][3]_i_4 
       (.I0(\prev[4]_7 [0]),
        .I1(\curr[4]_23 [0]),
        .I2(\curr[4]_23 [1]),
        .I3(\prev[4]_7 [1]),
        .I4(\curr[4]_23 [2]),
        .I5(\prev[4]_7 [2]),
        .O(\abs_diff[4][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_diff[5][0]_i_1 
       (.I0(\curr[5]_22 [0]),
        .I1(\prev[5]_6 [0]),
        .O(\abs_diff[5][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h66699666)) 
    \abs_diff[5][1]_i_1 
       (.I0(\curr[5]_22 [1]),
        .I1(\prev[5]_6 [1]),
        .I2(\curr[5]_22 [0]),
        .I3(\abs_diff[5][3]_i_3_n_0 ),
        .I4(\prev[5]_6 [0]),
        .O(\abs_diff[5][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \abs_diff[5][2]_i_1 
       (.I0(\prev[5]_6 [2]),
        .I1(\curr[5]_22 [2]),
        .I2(\abs_diff[5][3]_i_2_n_0 ),
        .O(\abs_diff[5][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066006066060600)) 
    \abs_diff[5][3]_i_1 
       (.I0(\prev[5]_6 [3]),
        .I1(\curr[5]_22 [3]),
        .I2(\prev[5]_6 [2]),
        .I3(\curr[5]_22 [2]),
        .I4(\abs_diff[5][3]_i_2_n_0 ),
        .I5(\abs_diff[5][3]_i_3_n_0 ),
        .O(\abs_diff[5][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB0FBDF0D)) 
    \abs_diff[5][3]_i_2 
       (.I0(\prev[5]_6 [0]),
        .I1(\curr[5]_22 [0]),
        .I2(\prev[5]_6 [1]),
        .I3(\curr[5]_22 [1]),
        .I4(\abs_diff[5][3]_i_3_n_0 ),
        .O(\abs_diff[5][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \abs_diff[5][3]_i_3 
       (.I0(\curr[5]_22 [3]),
        .I1(\prev[5]_6 [3]),
        .I2(\curr[5]_22 [2]),
        .I3(\prev[5]_6 [2]),
        .I4(\abs_diff[5][3]_i_4_n_0 ),
        .O(\abs_diff[5][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \abs_diff[5][3]_i_4 
       (.I0(\prev[5]_6 [0]),
        .I1(\curr[5]_22 [0]),
        .I2(\curr[5]_22 [1]),
        .I3(\prev[5]_6 [1]),
        .I4(\curr[5]_22 [2]),
        .I5(\prev[5]_6 [2]),
        .O(\abs_diff[5][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_diff[6][0]_i_1 
       (.I0(\curr[6]_21 [0]),
        .I1(\prev[6]_5 [0]),
        .O(\abs_diff[6][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h69666696)) 
    \abs_diff[6][1]_i_1 
       (.I0(\curr[6]_21 [1]),
        .I1(\prev[6]_5 [1]),
        .I2(\prev[6]_5 [0]),
        .I3(\abs_diff[6][3]_i_3_n_0 ),
        .I4(\curr[6]_21 [0]),
        .O(\abs_diff[6][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \abs_diff[6][2]_i_1 
       (.I0(\prev[6]_5 [2]),
        .I1(\curr[6]_21 [2]),
        .I2(\abs_diff[6][3]_i_2_n_0 ),
        .O(\abs_diff[6][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066006066060600)) 
    \abs_diff[6][3]_i_1 
       (.I0(\prev[6]_5 [3]),
        .I1(\curr[6]_21 [3]),
        .I2(\prev[6]_5 [2]),
        .I3(\curr[6]_21 [2]),
        .I4(\abs_diff[6][3]_i_2_n_0 ),
        .I5(\abs_diff[6][3]_i_3_n_0 ),
        .O(\abs_diff[6][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hD0FDBF0B)) 
    \abs_diff[6][3]_i_2 
       (.I0(\curr[6]_21 [0]),
        .I1(\prev[6]_5 [0]),
        .I2(\prev[6]_5 [1]),
        .I3(\curr[6]_21 [1]),
        .I4(\abs_diff[6][3]_i_3_n_0 ),
        .O(\abs_diff[6][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \abs_diff[6][3]_i_3 
       (.I0(\curr[6]_21 [3]),
        .I1(\prev[6]_5 [3]),
        .I2(\curr[6]_21 [2]),
        .I3(\prev[6]_5 [2]),
        .I4(\abs_diff[6][3]_i_4_n_0 ),
        .O(\abs_diff[6][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \abs_diff[6][3]_i_4 
       (.I0(\prev[6]_5 [0]),
        .I1(\curr[6]_21 [0]),
        .I2(\curr[6]_21 [1]),
        .I3(\prev[6]_5 [1]),
        .I4(\curr[6]_21 [2]),
        .I5(\prev[6]_5 [2]),
        .O(\abs_diff[6][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_diff[7][0]_i_1 
       (.I0(\curr[7]_20 [0]),
        .I1(\prev[7]_4 [0]),
        .O(\abs_diff[7][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h66699666)) 
    \abs_diff[7][1]_i_1 
       (.I0(\curr[7]_20 [1]),
        .I1(\prev[7]_4 [1]),
        .I2(\curr[7]_20 [0]),
        .I3(\abs_diff[7][3]_i_3_n_0 ),
        .I4(\prev[7]_4 [0]),
        .O(\abs_diff[7][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \abs_diff[7][2]_i_1 
       (.I0(\prev[7]_4 [2]),
        .I1(\curr[7]_20 [2]),
        .I2(\abs_diff[7][3]_i_2_n_0 ),
        .O(\abs_diff[7][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066006066060600)) 
    \abs_diff[7][3]_i_1 
       (.I0(\prev[7]_4 [3]),
        .I1(\curr[7]_20 [3]),
        .I2(\prev[7]_4 [2]),
        .I3(\curr[7]_20 [2]),
        .I4(\abs_diff[7][3]_i_2_n_0 ),
        .I5(\abs_diff[7][3]_i_3_n_0 ),
        .O(\abs_diff[7][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB0FBDF0D)) 
    \abs_diff[7][3]_i_2 
       (.I0(\prev[7]_4 [0]),
        .I1(\curr[7]_20 [0]),
        .I2(\prev[7]_4 [1]),
        .I3(\curr[7]_20 [1]),
        .I4(\abs_diff[7][3]_i_3_n_0 ),
        .O(\abs_diff[7][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \abs_diff[7][3]_i_3 
       (.I0(\curr[7]_20 [3]),
        .I1(\prev[7]_4 [3]),
        .I2(\curr[7]_20 [2]),
        .I3(\prev[7]_4 [2]),
        .I4(\abs_diff[7][3]_i_4_n_0 ),
        .O(\abs_diff[7][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \abs_diff[7][3]_i_4 
       (.I0(\prev[7]_4 [0]),
        .I1(\curr[7]_20 [0]),
        .I2(\curr[7]_20 [1]),
        .I3(\prev[7]_4 [1]),
        .I4(\curr[7]_20 [2]),
        .I5(\prev[7]_4 [2]),
        .O(\abs_diff[7][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_diff[8][0]_i_1 
       (.I0(\curr[8]_27 [0]),
        .I1(\prev[8]_11 [0]),
        .O(\abs_diff[8][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h66699666)) 
    \abs_diff[8][1]_i_1 
       (.I0(\curr[8]_27 [1]),
        .I1(\prev[8]_11 [1]),
        .I2(\curr[8]_27 [0]),
        .I3(\abs_diff[8][3]_i_3_n_0 ),
        .I4(\prev[8]_11 [0]),
        .O(\abs_diff[8][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \abs_diff[8][2]_i_1 
       (.I0(\prev[8]_11 [2]),
        .I1(\curr[8]_27 [2]),
        .I2(\abs_diff[8][3]_i_2_n_0 ),
        .O(\abs_diff[8][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066006066060600)) 
    \abs_diff[8][3]_i_1 
       (.I0(\prev[8]_11 [3]),
        .I1(\curr[8]_27 [3]),
        .I2(\prev[8]_11 [2]),
        .I3(\curr[8]_27 [2]),
        .I4(\abs_diff[8][3]_i_2_n_0 ),
        .I5(\abs_diff[8][3]_i_3_n_0 ),
        .O(\abs_diff[8][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB0FBDF0D)) 
    \abs_diff[8][3]_i_2 
       (.I0(\prev[8]_11 [0]),
        .I1(\curr[8]_27 [0]),
        .I2(\prev[8]_11 [1]),
        .I3(\curr[8]_27 [1]),
        .I4(\abs_diff[8][3]_i_3_n_0 ),
        .O(\abs_diff[8][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \abs_diff[8][3]_i_3 
       (.I0(\curr[8]_27 [3]),
        .I1(\prev[8]_11 [3]),
        .I2(\curr[8]_27 [2]),
        .I3(\prev[8]_11 [2]),
        .I4(\abs_diff[8][3]_i_4_n_0 ),
        .O(\abs_diff[8][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \abs_diff[8][3]_i_4 
       (.I0(\prev[8]_11 [0]),
        .I1(\curr[8]_27 [0]),
        .I2(\curr[8]_27 [1]),
        .I3(\prev[8]_11 [1]),
        .I4(\curr[8]_27 [2]),
        .I5(\prev[8]_11 [2]),
        .O(\abs_diff[8][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_diff[9][0]_i_1 
       (.I0(\curr[9]_26 [0]),
        .I1(\prev[9]_10 [0]),
        .O(\abs_diff[9][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h66699666)) 
    \abs_diff[9][1]_i_1 
       (.I0(\curr[9]_26 [1]),
        .I1(\prev[9]_10 [1]),
        .I2(\curr[9]_26 [0]),
        .I3(\abs_diff[9][3]_i_3_n_0 ),
        .I4(\prev[9]_10 [0]),
        .O(\abs_diff[9][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \abs_diff[9][2]_i_1 
       (.I0(\prev[9]_10 [2]),
        .I1(\curr[9]_26 [2]),
        .I2(\abs_diff[9][3]_i_2_n_0 ),
        .O(\abs_diff[9][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066006066060600)) 
    \abs_diff[9][3]_i_1 
       (.I0(\prev[9]_10 [3]),
        .I1(\curr[9]_26 [3]),
        .I2(\prev[9]_10 [2]),
        .I3(\curr[9]_26 [2]),
        .I4(\abs_diff[9][3]_i_2_n_0 ),
        .I5(\abs_diff[9][3]_i_3_n_0 ),
        .O(\abs_diff[9][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hB0FBDF0D)) 
    \abs_diff[9][3]_i_2 
       (.I0(\prev[9]_10 [0]),
        .I1(\curr[9]_26 [0]),
        .I2(\prev[9]_10 [1]),
        .I3(\curr[9]_26 [1]),
        .I4(\abs_diff[9][3]_i_3_n_0 ),
        .O(\abs_diff[9][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \abs_diff[9][3]_i_3 
       (.I0(\curr[9]_26 [3]),
        .I1(\prev[9]_10 [3]),
        .I2(\curr[9]_26 [2]),
        .I3(\prev[9]_10 [2]),
        .I4(\abs_diff[9][3]_i_4_n_0 ),
        .O(\abs_diff[9][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \abs_diff[9][3]_i_4 
       (.I0(\prev[9]_10 [0]),
        .I1(\curr[9]_26 [0]),
        .I2(\curr[9]_26 [1]),
        .I3(\prev[9]_10 [1]),
        .I4(\curr[9]_26 [2]),
        .I5(\prev[9]_10 [2]),
        .O(\abs_diff[9][3]_i_4_n_0 ));
  FDRE \abs_diff_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[0][0]_i_1_n_0 ),
        .Q(\abs_diff_reg[0]_46 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[0][1]_i_1_n_0 ),
        .Q(\abs_diff_reg[0]_46 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[0][2]_i_1_n_0 ),
        .Q(\abs_diff_reg[0]_46 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[0][3]_i_1_n_0 ),
        .Q(\abs_diff_reg[0]_46 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[10][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[10][0]_i_1_n_0 ),
        .Q(\abs_diff_reg[10]_44 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[10][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[10][1]_i_1_n_0 ),
        .Q(\abs_diff_reg[10]_44 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[10][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[10][2]_i_1_n_0 ),
        .Q(\abs_diff_reg[10]_44 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[10][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[10][3]_i_1_n_0 ),
        .Q(\abs_diff_reg[10]_44 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[11][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[11][0]_i_1_n_0 ),
        .Q(\abs_diff_reg[11]_42 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[11][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[11][1]_i_1_n_0 ),
        .Q(\abs_diff_reg[11]_42 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[11][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[11][2]_i_1_n_0 ),
        .Q(\abs_diff_reg[11]_42 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[11][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[11][3]_i_1_n_0 ),
        .Q(\abs_diff_reg[11]_42 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[12][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[12][0]_i_1_n_0 ),
        .Q(\abs_diff_reg[12]_45 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[12][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[12][1]_i_1_n_0 ),
        .Q(\abs_diff_reg[12]_45 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[12][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[12][2]_i_1_n_0 ),
        .Q(\abs_diff_reg[12]_45 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[12][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[12][3]_i_1_n_0 ),
        .Q(\abs_diff_reg[12]_45 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[13][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[13][0]_i_1_n_0 ),
        .Q(\abs_diff_reg[13]_40 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[13][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[13][1]_i_1_n_0 ),
        .Q(\abs_diff_reg[13]_40 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[13][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[13][2]_i_1_n_0 ),
        .Q(\abs_diff_reg[13]_40 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[13][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[13][3]_i_1_n_0 ),
        .Q(\abs_diff_reg[13]_40 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[14][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[14][0]_i_1_n_0 ),
        .Q(\abs_diff_reg[14]_41 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[14][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[14][1]_i_1_n_0 ),
        .Q(\abs_diff_reg[14]_41 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[14][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[14][2]_i_1_n_0 ),
        .Q(\abs_diff_reg[14]_41 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[14][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[14][3]_i_1_n_0 ),
        .Q(\abs_diff_reg[14]_41 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[15][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[15][0]_i_1_n_0 ),
        .Q(\abs_diff_reg[15]_39 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[15][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[15][1]_i_1_n_0 ),
        .Q(\abs_diff_reg[15]_39 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[15][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[15][2]_i_1_n_0 ),
        .Q(\abs_diff_reg[15]_39 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[15][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[15][3]_i_1_n_0 ),
        .Q(\abs_diff_reg[15]_39 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[1][0]_i_1_n_0 ),
        .Q(\abs_diff_reg[1]_36 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[1][1]_i_1_n_0 ),
        .Q(\abs_diff_reg[1]_36 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[1][2]_i_1_n_0 ),
        .Q(\abs_diff_reg[1]_36 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[1][3]_i_1_n_0 ),
        .Q(\abs_diff_reg[1]_36 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[2][0]_i_1_n_0 ),
        .Q(\abs_diff_reg[2]_37 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[2][1]_i_1_n_0 ),
        .Q(\abs_diff_reg[2]_37 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[2][2]_i_1_n_0 ),
        .Q(\abs_diff_reg[2]_37 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[2][3]_i_1_n_0 ),
        .Q(\abs_diff_reg[2]_37 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[3][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[3][0]_i_1_n_0 ),
        .Q(\abs_diff_reg[3]_35 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[3][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[3][1]_i_1_n_0 ),
        .Q(\abs_diff_reg[3]_35 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[3][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[3][2]_i_1_n_0 ),
        .Q(\abs_diff_reg[3]_35 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[3][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[3][3]_i_1_n_0 ),
        .Q(\abs_diff_reg[3]_35 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[4][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[4][0]_i_1_n_0 ),
        .Q(\abs_diff_reg[4]_38 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[4][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[4][1]_i_1_n_0 ),
        .Q(\abs_diff_reg[4]_38 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[4][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[4][2]_i_1_n_0 ),
        .Q(\abs_diff_reg[4]_38 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[4][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[4][3]_i_1_n_0 ),
        .Q(\abs_diff_reg[4]_38 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[5][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[5][0]_i_1_n_0 ),
        .Q(\abs_diff_reg[5]_33 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[5][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[5][1]_i_1_n_0 ),
        .Q(\abs_diff_reg[5]_33 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[5][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[5][2]_i_1_n_0 ),
        .Q(\abs_diff_reg[5]_33 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[5][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[5][3]_i_1_n_0 ),
        .Q(\abs_diff_reg[5]_33 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[6][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[6][0]_i_1_n_0 ),
        .Q(\abs_diff_reg[6]_34 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[6][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[6][1]_i_1_n_0 ),
        .Q(\abs_diff_reg[6]_34 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[6][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[6][2]_i_1_n_0 ),
        .Q(\abs_diff_reg[6]_34 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[6][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[6][3]_i_1_n_0 ),
        .Q(\abs_diff_reg[6]_34 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[7][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[7][0]_i_1_n_0 ),
        .Q(\abs_diff_reg[7]_32 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[7][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[7][1]_i_1_n_0 ),
        .Q(\abs_diff_reg[7]_32 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[7][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[7][2]_i_1_n_0 ),
        .Q(\abs_diff_reg[7]_32 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[7][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[7][3]_i_1_n_0 ),
        .Q(\abs_diff_reg[7]_32 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[8][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[8][0]_i_1_n_0 ),
        .Q(\abs_diff_reg[8]_47 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[8][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[8][1]_i_1_n_0 ),
        .Q(\abs_diff_reg[8]_47 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[8][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[8][2]_i_1_n_0 ),
        .Q(\abs_diff_reg[8]_47 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[8][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[8][3]_i_1_n_0 ),
        .Q(\abs_diff_reg[8]_47 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[9][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[9][0]_i_1_n_0 ),
        .Q(\abs_diff_reg[9]_43 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[9][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[9][1]_i_1_n_0 ),
        .Q(\abs_diff_reg[9]_43 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[9][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[9][2]_i_1_n_0 ),
        .Q(\abs_diff_reg[9]_43 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[9][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff[9][3]_i_1_n_0 ),
        .Q(\abs_diff_reg[9]_43 [3]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \adder[14]__0_carry 
       (.CI(1'b0),
        .CO({\adder[14]__0_carry_n_0 ,\adder[14]__0_carry_n_1 ,\adder[14]__0_carry_n_2 ,\adder[14]__0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\adder[14]__0_carry_i_1_n_0 ,\adder[14]__0_carry_i_2_n_0 ,\adder[14]__0_carry_i_3_n_0 ,1'b0}),
        .O({\adder[14]__0_carry_n_4 ,\adder[14]__0_carry_n_5 ,\adder[14]__0_carry_n_6 ,\adder[14]__0_carry_n_7 }),
        .S({\adder[14]__0_carry_i_4_n_0 ,\adder[14]__0_carry_i_5_n_0 ,\adder[14]__0_carry_i_6_n_0 ,\adder[14]__0_carry_i_7_n_0 }));
  CARRY4 \adder[14]__0_carry__0 
       (.CI(\adder[14]__0_carry_n_0 ),
        .CO({\NLW_adder[14]__0_carry__0_CO_UNCONNECTED [3:2],\adder[14]__0_carry__0_n_2 ,\NLW_adder[14]__0_carry__0_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\adder[14]__0_carry__0_i_1_n_0 }),
        .O({\NLW_adder[14]__0_carry__0_O_UNCONNECTED [3:1],\adder[14]__0_carry__0_n_7 }),
        .S({1'b0,1'b0,1'b1,\adder[14]__0_carry__0_i_2_n_0 }));
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__0_carry__0_i_1 
       (.I0(\abs_diff_reg[12]_45 [3]),
        .I1(\abs_diff_reg[8]_47 [3]),
        .I2(\abs_diff_reg[0]_46 [3]),
        .O(\adder[14]__0_carry__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__0_carry__0_i_2 
       (.I0(\abs_diff_reg[12]_45 [3]),
        .I1(\abs_diff_reg[8]_47 [3]),
        .I2(\abs_diff_reg[0]_46 [3]),
        .O(\adder[14]__0_carry__0_i_2_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__0_carry_i_1 
       (.I0(\abs_diff_reg[12]_45 [2]),
        .I1(\abs_diff_reg[8]_47 [2]),
        .I2(\abs_diff_reg[0]_46 [2]),
        .O(\adder[14]__0_carry_i_1_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__0_carry_i_2 
       (.I0(\abs_diff_reg[12]_45 [1]),
        .I1(\abs_diff_reg[8]_47 [1]),
        .I2(\abs_diff_reg[0]_46 [1]),
        .O(\adder[14]__0_carry_i_2_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__0_carry_i_3 
       (.I0(\abs_diff_reg[8]_47 [0]),
        .I1(\abs_diff_reg[12]_45 [0]),
        .I2(\abs_diff_reg[0]_46 [0]),
        .O(\adder[14]__0_carry_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__0_carry_i_4 
       (.I0(\adder[14]__0_carry_i_1_n_0 ),
        .I1(\abs_diff_reg[12]_45 [3]),
        .I2(\abs_diff_reg[8]_47 [3]),
        .I3(\abs_diff_reg[0]_46 [3]),
        .O(\adder[14]__0_carry_i_4_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__0_carry_i_5 
       (.I0(\abs_diff_reg[12]_45 [2]),
        .I1(\abs_diff_reg[8]_47 [2]),
        .I2(\abs_diff_reg[0]_46 [2]),
        .I3(\adder[14]__0_carry_i_2_n_0 ),
        .O(\adder[14]__0_carry_i_5_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__0_carry_i_6 
       (.I0(\abs_diff_reg[12]_45 [1]),
        .I1(\abs_diff_reg[8]_47 [1]),
        .I2(\abs_diff_reg[0]_46 [1]),
        .I3(\adder[14]__0_carry_i_3_n_0 ),
        .O(\adder[14]__0_carry_i_6_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \adder[14]__0_carry_i_7 
       (.I0(\abs_diff_reg[8]_47 [0]),
        .I1(\abs_diff_reg[12]_45 [0]),
        .I2(\abs_diff_reg[0]_46 [0]),
        .O(\adder[14]__0_carry_i_7_n_0 ));
  CARRY4 \adder[14]__14_carry 
       (.CI(1'b0),
        .CO({\adder[14]__14_carry_n_0 ,\adder[14]__14_carry_n_1 ,\adder[14]__14_carry_n_2 ,\adder[14]__14_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\adder[14]__14_carry_i_1_n_0 ,\adder[14]__14_carry_i_2_n_0 ,\adder[14]__14_carry_i_3_n_0 ,1'b0}),
        .O({\adder[14]__14_carry_n_4 ,\adder[14]__14_carry_n_5 ,\adder[14]__14_carry_n_6 ,\adder[14]__14_carry_n_7 }),
        .S({\adder[14]__14_carry_i_4_n_0 ,\adder[14]__14_carry_i_5_n_0 ,\adder[14]__14_carry_i_6_n_0 ,\adder[14]__14_carry_i_7_n_0 }));
  CARRY4 \adder[14]__14_carry__0 
       (.CI(\adder[14]__14_carry_n_0 ),
        .CO({\NLW_adder[14]__14_carry__0_CO_UNCONNECTED [3:2],\adder[14]__14_carry__0_n_2 ,\NLW_adder[14]__14_carry__0_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\adder[14]__14_carry__0_i_1_n_0 }),
        .O({\NLW_adder[14]__14_carry__0_O_UNCONNECTED [3:1],\adder[14]__14_carry__0_n_7 }),
        .S({1'b0,1'b0,1'b1,\adder[14]__14_carry__0_i_2_n_0 }));
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__14_carry__0_i_1 
       (.I0(\abs_diff_reg[11]_42 [3]),
        .I1(\abs_diff_reg[10]_44 [3]),
        .I2(\abs_diff_reg[9]_43 [3]),
        .O(\adder[14]__14_carry__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__14_carry__0_i_2 
       (.I0(\abs_diff_reg[11]_42 [3]),
        .I1(\abs_diff_reg[10]_44 [3]),
        .I2(\abs_diff_reg[9]_43 [3]),
        .O(\adder[14]__14_carry__0_i_2_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__14_carry_i_1 
       (.I0(\abs_diff_reg[11]_42 [2]),
        .I1(\abs_diff_reg[10]_44 [2]),
        .I2(\abs_diff_reg[9]_43 [2]),
        .O(\adder[14]__14_carry_i_1_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__14_carry_i_2 
       (.I0(\abs_diff_reg[11]_42 [1]),
        .I1(\abs_diff_reg[10]_44 [1]),
        .I2(\abs_diff_reg[9]_43 [1]),
        .O(\adder[14]__14_carry_i_2_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__14_carry_i_3 
       (.I0(\abs_diff_reg[10]_44 [0]),
        .I1(\abs_diff_reg[11]_42 [0]),
        .I2(\abs_diff_reg[9]_43 [0]),
        .O(\adder[14]__14_carry_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__14_carry_i_4 
       (.I0(\adder[14]__14_carry_i_1_n_0 ),
        .I1(\abs_diff_reg[11]_42 [3]),
        .I2(\abs_diff_reg[10]_44 [3]),
        .I3(\abs_diff_reg[9]_43 [3]),
        .O(\adder[14]__14_carry_i_4_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__14_carry_i_5 
       (.I0(\abs_diff_reg[11]_42 [2]),
        .I1(\abs_diff_reg[10]_44 [2]),
        .I2(\abs_diff_reg[9]_43 [2]),
        .I3(\adder[14]__14_carry_i_2_n_0 ),
        .O(\adder[14]__14_carry_i_5_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__14_carry_i_6 
       (.I0(\abs_diff_reg[11]_42 [1]),
        .I1(\abs_diff_reg[10]_44 [1]),
        .I2(\abs_diff_reg[9]_43 [1]),
        .I3(\adder[14]__14_carry_i_3_n_0 ),
        .O(\adder[14]__14_carry_i_6_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \adder[14]__14_carry_i_7 
       (.I0(\abs_diff_reg[10]_44 [0]),
        .I1(\abs_diff_reg[11]_42 [0]),
        .I2(\abs_diff_reg[9]_43 [0]),
        .O(\adder[14]__14_carry_i_7_n_0 ));
  CARRY4 \adder[14]__28_carry 
       (.CI(1'b0),
        .CO({\adder[14]__28_carry_n_0 ,\adder[14]__28_carry_n_1 ,\adder[14]__28_carry_n_2 ,\adder[14]__28_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\adder[14]__28_carry_i_1_n_0 ,\adder[14]__28_carry_i_2_n_0 ,\adder[14]__28_carry_i_3_n_0 ,1'b0}),
        .O({\adder[14]__28_carry_n_4 ,\adder[14]__28_carry_n_5 ,\adder[14]__28_carry_n_6 ,\adder[14]__28_carry_n_7 }),
        .S({\adder[14]__28_carry_i_4_n_0 ,\adder[14]__28_carry_i_5_n_0 ,\adder[14]__28_carry_i_6_n_0 ,\adder[14]__28_carry_i_7_n_0 }));
  CARRY4 \adder[14]__28_carry__0 
       (.CI(\adder[14]__28_carry_n_0 ),
        .CO({\NLW_adder[14]__28_carry__0_CO_UNCONNECTED [3:2],\adder[14]__28_carry__0_n_2 ,\NLW_adder[14]__28_carry__0_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\adder[14]__28_carry__0_i_1_n_0 }),
        .O({\NLW_adder[14]__28_carry__0_O_UNCONNECTED [3:1],\adder[14]__28_carry__0_n_7 }),
        .S({1'b0,1'b0,1'b1,\adder[14]__28_carry__0_i_2_n_0 }));
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__28_carry__0_i_1 
       (.I0(\abs_diff_reg[15]_39 [3]),
        .I1(\abs_diff_reg[14]_41 [3]),
        .I2(\abs_diff_reg[13]_40 [3]),
        .O(\adder[14]__28_carry__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__28_carry__0_i_2 
       (.I0(\abs_diff_reg[15]_39 [3]),
        .I1(\abs_diff_reg[14]_41 [3]),
        .I2(\abs_diff_reg[13]_40 [3]),
        .O(\adder[14]__28_carry__0_i_2_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__28_carry_i_1 
       (.I0(\abs_diff_reg[15]_39 [2]),
        .I1(\abs_diff_reg[14]_41 [2]),
        .I2(\abs_diff_reg[13]_40 [2]),
        .O(\adder[14]__28_carry_i_1_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__28_carry_i_2 
       (.I0(\abs_diff_reg[15]_39 [1]),
        .I1(\abs_diff_reg[14]_41 [1]),
        .I2(\abs_diff_reg[13]_40 [1]),
        .O(\adder[14]__28_carry_i_2_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__28_carry_i_3 
       (.I0(\abs_diff_reg[14]_41 [0]),
        .I1(\abs_diff_reg[15]_39 [0]),
        .I2(\abs_diff_reg[13]_40 [0]),
        .O(\adder[14]__28_carry_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__28_carry_i_4 
       (.I0(\adder[14]__28_carry_i_1_n_0 ),
        .I1(\abs_diff_reg[15]_39 [3]),
        .I2(\abs_diff_reg[14]_41 [3]),
        .I3(\abs_diff_reg[13]_40 [3]),
        .O(\adder[14]__28_carry_i_4_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__28_carry_i_5 
       (.I0(\abs_diff_reg[15]_39 [2]),
        .I1(\abs_diff_reg[14]_41 [2]),
        .I2(\abs_diff_reg[13]_40 [2]),
        .I3(\adder[14]__28_carry_i_2_n_0 ),
        .O(\adder[14]__28_carry_i_5_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__28_carry_i_6 
       (.I0(\abs_diff_reg[15]_39 [1]),
        .I1(\abs_diff_reg[14]_41 [1]),
        .I2(\abs_diff_reg[13]_40 [1]),
        .I3(\adder[14]__28_carry_i_3_n_0 ),
        .O(\adder[14]__28_carry_i_6_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \adder[14]__28_carry_i_7 
       (.I0(\abs_diff_reg[14]_41 [0]),
        .I1(\abs_diff_reg[15]_39 [0]),
        .I2(\abs_diff_reg[13]_40 [0]),
        .O(\adder[14]__28_carry_i_7_n_0 ));
  CARRY4 \adder[14]__42_carry 
       (.CI(1'b0),
        .CO({\adder[14]__42_carry_n_0 ,\adder[14]__42_carry_n_1 ,\adder[14]__42_carry_n_2 ,\adder[14]__42_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\adder[14]__42_carry_i_1_n_0 ,\adder[14]__42_carry_i_2_n_0 ,\adder[14]__42_carry_i_3_n_0 ,1'b0}),
        .O({\adder[14]__42_carry_n_4 ,\adder[14]__42_carry_n_5 ,\adder[14]__42_carry_n_6 ,\adder[14]__42_carry_n_7 }),
        .S({\adder[14]__42_carry_i_4_n_0 ,\adder[14]__42_carry_i_5_n_0 ,\adder[14]__42_carry_i_6_n_0 ,\adder[14]__42_carry_i_7_n_0 }));
  CARRY4 \adder[14]__42_carry__0 
       (.CI(\adder[14]__42_carry_n_0 ),
        .CO({\NLW_adder[14]__42_carry__0_CO_UNCONNECTED [3:2],\adder[14]__42_carry__0_n_2 ,\NLW_adder[14]__42_carry__0_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\adder[14]__42_carry__0_i_1_n_0 }),
        .O({\NLW_adder[14]__42_carry__0_O_UNCONNECTED [3:1],\adder[14]__42_carry__0_n_7 }),
        .S({1'b0,1'b0,1'b1,\adder[14]__42_carry__0_i_2_n_0 }));
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__42_carry__0_i_1 
       (.I0(\abs_diff_reg[1]_36 [3]),
        .I1(\abs_diff_reg[4]_38 [3]),
        .I2(\abs_diff_reg[2]_37 [3]),
        .O(\adder[14]__42_carry__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__42_carry__0_i_2 
       (.I0(\abs_diff_reg[1]_36 [3]),
        .I1(\abs_diff_reg[4]_38 [3]),
        .I2(\abs_diff_reg[2]_37 [3]),
        .O(\adder[14]__42_carry__0_i_2_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__42_carry_i_1 
       (.I0(\abs_diff_reg[1]_36 [2]),
        .I1(\abs_diff_reg[4]_38 [2]),
        .I2(\abs_diff_reg[2]_37 [2]),
        .O(\adder[14]__42_carry_i_1_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__42_carry_i_2 
       (.I0(\abs_diff_reg[1]_36 [1]),
        .I1(\abs_diff_reg[4]_38 [1]),
        .I2(\abs_diff_reg[2]_37 [1]),
        .O(\adder[14]__42_carry_i_2_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__42_carry_i_3 
       (.I0(\abs_diff_reg[4]_38 [0]),
        .I1(\abs_diff_reg[1]_36 [0]),
        .I2(\abs_diff_reg[2]_37 [0]),
        .O(\adder[14]__42_carry_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__42_carry_i_4 
       (.I0(\adder[14]__42_carry_i_1_n_0 ),
        .I1(\abs_diff_reg[1]_36 [3]),
        .I2(\abs_diff_reg[4]_38 [3]),
        .I3(\abs_diff_reg[2]_37 [3]),
        .O(\adder[14]__42_carry_i_4_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__42_carry_i_5 
       (.I0(\abs_diff_reg[1]_36 [2]),
        .I1(\abs_diff_reg[4]_38 [2]),
        .I2(\abs_diff_reg[2]_37 [2]),
        .I3(\adder[14]__42_carry_i_2_n_0 ),
        .O(\adder[14]__42_carry_i_5_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__42_carry_i_6 
       (.I0(\abs_diff_reg[1]_36 [1]),
        .I1(\abs_diff_reg[4]_38 [1]),
        .I2(\abs_diff_reg[2]_37 [1]),
        .I3(\adder[14]__42_carry_i_3_n_0 ),
        .O(\adder[14]__42_carry_i_6_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \adder[14]__42_carry_i_7 
       (.I0(\abs_diff_reg[4]_38 [0]),
        .I1(\abs_diff_reg[1]_36 [0]),
        .I2(\abs_diff_reg[2]_37 [0]),
        .O(\adder[14]__42_carry_i_7_n_0 ));
  CARRY4 \adder[14]__56_carry 
       (.CI(1'b0),
        .CO({\adder[14]__56_carry_n_0 ,\adder[14]__56_carry_n_1 ,\adder[14]__56_carry_n_2 ,\adder[14]__56_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\adder[14]__56_carry_i_1_n_0 ,\adder[14]__56_carry_i_2_n_0 ,\adder[14]__56_carry_i_3_n_0 ,1'b0}),
        .O({\adder[14]__56_carry_n_4 ,\adder[14]__56_carry_n_5 ,\adder[14]__56_carry_n_6 ,\adder[14]__56_carry_n_7 }),
        .S({\adder[14]__56_carry_i_4_n_0 ,\adder[14]__56_carry_i_5_n_0 ,\adder[14]__56_carry_i_6_n_0 ,\adder[14]__56_carry_i_7_n_0 }));
  CARRY4 \adder[14]__56_carry__0 
       (.CI(\adder[14]__56_carry_n_0 ),
        .CO({\NLW_adder[14]__56_carry__0_CO_UNCONNECTED [3:2],\adder[14]__56_carry__0_n_2 ,\NLW_adder[14]__56_carry__0_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\adder[14]__56_carry__0_i_1_n_0 }),
        .O({\NLW_adder[14]__56_carry__0_O_UNCONNECTED [3:1],\adder[14]__56_carry__0_n_7 }),
        .S({1'b0,1'b0,1'b1,\adder[14]__56_carry__0_i_2_n_0 }));
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__56_carry__0_i_1 
       (.I0(\abs_diff_reg[5]_33 [3]),
        .I1(\abs_diff_reg[3]_35 [3]),
        .I2(\abs_diff_reg[6]_34 [3]),
        .O(\adder[14]__56_carry__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__56_carry__0_i_2 
       (.I0(\abs_diff_reg[5]_33 [3]),
        .I1(\abs_diff_reg[3]_35 [3]),
        .I2(\abs_diff_reg[6]_34 [3]),
        .O(\adder[14]__56_carry__0_i_2_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__56_carry_i_1 
       (.I0(\abs_diff_reg[5]_33 [2]),
        .I1(\abs_diff_reg[3]_35 [2]),
        .I2(\abs_diff_reg[6]_34 [2]),
        .O(\adder[14]__56_carry_i_1_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__56_carry_i_2 
       (.I0(\abs_diff_reg[5]_33 [1]),
        .I1(\abs_diff_reg[3]_35 [1]),
        .I2(\abs_diff_reg[6]_34 [1]),
        .O(\adder[14]__56_carry_i_2_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__56_carry_i_3 
       (.I0(\abs_diff_reg[3]_35 [0]),
        .I1(\abs_diff_reg[5]_33 [0]),
        .I2(\abs_diff_reg[6]_34 [0]),
        .O(\adder[14]__56_carry_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__56_carry_i_4 
       (.I0(\adder[14]__56_carry_i_1_n_0 ),
        .I1(\abs_diff_reg[5]_33 [3]),
        .I2(\abs_diff_reg[3]_35 [3]),
        .I3(\abs_diff_reg[6]_34 [3]),
        .O(\adder[14]__56_carry_i_4_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__56_carry_i_5 
       (.I0(\abs_diff_reg[5]_33 [2]),
        .I1(\abs_diff_reg[3]_35 [2]),
        .I2(\abs_diff_reg[6]_34 [2]),
        .I3(\adder[14]__56_carry_i_2_n_0 ),
        .O(\adder[14]__56_carry_i_5_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__56_carry_i_6 
       (.I0(\abs_diff_reg[5]_33 [1]),
        .I1(\abs_diff_reg[3]_35 [1]),
        .I2(\abs_diff_reg[6]_34 [1]),
        .I3(\adder[14]__56_carry_i_3_n_0 ),
        .O(\adder[14]__56_carry_i_6_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \adder[14]__56_carry_i_7 
       (.I0(\abs_diff_reg[3]_35 [0]),
        .I1(\abs_diff_reg[5]_33 [0]),
        .I2(\abs_diff_reg[6]_34 [0]),
        .O(\adder[14]__56_carry_i_7_n_0 ));
  CARRY4 \adder[14]__70_carry 
       (.CI(1'b0),
        .CO({\adder[14]__70_carry_n_0 ,\adder[14]__70_carry_n_1 ,\adder[14]__70_carry_n_2 ,\adder[14]__70_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\adder[14]__70_carry_i_1_n_0 ,\adder[14]__70_carry_i_2_n_0 ,\adder[14]__70_carry_i_3_n_0 ,1'b0}),
        .O({\adder[14]__70_carry_n_4 ,\adder[14]__70_carry_n_5 ,\adder[14]__70_carry_n_6 ,\adder[14]__70_carry_n_7 }),
        .S({\adder[14]__70_carry_i_4_n_0 ,\adder[14]__70_carry_i_5_n_0 ,\adder[14]__70_carry_i_6_n_0 ,\adder[14]__70_carry_i_7_n_0 }));
  CARRY4 \adder[14]__70_carry__0 
       (.CI(\adder[14]__70_carry_n_0 ),
        .CO({\adder[14]__70_carry__0_n_0 ,\NLW_adder[14]__70_carry__0_CO_UNCONNECTED [2],\adder[14]__70_carry__0_n_2 ,\adder[14]__70_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\adder[14]__70_carry__0_i_1_n_0 ,\adder[14]__70_carry__0_i_2_n_0 ,\adder[14]__70_carry__0_i_3_n_0 }),
        .O({\NLW_adder[14]__70_carry__0_O_UNCONNECTED [3],\adder[14]__70_carry__0_n_5 ,\adder[14]__70_carry__0_n_6 ,\adder[14]__70_carry__0_n_7 }),
        .S({1'b1,\adder[14]__70_carry__0_i_4_n_0 ,\adder[14]__70_carry__0_i_5_n_0 ,\adder[14]__70_carry__0_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h8)) 
    \adder[14]__70_carry__0_i_1 
       (.I0(\adder[14]__0_carry__0_n_2 ),
        .I1(\adder[14]__14_carry__0_n_2 ),
        .O(\adder[14]__70_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adder[14]__70_carry__0_i_2 
       (.I0(\adder[14]__0_carry__0_n_7 ),
        .I1(\adder[14]__14_carry__0_n_7 ),
        .O(\adder[14]__70_carry__0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__70_carry__0_i_3 
       (.I0(\adder[14]__14_carry_n_4 ),
        .I1(\abs_diff_reg[7]_32 [3]),
        .I2(\adder[14]__0_carry_n_4 ),
        .O(\adder[14]__70_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adder[14]__70_carry__0_i_4 
       (.I0(\adder[14]__0_carry__0_n_2 ),
        .I1(\adder[14]__14_carry__0_n_2 ),
        .O(\adder[14]__70_carry__0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \adder[14]__70_carry__0_i_5 
       (.I0(\adder[14]__14_carry__0_n_7 ),
        .I1(\adder[14]__0_carry__0_n_7 ),
        .I2(\adder[14]__0_carry__0_n_2 ),
        .I3(\adder[14]__14_carry__0_n_2 ),
        .O(\adder[14]__70_carry__0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \adder[14]__70_carry__0_i_6 
       (.I0(\adder[14]__0_carry_n_4 ),
        .I1(\abs_diff_reg[7]_32 [3]),
        .I2(\adder[14]__14_carry_n_4 ),
        .I3(\adder[14]__14_carry__0_n_7 ),
        .I4(\adder[14]__0_carry__0_n_7 ),
        .O(\adder[14]__70_carry__0_i_6_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__70_carry_i_1 
       (.I0(\adder[14]__14_carry_n_5 ),
        .I1(\abs_diff_reg[7]_32 [2]),
        .I2(\adder[14]__0_carry_n_5 ),
        .O(\adder[14]__70_carry_i_1_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__70_carry_i_2 
       (.I0(\adder[14]__14_carry_n_6 ),
        .I1(\abs_diff_reg[7]_32 [1]),
        .I2(\adder[14]__0_carry_n_6 ),
        .O(\adder[14]__70_carry_i_2_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__70_carry_i_3 
       (.I0(\abs_diff_reg[7]_32 [0]),
        .I1(\adder[14]__14_carry_n_7 ),
        .I2(\adder[14]__0_carry_n_7 ),
        .O(\adder[14]__70_carry_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__70_carry_i_4 
       (.I0(\adder[14]__70_carry_i_1_n_0 ),
        .I1(\adder[14]__14_carry_n_4 ),
        .I2(\abs_diff_reg[7]_32 [3]),
        .I3(\adder[14]__0_carry_n_4 ),
        .O(\adder[14]__70_carry_i_4_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__70_carry_i_5 
       (.I0(\adder[14]__14_carry_n_5 ),
        .I1(\abs_diff_reg[7]_32 [2]),
        .I2(\adder[14]__0_carry_n_5 ),
        .I3(\adder[14]__70_carry_i_2_n_0 ),
        .O(\adder[14]__70_carry_i_5_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__70_carry_i_6 
       (.I0(\adder[14]__14_carry_n_6 ),
        .I1(\abs_diff_reg[7]_32 [1]),
        .I2(\adder[14]__0_carry_n_6 ),
        .I3(\adder[14]__70_carry_i_3_n_0 ),
        .O(\adder[14]__70_carry_i_6_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \adder[14]__70_carry_i_7 
       (.I0(\abs_diff_reg[7]_32 [0]),
        .I1(\adder[14]__14_carry_n_7 ),
        .I2(\adder[14]__0_carry_n_7 ),
        .O(\adder[14]__70_carry_i_7_n_0 ));
  CARRY4 \adder[14]__92_carry 
       (.CI(1'b0),
        .CO({\adder[14]__92_carry_n_0 ,\adder[14]__92_carry_n_1 ,\adder[14]__92_carry_n_2 ,\adder[14]__92_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\adder[14]__92_carry_i_1_n_0 ,\adder[14]__92_carry_i_2_n_0 ,\adder[14]__92_carry_i_3_n_0 ,\adder[14]__28_carry_n_7 }),
        .O({\adder[14]__92_carry_n_4 ,\adder[14]__92_carry_n_5 ,\adder[14]__92_carry_n_6 ,\adder[14]__92_carry_n_7 }),
        .S({\adder[14]__92_carry_i_4_n_0 ,\adder[14]__92_carry_i_5_n_0 ,\adder[14]__92_carry_i_6_n_0 ,\adder[14]__92_carry_i_7_n_0 }));
  CARRY4 \adder[14]__92_carry__0 
       (.CI(\adder[14]__92_carry_n_0 ),
        .CO({\adder[14]__92_carry__0_n_0 ,\adder[14]__92_carry__0_n_1 ,\adder[14]__92_carry__0_n_2 ,\adder[14]__92_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\adder[14]__70_carry__0_n_0 ,\adder[14]__92_carry__0_i_1_n_0 ,\adder[14]__92_carry__0_i_2_n_0 ,\adder[14]__92_carry__0_i_3_n_0 }),
        .O({\adder[14]__92_carry__0_n_4 ,\adder[14]__92_carry__0_n_5 ,\adder[14]__92_carry__0_n_6 ,\adder[14]__92_carry__0_n_7 }),
        .S({\adder[14]__92_carry__0_i_4_n_0 ,\adder[14]__92_carry__0_i_5_n_0 ,\adder[14]__92_carry__0_i_6_n_0 ,\adder[14]__92_carry__0_i_7_n_0 }));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \adder[14]__92_carry__0_i_1 
       (.I0(\adder[14]__70_carry__0_n_7 ),
        .I1(\adder[14]__42_carry__0_n_7 ),
        .I2(\adder[14]__56_carry__0_n_7 ),
        .I3(\adder[14]__28_carry__0_n_2 ),
        .I4(\adder[14]__92_carry__0_i_8_n_0 ),
        .O(\adder[14]__92_carry__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \adder[14]__92_carry__0_i_10 
       (.I0(\adder[14]__56_carry_n_4 ),
        .I1(\adder[14]__42_carry_n_4 ),
        .I2(\adder[14]__70_carry_n_4 ),
        .O(\adder[14]__92_carry__0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \adder[14]__92_carry__0_i_11 
       (.I0(\adder[14]__70_carry__0_n_7 ),
        .I1(\adder[14]__42_carry__0_n_7 ),
        .I2(\adder[14]__56_carry__0_n_7 ),
        .O(\adder[14]__92_carry__0_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \adder[14]__92_carry__0_i_12 
       (.I0(\adder[14]__70_carry_n_4 ),
        .I1(\adder[14]__42_carry_n_4 ),
        .I2(\adder[14]__56_carry_n_4 ),
        .O(\adder[14]__92_carry__0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \adder[14]__92_carry__0_i_13 
       (.I0(\adder[14]__56_carry__0_n_2 ),
        .I1(\adder[14]__42_carry__0_n_2 ),
        .I2(\adder[14]__70_carry__0_n_6 ),
        .I3(\adder[14]__28_carry__0_n_2 ),
        .O(\adder[14]__92_carry__0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h17)) 
    \adder[14]__92_carry__0_i_14 
       (.I0(\adder[14]__70_carry_n_5 ),
        .I1(\adder[14]__42_carry_n_5 ),
        .I2(\adder[14]__56_carry_n_5 ),
        .O(\adder[14]__92_carry__0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \adder[14]__92_carry__0_i_15 
       (.I0(\adder[14]__56_carry__0_n_7 ),
        .I1(\adder[14]__42_carry__0_n_7 ),
        .I2(\adder[14]__70_carry__0_n_7 ),
        .I3(\adder[14]__28_carry__0_n_7 ),
        .O(\adder[14]__92_carry__0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \adder[14]__92_carry__0_i_2 
       (.I0(\adder[14]__70_carry_n_4 ),
        .I1(\adder[14]__42_carry_n_4 ),
        .I2(\adder[14]__56_carry_n_4 ),
        .I3(\adder[14]__28_carry__0_n_7 ),
        .I4(\adder[14]__92_carry__0_i_9_n_0 ),
        .O(\adder[14]__92_carry__0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \adder[14]__92_carry__0_i_3 
       (.I0(\adder[14]__70_carry_n_5 ),
        .I1(\adder[14]__42_carry_n_5 ),
        .I2(\adder[14]__56_carry_n_5 ),
        .I3(\adder[14]__28_carry_n_4 ),
        .I4(\adder[14]__92_carry__0_i_10_n_0 ),
        .O(\adder[14]__92_carry__0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h17FFE800)) 
    \adder[14]__92_carry__0_i_4 
       (.I0(\adder[14]__70_carry__0_n_6 ),
        .I1(\adder[14]__42_carry__0_n_2 ),
        .I2(\adder[14]__56_carry__0_n_2 ),
        .I3(\adder[14]__70_carry__0_n_5 ),
        .I4(\adder[14]__70_carry__0_n_0 ),
        .O(\adder[14]__92_carry__0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB224244D4DDBDBB2)) 
    \adder[14]__92_carry__0_i_5 
       (.I0(\adder[14]__28_carry__0_n_2 ),
        .I1(\adder[14]__92_carry__0_i_11_n_0 ),
        .I2(\adder[14]__70_carry__0_n_6 ),
        .I3(\adder[14]__42_carry__0_n_2 ),
        .I4(\adder[14]__56_carry__0_n_2 ),
        .I5(\adder[14]__70_carry__0_n_5 ),
        .O(\adder[14]__92_carry__0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4DDBDBB2B224244D)) 
    \adder[14]__92_carry__0_i_6 
       (.I0(\adder[14]__28_carry__0_n_7 ),
        .I1(\adder[14]__92_carry__0_i_12_n_0 ),
        .I2(\adder[14]__70_carry__0_n_7 ),
        .I3(\adder[14]__42_carry__0_n_7 ),
        .I4(\adder[14]__56_carry__0_n_7 ),
        .I5(\adder[14]__92_carry__0_i_13_n_0 ),
        .O(\adder[14]__92_carry__0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4DDBDBB2B224244D)) 
    \adder[14]__92_carry__0_i_7 
       (.I0(\adder[14]__28_carry_n_4 ),
        .I1(\adder[14]__92_carry__0_i_14_n_0 ),
        .I2(\adder[14]__70_carry_n_4 ),
        .I3(\adder[14]__42_carry_n_4 ),
        .I4(\adder[14]__56_carry_n_4 ),
        .I5(\adder[14]__92_carry__0_i_15_n_0 ),
        .O(\adder[14]__92_carry__0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \adder[14]__92_carry__0_i_8 
       (.I0(\adder[14]__56_carry__0_n_2 ),
        .I1(\adder[14]__42_carry__0_n_2 ),
        .I2(\adder[14]__70_carry__0_n_6 ),
        .O(\adder[14]__92_carry__0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \adder[14]__92_carry__0_i_9 
       (.I0(\adder[14]__56_carry__0_n_7 ),
        .I1(\adder[14]__42_carry__0_n_7 ),
        .I2(\adder[14]__70_carry__0_n_7 ),
        .O(\adder[14]__92_carry__0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \adder[14]__92_carry_i_1 
       (.I0(\adder[14]__28_carry_n_5 ),
        .I1(\adder[14]__92_carry_i_8_n_0 ),
        .I2(\adder[14]__70_carry_n_6 ),
        .I3(\adder[14]__42_carry_n_6 ),
        .I4(\adder[14]__56_carry_n_6 ),
        .O(\adder[14]__92_carry_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \adder[14]__92_carry_i_10 
       (.I0(\adder[14]__56_carry_n_4 ),
        .I1(\adder[14]__42_carry_n_4 ),
        .I2(\adder[14]__70_carry_n_4 ),
        .I3(\adder[14]__28_carry_n_4 ),
        .O(\adder[14]__92_carry_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \adder[14]__92_carry_i_2 
       (.I0(\adder[14]__56_carry_n_6 ),
        .I1(\adder[14]__42_carry_n_6 ),
        .I2(\adder[14]__70_carry_n_6 ),
        .I3(\adder[14]__92_carry_i_8_n_0 ),
        .I4(\adder[14]__28_carry_n_5 ),
        .O(\adder[14]__92_carry_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__92_carry_i_3 
       (.I0(\adder[14]__70_carry_n_6 ),
        .I1(\adder[14]__42_carry_n_6 ),
        .I2(\adder[14]__56_carry_n_6 ),
        .I3(\adder[14]__28_carry_n_6 ),
        .O(\adder[14]__92_carry_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h177E7EE8E8818117)) 
    \adder[14]__92_carry_i_4 
       (.I0(\adder[14]__92_carry_i_9_n_0 ),
        .I1(\adder[14]__28_carry_n_5 ),
        .I2(\adder[14]__70_carry_n_5 ),
        .I3(\adder[14]__42_carry_n_5 ),
        .I4(\adder[14]__56_carry_n_5 ),
        .I5(\adder[14]__92_carry_i_10_n_0 ),
        .O(\adder[14]__92_carry_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    \adder[14]__92_carry_i_5 
       (.I0(\adder[14]__28_carry_n_5 ),
        .I1(\adder[14]__92_carry_i_8_n_0 ),
        .I2(\adder[14]__56_carry_n_6 ),
        .I3(\adder[14]__42_carry_n_6 ),
        .I4(\adder[14]__70_carry_n_6 ),
        .I5(\adder[14]__28_carry_n_6 ),
        .O(\adder[14]__92_carry_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h566A)) 
    \adder[14]__92_carry_i_6 
       (.I0(\adder[14]__92_carry_i_3_n_0 ),
        .I1(\adder[14]__56_carry_n_7 ),
        .I2(\adder[14]__70_carry_n_7 ),
        .I3(\adder[14]__42_carry_n_7 ),
        .O(\adder[14]__92_carry_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \adder[14]__92_carry_i_7 
       (.I0(\adder[14]__70_carry_n_7 ),
        .I1(\adder[14]__56_carry_n_7 ),
        .I2(\adder[14]__42_carry_n_7 ),
        .I3(\adder[14]__28_carry_n_7 ),
        .O(\adder[14]__92_carry_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \adder[14]__92_carry_i_8 
       (.I0(\adder[14]__56_carry_n_5 ),
        .I1(\adder[14]__42_carry_n_5 ),
        .I2(\adder[14]__70_carry_n_5 ),
        .O(\adder[14]__92_carry_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \adder[14]__92_carry_i_9 
       (.I0(\adder[14]__70_carry_n_6 ),
        .I1(\adder[14]__42_carry_n_6 ),
        .I2(\adder[14]__56_carry_n_6 ),
        .O(\adder[14]__92_carry_i_9_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[0]),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[1]),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[2]),
        .Q(axi_araddr[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[3]),
        .Q(axi_araddr[5]),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(s00_axi_arready),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(p_0_in[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(p_0_in[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    axi_awready_i_2
       (.I0(s00_axi_awready),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(axi_awready_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_4 
       (.I0(\prev[12]_15 [0]),
        .I1(\prev[8]_11 [0]),
        .I2(axi_araddr[3]),
        .I3(\prev[4]_7 [0]),
        .I4(axi_araddr[2]),
        .I5(\prev[0]_3 [0]),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_5 
       (.I0(\curr[12]_31 [0]),
        .I1(\curr[8]_27 [0]),
        .I2(axi_araddr[3]),
        .I3(\curr[4]_23 [0]),
        .I4(axi_araddr[2]),
        .I5(\curr[0]_19 [0]),
        .O(\axi_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_6 
       (.I0(slv_reg11[0]),
        .I1(slv_reg10[0]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[0]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[0] ),
        .O(\axi_rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_7 
       (.I0(slv_reg15[0]),
        .I1(slv_reg14[0]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[0]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[0]),
        .O(\axi_rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_4 
       (.I0(\prev[14]_13 [2]),
        .I1(\prev[10]_9 [2]),
        .I2(axi_araddr[3]),
        .I3(\prev[6]_5 [2]),
        .I4(axi_araddr[2]),
        .I5(\prev[2]_1 [2]),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_5 
       (.I0(\curr[14]_29 [2]),
        .I1(\curr[10]_25 [2]),
        .I2(axi_araddr[3]),
        .I3(\curr[6]_21 [2]),
        .I4(axi_araddr[2]),
        .I5(\curr[2]_17 [2]),
        .O(\axi_rdata[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_6 
       (.I0(slv_reg11[10]),
        .I1(slv_reg10[10]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[10]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[10] ),
        .O(\axi_rdata[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_7 
       (.I0(slv_reg15[10]),
        .I1(slv_reg14[10]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[10]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[10]),
        .O(\axi_rdata[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_4 
       (.I0(\prev[14]_13 [3]),
        .I1(\prev[10]_9 [3]),
        .I2(axi_araddr[3]),
        .I3(\prev[6]_5 [3]),
        .I4(axi_araddr[2]),
        .I5(\prev[2]_1 [3]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_5 
       (.I0(\curr[14]_29 [3]),
        .I1(\curr[10]_25 [3]),
        .I2(axi_araddr[3]),
        .I3(\curr[6]_21 [3]),
        .I4(axi_araddr[2]),
        .I5(\curr[2]_17 [3]),
        .O(\axi_rdata[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_6 
       (.I0(slv_reg11[11]),
        .I1(slv_reg10[11]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[11]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[11] ),
        .O(\axi_rdata[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_7 
       (.I0(slv_reg15[11]),
        .I1(slv_reg14[11]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[11]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[11]),
        .O(\axi_rdata[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_4 
       (.I0(\prev[15]_12 [0]),
        .I1(\prev[11]_8 [0]),
        .I2(axi_araddr[3]),
        .I3(\prev[7]_4 [0]),
        .I4(axi_araddr[2]),
        .I5(\prev[3]_0 [0]),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_5 
       (.I0(\curr[15]_28 [0]),
        .I1(\curr[11]_24 [0]),
        .I2(axi_araddr[3]),
        .I3(\curr[7]_20 [0]),
        .I4(axi_araddr[2]),
        .I5(\curr[3]_16 [0]),
        .O(\axi_rdata[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_6 
       (.I0(slv_reg11[12]),
        .I1(slv_reg10[12]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[12]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[12] ),
        .O(\axi_rdata[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_7 
       (.I0(slv_reg15[12]),
        .I1(slv_reg14[12]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[12]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[12]),
        .O(\axi_rdata[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_4 
       (.I0(\prev[15]_12 [1]),
        .I1(\prev[11]_8 [1]),
        .I2(axi_araddr[3]),
        .I3(\prev[7]_4 [1]),
        .I4(axi_araddr[2]),
        .I5(\prev[3]_0 [1]),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_5 
       (.I0(\curr[15]_28 [1]),
        .I1(\curr[11]_24 [1]),
        .I2(axi_araddr[3]),
        .I3(\curr[7]_20 [1]),
        .I4(axi_araddr[2]),
        .I5(\curr[3]_16 [1]),
        .O(\axi_rdata[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_6 
       (.I0(slv_reg11[13]),
        .I1(slv_reg10[13]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[13]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[13] ),
        .O(\axi_rdata[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_7 
       (.I0(slv_reg15[13]),
        .I1(slv_reg14[13]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[13]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[13]),
        .O(\axi_rdata[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_4 
       (.I0(\prev[15]_12 [2]),
        .I1(\prev[11]_8 [2]),
        .I2(axi_araddr[3]),
        .I3(\prev[7]_4 [2]),
        .I4(axi_araddr[2]),
        .I5(\prev[3]_0 [2]),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_5 
       (.I0(\curr[15]_28 [2]),
        .I1(\curr[11]_24 [2]),
        .I2(axi_araddr[3]),
        .I3(\curr[7]_20 [2]),
        .I4(axi_araddr[2]),
        .I5(\curr[3]_16 [2]),
        .O(\axi_rdata[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_6 
       (.I0(slv_reg11[14]),
        .I1(slv_reg10[14]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[14]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[14] ),
        .O(\axi_rdata[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_7 
       (.I0(slv_reg15[14]),
        .I1(slv_reg14[14]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[14]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[14]),
        .O(\axi_rdata[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_4 
       (.I0(\prev[15]_12 [3]),
        .I1(\prev[11]_8 [3]),
        .I2(axi_araddr[3]),
        .I3(\prev[7]_4 [3]),
        .I4(axi_araddr[2]),
        .I5(\prev[3]_0 [3]),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_5 
       (.I0(\curr[15]_28 [3]),
        .I1(\curr[11]_24 [3]),
        .I2(axi_araddr[3]),
        .I3(\curr[7]_20 [3]),
        .I4(axi_araddr[2]),
        .I5(\curr[3]_16 [3]),
        .O(\axi_rdata[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_6 
       (.I0(slv_reg11[15]),
        .I1(slv_reg10[15]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[15]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[15] ),
        .O(\axi_rdata[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_7 
       (.I0(slv_reg15[15]),
        .I1(slv_reg14[15]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[15]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[15]),
        .O(\axi_rdata[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_4 
       (.I0(\slv_reg3_reg_n_0_[16] ),
        .I1(\slv_reg2_reg_n_0_[16] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[16] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_5 
       (.I0(\slv_reg7_reg_n_0_[16] ),
        .I1(\slv_reg6_reg_n_0_[16] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[16] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_6 
       (.I0(slv_reg11[16]),
        .I1(slv_reg10[16]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[16]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_7 
       (.I0(slv_reg15[16]),
        .I1(slv_reg14[16]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[16]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[16]),
        .O(\axi_rdata[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_4 
       (.I0(\slv_reg3_reg_n_0_[17] ),
        .I1(\slv_reg2_reg_n_0_[17] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[17] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_5 
       (.I0(\slv_reg7_reg_n_0_[17] ),
        .I1(\slv_reg6_reg_n_0_[17] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[17] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_6 
       (.I0(slv_reg11[17]),
        .I1(slv_reg10[17]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[17]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_7 
       (.I0(slv_reg15[17]),
        .I1(slv_reg14[17]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[17]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[17]),
        .O(\axi_rdata[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_4 
       (.I0(\slv_reg3_reg_n_0_[18] ),
        .I1(\slv_reg2_reg_n_0_[18] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[18] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_5 
       (.I0(\slv_reg7_reg_n_0_[18] ),
        .I1(\slv_reg6_reg_n_0_[18] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[18] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_6 
       (.I0(slv_reg11[18]),
        .I1(slv_reg10[18]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[18]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_7 
       (.I0(slv_reg15[18]),
        .I1(slv_reg14[18]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[18]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[18]),
        .O(\axi_rdata[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_4 
       (.I0(\slv_reg3_reg_n_0_[19] ),
        .I1(\slv_reg2_reg_n_0_[19] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[19] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_5 
       (.I0(\slv_reg7_reg_n_0_[19] ),
        .I1(\slv_reg6_reg_n_0_[19] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[19] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_6 
       (.I0(slv_reg11[19]),
        .I1(slv_reg10[19]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[19]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_7 
       (.I0(slv_reg15[19]),
        .I1(slv_reg14[19]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[19]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[19]),
        .O(\axi_rdata[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_4 
       (.I0(\prev[12]_15 [1]),
        .I1(\prev[8]_11 [1]),
        .I2(axi_araddr[3]),
        .I3(\prev[4]_7 [1]),
        .I4(axi_araddr[2]),
        .I5(\prev[0]_3 [1]),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_5 
       (.I0(\curr[12]_31 [1]),
        .I1(\curr[8]_27 [1]),
        .I2(axi_araddr[3]),
        .I3(\curr[4]_23 [1]),
        .I4(axi_araddr[2]),
        .I5(\curr[0]_19 [1]),
        .O(\axi_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_6 
       (.I0(slv_reg11[1]),
        .I1(slv_reg10[1]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[1]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[1] ),
        .O(\axi_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_7 
       (.I0(slv_reg15[1]),
        .I1(slv_reg14[1]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[1]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[1]),
        .O(\axi_rdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_4 
       (.I0(\slv_reg3_reg_n_0_[20] ),
        .I1(\slv_reg2_reg_n_0_[20] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[20] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_5 
       (.I0(\slv_reg7_reg_n_0_[20] ),
        .I1(\slv_reg6_reg_n_0_[20] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[20] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_6 
       (.I0(slv_reg11[20]),
        .I1(slv_reg10[20]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[20]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_7 
       (.I0(slv_reg15[20]),
        .I1(slv_reg14[20]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[20]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[20]),
        .O(\axi_rdata[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_4 
       (.I0(\slv_reg3_reg_n_0_[21] ),
        .I1(\slv_reg2_reg_n_0_[21] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[21] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_5 
       (.I0(\slv_reg7_reg_n_0_[21] ),
        .I1(\slv_reg6_reg_n_0_[21] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[21] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_6 
       (.I0(slv_reg11[21]),
        .I1(slv_reg10[21]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[21]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_7 
       (.I0(slv_reg15[21]),
        .I1(slv_reg14[21]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[21]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[21]),
        .O(\axi_rdata[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_4 
       (.I0(\slv_reg3_reg_n_0_[22] ),
        .I1(\slv_reg2_reg_n_0_[22] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[22] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_5 
       (.I0(\slv_reg7_reg_n_0_[22] ),
        .I1(\slv_reg6_reg_n_0_[22] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[22] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_6 
       (.I0(slv_reg11[22]),
        .I1(slv_reg10[22]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[22]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_7 
       (.I0(slv_reg15[22]),
        .I1(slv_reg14[22]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[22]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[22]),
        .O(\axi_rdata[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_4 
       (.I0(\slv_reg3_reg_n_0_[23] ),
        .I1(\slv_reg2_reg_n_0_[23] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[23] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_5 
       (.I0(\slv_reg7_reg_n_0_[23] ),
        .I1(\slv_reg6_reg_n_0_[23] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[23] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_6 
       (.I0(slv_reg11[23]),
        .I1(slv_reg10[23]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[23]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_7 
       (.I0(slv_reg15[23]),
        .I1(slv_reg14[23]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[23]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[23]),
        .O(\axi_rdata[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_4 
       (.I0(\slv_reg3_reg_n_0_[24] ),
        .I1(\slv_reg2_reg_n_0_[24] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[24] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_5 
       (.I0(\slv_reg7_reg_n_0_[24] ),
        .I1(\slv_reg6_reg_n_0_[24] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[24] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_6 
       (.I0(slv_reg11[24]),
        .I1(slv_reg10[24]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[24]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_7 
       (.I0(slv_reg15[24]),
        .I1(slv_reg14[24]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[24]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[24]),
        .O(\axi_rdata[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_4 
       (.I0(\slv_reg3_reg_n_0_[25] ),
        .I1(\slv_reg2_reg_n_0_[25] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[25] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[25] ),
        .O(\axi_rdata[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_5 
       (.I0(\slv_reg7_reg_n_0_[25] ),
        .I1(\slv_reg6_reg_n_0_[25] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[25] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[25] ),
        .O(\axi_rdata[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_6 
       (.I0(slv_reg11[25]),
        .I1(slv_reg10[25]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[25]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[25] ),
        .O(\axi_rdata[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_7 
       (.I0(slv_reg15[25]),
        .I1(slv_reg14[25]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[25]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[25]),
        .O(\axi_rdata[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_4 
       (.I0(\slv_reg3_reg_n_0_[26] ),
        .I1(\slv_reg2_reg_n_0_[26] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[26] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[26] ),
        .O(\axi_rdata[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_5 
       (.I0(\slv_reg7_reg_n_0_[26] ),
        .I1(\slv_reg6_reg_n_0_[26] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[26] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[26] ),
        .O(\axi_rdata[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_6 
       (.I0(slv_reg11[26]),
        .I1(slv_reg10[26]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[26]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[26] ),
        .O(\axi_rdata[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_7 
       (.I0(slv_reg15[26]),
        .I1(slv_reg14[26]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[26]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[26]),
        .O(\axi_rdata[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_4 
       (.I0(\slv_reg3_reg_n_0_[27] ),
        .I1(\slv_reg2_reg_n_0_[27] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[27] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[27] ),
        .O(\axi_rdata[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_5 
       (.I0(\slv_reg7_reg_n_0_[27] ),
        .I1(\slv_reg6_reg_n_0_[27] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[27] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[27] ),
        .O(\axi_rdata[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_6 
       (.I0(slv_reg11[27]),
        .I1(slv_reg10[27]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[27]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[27] ),
        .O(\axi_rdata[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_7 
       (.I0(slv_reg15[27]),
        .I1(slv_reg14[27]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[27]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[27]),
        .O(\axi_rdata[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_4 
       (.I0(\slv_reg3_reg_n_0_[28] ),
        .I1(\slv_reg2_reg_n_0_[28] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[28] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[28] ),
        .O(\axi_rdata[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_5 
       (.I0(\slv_reg7_reg_n_0_[28] ),
        .I1(\slv_reg6_reg_n_0_[28] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[28] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[28] ),
        .O(\axi_rdata[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_6 
       (.I0(slv_reg11[28]),
        .I1(slv_reg10[28]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[28]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[28] ),
        .O(\axi_rdata[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_7 
       (.I0(slv_reg15[28]),
        .I1(slv_reg14[28]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[28]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[28]),
        .O(\axi_rdata[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_4 
       (.I0(\slv_reg3_reg_n_0_[29] ),
        .I1(\slv_reg2_reg_n_0_[29] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[29] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[29] ),
        .O(\axi_rdata[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_5 
       (.I0(\slv_reg7_reg_n_0_[29] ),
        .I1(\slv_reg6_reg_n_0_[29] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[29] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[29] ),
        .O(\axi_rdata[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_6 
       (.I0(slv_reg11[29]),
        .I1(slv_reg10[29]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[29]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[29] ),
        .O(\axi_rdata[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_7 
       (.I0(slv_reg15[29]),
        .I1(slv_reg14[29]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[29]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[29]),
        .O(\axi_rdata[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_4 
       (.I0(\prev[12]_15 [2]),
        .I1(\prev[8]_11 [2]),
        .I2(axi_araddr[3]),
        .I3(\prev[4]_7 [2]),
        .I4(axi_araddr[2]),
        .I5(\prev[0]_3 [2]),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_5 
       (.I0(\curr[12]_31 [2]),
        .I1(\curr[8]_27 [2]),
        .I2(axi_araddr[3]),
        .I3(\curr[4]_23 [2]),
        .I4(axi_araddr[2]),
        .I5(\curr[0]_19 [2]),
        .O(\axi_rdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_6 
       (.I0(slv_reg11[2]),
        .I1(slv_reg10[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[2]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[2] ),
        .O(\axi_rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_7 
       (.I0(slv_reg15[2]),
        .I1(slv_reg14[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[2]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[2]),
        .O(\axi_rdata[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_4 
       (.I0(\slv_reg3_reg_n_0_[30] ),
        .I1(\slv_reg2_reg_n_0_[30] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[30] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[30] ),
        .O(\axi_rdata[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_5 
       (.I0(\slv_reg7_reg_n_0_[30] ),
        .I1(\slv_reg6_reg_n_0_[30] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[30] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[30] ),
        .O(\axi_rdata[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_6 
       (.I0(slv_reg11[30]),
        .I1(slv_reg10[30]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[30]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[30] ),
        .O(\axi_rdata[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_7 
       (.I0(slv_reg15[30]),
        .I1(slv_reg14[30]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[30]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[30]),
        .O(\axi_rdata[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_4 
       (.I0(\slv_reg3_reg_n_0_[31] ),
        .I1(\slv_reg2_reg_n_0_[31] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[31] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[31] ),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_5 
       (.I0(\slv_reg7_reg_n_0_[31] ),
        .I1(\slv_reg6_reg_n_0_[31] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[31] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[31] ),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_6 
       (.I0(slv_reg11[31]),
        .I1(slv_reg10[31]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[31]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[31] ),
        .O(\axi_rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_7 
       (.I0(slv_reg15[31]),
        .I1(slv_reg14[31]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[31]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[31]),
        .O(\axi_rdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_4 
       (.I0(\prev[12]_15 [3]),
        .I1(\prev[8]_11 [3]),
        .I2(axi_araddr[3]),
        .I3(\prev[4]_7 [3]),
        .I4(axi_araddr[2]),
        .I5(\prev[0]_3 [3]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_5 
       (.I0(\curr[12]_31 [3]),
        .I1(\curr[8]_27 [3]),
        .I2(axi_araddr[3]),
        .I3(\curr[4]_23 [3]),
        .I4(axi_araddr[2]),
        .I5(\curr[0]_19 [3]),
        .O(\axi_rdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_6 
       (.I0(slv_reg11[3]),
        .I1(slv_reg10[3]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[3] ),
        .O(\axi_rdata[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_7 
       (.I0(slv_reg15[3]),
        .I1(slv_reg14[3]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[3]),
        .O(\axi_rdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_4 
       (.I0(\prev[13]_14 [0]),
        .I1(\prev[9]_10 [0]),
        .I2(axi_araddr[3]),
        .I3(\prev[5]_6 [0]),
        .I4(axi_araddr[2]),
        .I5(\prev[1]_2 [0]),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_5 
       (.I0(\curr[13]_30 [0]),
        .I1(\curr[9]_26 [0]),
        .I2(axi_araddr[3]),
        .I3(\curr[5]_22 [0]),
        .I4(axi_araddr[2]),
        .I5(\curr[1]_18 [0]),
        .O(\axi_rdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_6 
       (.I0(slv_reg11[4]),
        .I1(slv_reg10[4]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[4]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_7 
       (.I0(slv_reg15[4]),
        .I1(slv_reg14[4]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[4]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[4]),
        .O(\axi_rdata[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_4 
       (.I0(\prev[13]_14 [1]),
        .I1(\prev[9]_10 [1]),
        .I2(axi_araddr[3]),
        .I3(\prev[5]_6 [1]),
        .I4(axi_araddr[2]),
        .I5(\prev[1]_2 [1]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_5 
       (.I0(\curr[13]_30 [1]),
        .I1(\curr[9]_26 [1]),
        .I2(axi_araddr[3]),
        .I3(\curr[5]_22 [1]),
        .I4(axi_araddr[2]),
        .I5(\curr[1]_18 [1]),
        .O(\axi_rdata[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_6 
       (.I0(slv_reg11[5]),
        .I1(slv_reg10[5]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[5]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[5] ),
        .O(\axi_rdata[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_7 
       (.I0(slv_reg15[5]),
        .I1(slv_reg14[5]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[5]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[5]),
        .O(\axi_rdata[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_4 
       (.I0(\prev[13]_14 [2]),
        .I1(\prev[9]_10 [2]),
        .I2(axi_araddr[3]),
        .I3(\prev[5]_6 [2]),
        .I4(axi_araddr[2]),
        .I5(\prev[1]_2 [2]),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_5 
       (.I0(\curr[13]_30 [2]),
        .I1(\curr[9]_26 [2]),
        .I2(axi_araddr[3]),
        .I3(\curr[5]_22 [2]),
        .I4(axi_araddr[2]),
        .I5(\curr[1]_18 [2]),
        .O(\axi_rdata[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_6 
       (.I0(slv_reg11[6]),
        .I1(slv_reg10[6]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[6]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[6] ),
        .O(\axi_rdata[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_7 
       (.I0(slv_reg15[6]),
        .I1(slv_reg14[6]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[6]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[6]),
        .O(\axi_rdata[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_4 
       (.I0(\prev[13]_14 [3]),
        .I1(\prev[9]_10 [3]),
        .I2(axi_araddr[3]),
        .I3(\prev[5]_6 [3]),
        .I4(axi_araddr[2]),
        .I5(\prev[1]_2 [3]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_5 
       (.I0(\curr[13]_30 [3]),
        .I1(\curr[9]_26 [3]),
        .I2(axi_araddr[3]),
        .I3(\curr[5]_22 [3]),
        .I4(axi_araddr[2]),
        .I5(\curr[1]_18 [3]),
        .O(\axi_rdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_6 
       (.I0(slv_reg11[7]),
        .I1(slv_reg10[7]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[7]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[7] ),
        .O(\axi_rdata[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_7 
       (.I0(slv_reg15[7]),
        .I1(slv_reg14[7]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[7]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[7]),
        .O(\axi_rdata[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFC0C0A0AFCFCF)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(\axi_rdata[8]_i_3_n_0 ),
        .I2(axi_araddr[5]),
        .I3(\axi_rdata[8]_i_4_n_0 ),
        .I4(axi_araddr[4]),
        .I5(\axi_rdata[8]_i_5_n_0 ),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(slv_reg15[8]),
        .I1(slv_reg14[8]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[8]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_3 
       (.I0(slv_reg11[8]),
        .I1(slv_reg10[8]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[8]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[8] ),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \axi_rdata[8]_i_4 
       (.I0(\curr[14]_29 [0]),
        .I1(\curr[10]_25 [0]),
        .I2(axi_araddr[3]),
        .I3(\curr[6]_21 [0]),
        .I4(axi_araddr[2]),
        .I5(\curr[2]_17 [0]),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \axi_rdata[8]_i_5 
       (.I0(\prev[14]_13 [0]),
        .I1(\prev[10]_9 [0]),
        .I2(axi_araddr[3]),
        .I3(\prev[6]_5 [0]),
        .I4(axi_araddr[2]),
        .I5(\prev[2]_1 [0]),
        .O(\axi_rdata[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_4 
       (.I0(\prev[14]_13 [1]),
        .I1(\prev[10]_9 [1]),
        .I2(axi_araddr[3]),
        .I3(\prev[6]_5 [1]),
        .I4(axi_araddr[2]),
        .I5(\prev[2]_1 [1]),
        .O(\axi_rdata[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_5 
       (.I0(\curr[14]_29 [1]),
        .I1(\curr[10]_25 [1]),
        .I2(axi_araddr[3]),
        .I3(\curr[6]_21 [1]),
        .I4(axi_araddr[2]),
        .I5(\curr[2]_17 [1]),
        .O(\axi_rdata[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_6 
       (.I0(slv_reg11[9]),
        .I1(slv_reg10[9]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[9]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[9] ),
        .O(\axi_rdata[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_7 
       (.I0(slv_reg15[9]),
        .I1(slv_reg14[9]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[9]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[9]),
        .O(\axi_rdata[9]_i_7_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata_reg[0]_i_2_n_0 ),
        .I1(\axi_rdata_reg[0]_i_3_n_0 ),
        .O(reg_data_out[0]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[0]_i_2 
       (.I0(\axi_rdata[0]_i_4_n_0 ),
        .I1(\axi_rdata[0]_i_5_n_0 ),
        .O(\axi_rdata_reg[0]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[0]_i_3 
       (.I0(\axi_rdata[0]_i_6_n_0 ),
        .I1(\axi_rdata[0]_i_7_n_0 ),
        .O(\axi_rdata_reg[0]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata_reg[10]_i_2_n_0 ),
        .I1(\axi_rdata_reg[10]_i_3_n_0 ),
        .O(reg_data_out[10]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[10]_i_2 
       (.I0(\axi_rdata[10]_i_4_n_0 ),
        .I1(\axi_rdata[10]_i_5_n_0 ),
        .O(\axi_rdata_reg[10]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[10]_i_3 
       (.I0(\axi_rdata[10]_i_6_n_0 ),
        .I1(\axi_rdata[10]_i_7_n_0 ),
        .O(\axi_rdata_reg[10]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[11]_i_1 
       (.I0(\axi_rdata_reg[11]_i_2_n_0 ),
        .I1(\axi_rdata_reg[11]_i_3_n_0 ),
        .O(reg_data_out[11]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[11]_i_2 
       (.I0(\axi_rdata[11]_i_4_n_0 ),
        .I1(\axi_rdata[11]_i_5_n_0 ),
        .O(\axi_rdata_reg[11]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[11]_i_3 
       (.I0(\axi_rdata[11]_i_6_n_0 ),
        .I1(\axi_rdata[11]_i_7_n_0 ),
        .O(\axi_rdata_reg[11]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata_reg[12]_i_2_n_0 ),
        .I1(\axi_rdata_reg[12]_i_3_n_0 ),
        .O(reg_data_out[12]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[12]_i_2 
       (.I0(\axi_rdata[12]_i_4_n_0 ),
        .I1(\axi_rdata[12]_i_5_n_0 ),
        .O(\axi_rdata_reg[12]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[12]_i_3 
       (.I0(\axi_rdata[12]_i_6_n_0 ),
        .I1(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata_reg[12]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[13]_i_1 
       (.I0(\axi_rdata_reg[13]_i_2_n_0 ),
        .I1(\axi_rdata_reg[13]_i_3_n_0 ),
        .O(reg_data_out[13]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[13]_i_2 
       (.I0(\axi_rdata[13]_i_4_n_0 ),
        .I1(\axi_rdata[13]_i_5_n_0 ),
        .O(\axi_rdata_reg[13]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[13]_i_3 
       (.I0(\axi_rdata[13]_i_6_n_0 ),
        .I1(\axi_rdata[13]_i_7_n_0 ),
        .O(\axi_rdata_reg[13]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[14]_i_1 
       (.I0(\axi_rdata_reg[14]_i_2_n_0 ),
        .I1(\axi_rdata_reg[14]_i_3_n_0 ),
        .O(reg_data_out[14]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[14]_i_2 
       (.I0(\axi_rdata[14]_i_4_n_0 ),
        .I1(\axi_rdata[14]_i_5_n_0 ),
        .O(\axi_rdata_reg[14]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[14]_i_3 
       (.I0(\axi_rdata[14]_i_6_n_0 ),
        .I1(\axi_rdata[14]_i_7_n_0 ),
        .O(\axi_rdata_reg[14]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[15]_i_1 
       (.I0(\axi_rdata_reg[15]_i_2_n_0 ),
        .I1(\axi_rdata_reg[15]_i_3_n_0 ),
        .O(reg_data_out[15]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[15]_i_2 
       (.I0(\axi_rdata[15]_i_4_n_0 ),
        .I1(\axi_rdata[15]_i_5_n_0 ),
        .O(\axi_rdata_reg[15]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[15]_i_3 
       (.I0(\axi_rdata[15]_i_6_n_0 ),
        .I1(\axi_rdata[15]_i_7_n_0 ),
        .O(\axi_rdata_reg[15]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[16]_i_1 
       (.I0(\axi_rdata_reg[16]_i_2_n_0 ),
        .I1(\axi_rdata_reg[16]_i_3_n_0 ),
        .O(reg_data_out[16]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[16]_i_2 
       (.I0(\axi_rdata[16]_i_4_n_0 ),
        .I1(\axi_rdata[16]_i_5_n_0 ),
        .O(\axi_rdata_reg[16]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[16]_i_3 
       (.I0(\axi_rdata[16]_i_6_n_0 ),
        .I1(\axi_rdata[16]_i_7_n_0 ),
        .O(\axi_rdata_reg[16]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[17]_i_1 
       (.I0(\axi_rdata_reg[17]_i_2_n_0 ),
        .I1(\axi_rdata_reg[17]_i_3_n_0 ),
        .O(reg_data_out[17]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[17]_i_2 
       (.I0(\axi_rdata[17]_i_4_n_0 ),
        .I1(\axi_rdata[17]_i_5_n_0 ),
        .O(\axi_rdata_reg[17]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[17]_i_3 
       (.I0(\axi_rdata[17]_i_6_n_0 ),
        .I1(\axi_rdata[17]_i_7_n_0 ),
        .O(\axi_rdata_reg[17]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[18]_i_1 
       (.I0(\axi_rdata_reg[18]_i_2_n_0 ),
        .I1(\axi_rdata_reg[18]_i_3_n_0 ),
        .O(reg_data_out[18]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[18]_i_2 
       (.I0(\axi_rdata[18]_i_4_n_0 ),
        .I1(\axi_rdata[18]_i_5_n_0 ),
        .O(\axi_rdata_reg[18]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[18]_i_3 
       (.I0(\axi_rdata[18]_i_6_n_0 ),
        .I1(\axi_rdata[18]_i_7_n_0 ),
        .O(\axi_rdata_reg[18]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[19]_i_1 
       (.I0(\axi_rdata_reg[19]_i_2_n_0 ),
        .I1(\axi_rdata_reg[19]_i_3_n_0 ),
        .O(reg_data_out[19]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[19]_i_2 
       (.I0(\axi_rdata[19]_i_4_n_0 ),
        .I1(\axi_rdata[19]_i_5_n_0 ),
        .O(\axi_rdata_reg[19]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[19]_i_3 
       (.I0(\axi_rdata[19]_i_6_n_0 ),
        .I1(\axi_rdata[19]_i_7_n_0 ),
        .O(\axi_rdata_reg[19]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata_reg[1]_i_2_n_0 ),
        .I1(\axi_rdata_reg[1]_i_3_n_0 ),
        .O(reg_data_out[1]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[1]_i_2 
       (.I0(\axi_rdata[1]_i_4_n_0 ),
        .I1(\axi_rdata[1]_i_5_n_0 ),
        .O(\axi_rdata_reg[1]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[1]_i_3 
       (.I0(\axi_rdata[1]_i_6_n_0 ),
        .I1(\axi_rdata[1]_i_7_n_0 ),
        .O(\axi_rdata_reg[1]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[20]_i_1 
       (.I0(\axi_rdata_reg[20]_i_2_n_0 ),
        .I1(\axi_rdata_reg[20]_i_3_n_0 ),
        .O(reg_data_out[20]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[20]_i_2 
       (.I0(\axi_rdata[20]_i_4_n_0 ),
        .I1(\axi_rdata[20]_i_5_n_0 ),
        .O(\axi_rdata_reg[20]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[20]_i_3 
       (.I0(\axi_rdata[20]_i_6_n_0 ),
        .I1(\axi_rdata[20]_i_7_n_0 ),
        .O(\axi_rdata_reg[20]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[21]_i_1 
       (.I0(\axi_rdata_reg[21]_i_2_n_0 ),
        .I1(\axi_rdata_reg[21]_i_3_n_0 ),
        .O(reg_data_out[21]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[21]_i_2 
       (.I0(\axi_rdata[21]_i_4_n_0 ),
        .I1(\axi_rdata[21]_i_5_n_0 ),
        .O(\axi_rdata_reg[21]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[21]_i_3 
       (.I0(\axi_rdata[21]_i_6_n_0 ),
        .I1(\axi_rdata[21]_i_7_n_0 ),
        .O(\axi_rdata_reg[21]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[22]_i_1 
       (.I0(\axi_rdata_reg[22]_i_2_n_0 ),
        .I1(\axi_rdata_reg[22]_i_3_n_0 ),
        .O(reg_data_out[22]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[22]_i_2 
       (.I0(\axi_rdata[22]_i_4_n_0 ),
        .I1(\axi_rdata[22]_i_5_n_0 ),
        .O(\axi_rdata_reg[22]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[22]_i_3 
       (.I0(\axi_rdata[22]_i_6_n_0 ),
        .I1(\axi_rdata[22]_i_7_n_0 ),
        .O(\axi_rdata_reg[22]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[23]_i_1 
       (.I0(\axi_rdata_reg[23]_i_2_n_0 ),
        .I1(\axi_rdata_reg[23]_i_3_n_0 ),
        .O(reg_data_out[23]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[23]_i_2 
       (.I0(\axi_rdata[23]_i_4_n_0 ),
        .I1(\axi_rdata[23]_i_5_n_0 ),
        .O(\axi_rdata_reg[23]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[23]_i_3 
       (.I0(\axi_rdata[23]_i_6_n_0 ),
        .I1(\axi_rdata[23]_i_7_n_0 ),
        .O(\axi_rdata_reg[23]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[24]_i_1 
       (.I0(\axi_rdata_reg[24]_i_2_n_0 ),
        .I1(\axi_rdata_reg[24]_i_3_n_0 ),
        .O(reg_data_out[24]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[24]_i_2 
       (.I0(\axi_rdata[24]_i_4_n_0 ),
        .I1(\axi_rdata[24]_i_5_n_0 ),
        .O(\axi_rdata_reg[24]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[24]_i_3 
       (.I0(\axi_rdata[24]_i_6_n_0 ),
        .I1(\axi_rdata[24]_i_7_n_0 ),
        .O(\axi_rdata_reg[24]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[25]_i_1 
       (.I0(\axi_rdata_reg[25]_i_2_n_0 ),
        .I1(\axi_rdata_reg[25]_i_3_n_0 ),
        .O(reg_data_out[25]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[25]_i_2 
       (.I0(\axi_rdata[25]_i_4_n_0 ),
        .I1(\axi_rdata[25]_i_5_n_0 ),
        .O(\axi_rdata_reg[25]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[25]_i_3 
       (.I0(\axi_rdata[25]_i_6_n_0 ),
        .I1(\axi_rdata[25]_i_7_n_0 ),
        .O(\axi_rdata_reg[25]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[26]_i_1 
       (.I0(\axi_rdata_reg[26]_i_2_n_0 ),
        .I1(\axi_rdata_reg[26]_i_3_n_0 ),
        .O(reg_data_out[26]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[26]_i_2 
       (.I0(\axi_rdata[26]_i_4_n_0 ),
        .I1(\axi_rdata[26]_i_5_n_0 ),
        .O(\axi_rdata_reg[26]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[26]_i_3 
       (.I0(\axi_rdata[26]_i_6_n_0 ),
        .I1(\axi_rdata[26]_i_7_n_0 ),
        .O(\axi_rdata_reg[26]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[27]_i_1 
       (.I0(\axi_rdata_reg[27]_i_2_n_0 ),
        .I1(\axi_rdata_reg[27]_i_3_n_0 ),
        .O(reg_data_out[27]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[27]_i_2 
       (.I0(\axi_rdata[27]_i_4_n_0 ),
        .I1(\axi_rdata[27]_i_5_n_0 ),
        .O(\axi_rdata_reg[27]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[27]_i_3 
       (.I0(\axi_rdata[27]_i_6_n_0 ),
        .I1(\axi_rdata[27]_i_7_n_0 ),
        .O(\axi_rdata_reg[27]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[28]_i_1 
       (.I0(\axi_rdata_reg[28]_i_2_n_0 ),
        .I1(\axi_rdata_reg[28]_i_3_n_0 ),
        .O(reg_data_out[28]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[28]_i_2 
       (.I0(\axi_rdata[28]_i_4_n_0 ),
        .I1(\axi_rdata[28]_i_5_n_0 ),
        .O(\axi_rdata_reg[28]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[28]_i_3 
       (.I0(\axi_rdata[28]_i_6_n_0 ),
        .I1(\axi_rdata[28]_i_7_n_0 ),
        .O(\axi_rdata_reg[28]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[29]_i_1 
       (.I0(\axi_rdata_reg[29]_i_2_n_0 ),
        .I1(\axi_rdata_reg[29]_i_3_n_0 ),
        .O(reg_data_out[29]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[29]_i_2 
       (.I0(\axi_rdata[29]_i_4_n_0 ),
        .I1(\axi_rdata[29]_i_5_n_0 ),
        .O(\axi_rdata_reg[29]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[29]_i_3 
       (.I0(\axi_rdata[29]_i_6_n_0 ),
        .I1(\axi_rdata[29]_i_7_n_0 ),
        .O(\axi_rdata_reg[29]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata_reg[2]_i_2_n_0 ),
        .I1(\axi_rdata_reg[2]_i_3_n_0 ),
        .O(reg_data_out[2]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[2]_i_2 
       (.I0(\axi_rdata[2]_i_4_n_0 ),
        .I1(\axi_rdata[2]_i_5_n_0 ),
        .O(\axi_rdata_reg[2]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[2]_i_3 
       (.I0(\axi_rdata[2]_i_6_n_0 ),
        .I1(\axi_rdata[2]_i_7_n_0 ),
        .O(\axi_rdata_reg[2]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[30]_i_1 
       (.I0(\axi_rdata_reg[30]_i_2_n_0 ),
        .I1(\axi_rdata_reg[30]_i_3_n_0 ),
        .O(reg_data_out[30]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[30]_i_2 
       (.I0(\axi_rdata[30]_i_4_n_0 ),
        .I1(\axi_rdata[30]_i_5_n_0 ),
        .O(\axi_rdata_reg[30]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[30]_i_3 
       (.I0(\axi_rdata[30]_i_6_n_0 ),
        .I1(\axi_rdata[30]_i_7_n_0 ),
        .O(\axi_rdata_reg[30]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[31]_i_1 
       (.I0(\axi_rdata_reg[31]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31]_i_3_n_0 ),
        .O(reg_data_out[31]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[31]_i_2 
       (.I0(\axi_rdata[31]_i_4_n_0 ),
        .I1(\axi_rdata[31]_i_5_n_0 ),
        .O(\axi_rdata_reg[31]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[31]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata[31]_i_7_n_0 ),
        .O(\axi_rdata_reg[31]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata_reg[3]_i_2_n_0 ),
        .I1(\axi_rdata_reg[3]_i_3_n_0 ),
        .O(reg_data_out[3]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[3]_i_2 
       (.I0(\axi_rdata[3]_i_4_n_0 ),
        .I1(\axi_rdata[3]_i_5_n_0 ),
        .O(\axi_rdata_reg[3]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[3]_i_3 
       (.I0(\axi_rdata[3]_i_6_n_0 ),
        .I1(\axi_rdata[3]_i_7_n_0 ),
        .O(\axi_rdata_reg[3]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata_reg[4]_i_2_n_0 ),
        .I1(\axi_rdata_reg[4]_i_3_n_0 ),
        .O(reg_data_out[4]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[4]_i_2 
       (.I0(\axi_rdata[4]_i_4_n_0 ),
        .I1(\axi_rdata[4]_i_5_n_0 ),
        .O(\axi_rdata_reg[4]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[4]_i_3 
       (.I0(\axi_rdata[4]_i_6_n_0 ),
        .I1(\axi_rdata[4]_i_7_n_0 ),
        .O(\axi_rdata_reg[4]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata_reg[5]_i_2_n_0 ),
        .I1(\axi_rdata_reg[5]_i_3_n_0 ),
        .O(reg_data_out[5]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[5]_i_2 
       (.I0(\axi_rdata[5]_i_4_n_0 ),
        .I1(\axi_rdata[5]_i_5_n_0 ),
        .O(\axi_rdata_reg[5]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[5]_i_3 
       (.I0(\axi_rdata[5]_i_6_n_0 ),
        .I1(\axi_rdata[5]_i_7_n_0 ),
        .O(\axi_rdata_reg[5]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata_reg[6]_i_2_n_0 ),
        .I1(\axi_rdata_reg[6]_i_3_n_0 ),
        .O(reg_data_out[6]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[6]_i_2 
       (.I0(\axi_rdata[6]_i_4_n_0 ),
        .I1(\axi_rdata[6]_i_5_n_0 ),
        .O(\axi_rdata_reg[6]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[6]_i_3 
       (.I0(\axi_rdata[6]_i_6_n_0 ),
        .I1(\axi_rdata[6]_i_7_n_0 ),
        .O(\axi_rdata_reg[6]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata_reg[7]_i_2_n_0 ),
        .I1(\axi_rdata_reg[7]_i_3_n_0 ),
        .O(reg_data_out[7]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[7]_i_2 
       (.I0(\axi_rdata[7]_i_4_n_0 ),
        .I1(\axi_rdata[7]_i_5_n_0 ),
        .O(\axi_rdata_reg[7]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[7]_i_3 
       (.I0(\axi_rdata[7]_i_6_n_0 ),
        .I1(\axi_rdata[7]_i_7_n_0 ),
        .O(\axi_rdata_reg[7]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata_reg[9]_i_2_n_0 ),
        .I1(\axi_rdata_reg[9]_i_3_n_0 ),
        .O(reg_data_out[9]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[9]_i_2 
       (.I0(\axi_rdata[9]_i_4_n_0 ),
        .I1(\axi_rdata[9]_i_5_n_0 ),
        .O(\axi_rdata_reg[9]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[9]_i_3 
       (.I0(\axi_rdata[9]_i_6_n_0 ),
        .I1(\axi_rdata[9]_i_7_n_0 ),
        .O(\axi_rdata_reg[9]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_reg_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    axi_wready_i_1
       (.I0(s00_axi_wready),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \slv_reg0[15]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[1]),
        .I5(p_0_in[0]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \slv_reg0[23]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[2]),
        .I5(p_0_in[0]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \slv_reg0[31]_i_1 
       (.I0(p_0_in[0]),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .I4(p_0_in[1]),
        .I5(\slv_reg0[31]_i_2_n_0 ),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .I3(s00_axi_awready),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \slv_reg0[7]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[0]),
        .I5(p_0_in[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(\prev[0]_3 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(\prev[2]_1 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(\prev[2]_1 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(\prev[3]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(\prev[3]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(\prev[3]_0 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(\prev[3]_0 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(\prev[0]_3 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(\prev[0]_3 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(\prev[0]_3 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(\prev[1]_2 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(\prev[1]_2 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(\prev[1]_2 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(\prev[1]_2 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(\prev[2]_1 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(\prev[2]_1 [1]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \slv_reg10[15]_i_1 
       (.I0(p_0_in[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[3]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \slv_reg10[23]_i_1 
       (.I0(p_0_in[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[3]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \slv_reg10[31]_i_1 
       (.I0(p_0_in[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[3]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \slv_reg10[7]_i_1 
       (.I0(p_0_in[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[3]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[7]_i_1_n_0 ));
  FDRE \slv_reg10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg10[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg10[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg10[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg10[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg10[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg10[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg10[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg10[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg10[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg10[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg10[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg10[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg10[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg10[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg10[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg10[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg10[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg10[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg10[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg10[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg10[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg10[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg10[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg10[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg10[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg10[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg10[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg10[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg10[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg10[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg10[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg10[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[7]_i_1_n_0 ));
  FDRE \slv_reg11_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg11[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg11[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg11[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg11[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg11[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg11[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg11[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg11[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg11[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg11[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg11[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg11[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg11[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg11[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg11[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg11[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg11[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg11[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg11[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg11[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg11[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg11[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg11[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg11[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg11[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg11[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg11[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg11[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg11[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg11[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg11[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg11[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \slv_reg12[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[3]),
        .I4(p_0_in[0]),
        .I5(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg12[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \slv_reg12[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[3]),
        .I4(p_0_in[0]),
        .I5(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg12[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \slv_reg12[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[3]),
        .I4(p_0_in[0]),
        .I5(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg12[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \slv_reg12[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[3]),
        .I4(p_0_in[0]),
        .I5(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg12[7]_i_1_n_0 ));
  FDRE \slv_reg12_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg12[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg12[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg12[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg12[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg12[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg12[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg12[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg12[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg12[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg12[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg12[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg12[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg12[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg12[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg12[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg12[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg12[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg12[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg12[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg12[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg12[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg12[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg12[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg12[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg12[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg12[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg12[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg12[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg12[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg12[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg12[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg12[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \slv_reg13[15]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg13[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \slv_reg13[23]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg13[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \slv_reg13[31]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg13[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \slv_reg13[7]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg13[7]_i_1_n_0 ));
  FDRE \slv_reg13_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg13[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg13[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg13[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg13[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg13[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg13[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg13[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg13[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg13[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg13[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg13[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg13[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg13[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg13[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg13[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg13[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg13[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg13[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg13[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg13[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg13[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg13[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg13[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg13[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg13[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg13[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg13[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg13[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg13[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg13[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg13[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg13[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[15]_i_1 
       (.I0(p_0_in[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .I4(s00_axi_wstrb[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg14[23]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg14[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[31]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(s00_axi_wstrb[3]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg14[7]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg14[7]_i_1_n_0 ));
  FDRE \slv_reg14_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg14[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg14[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg14[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg14[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg14[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg14[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg14[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg14[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg14[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg14[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg14[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg14[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg14[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg14[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg14[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg14[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg14[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg14[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg14[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg14[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg14[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg14[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg14[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg14[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg14[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg14[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg14[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg14[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg14[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg14[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg14[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg14[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg15[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg15[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg15[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg15[7]_i_1_n_0 ));
  FDRE \slv_reg15_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg15[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg15[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg15[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg15[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg15[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg15[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg15[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg15[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg15[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg15[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg15[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg15[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg15[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg15[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg15[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg15[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg15[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg15[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg15[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg15[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg15[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg15[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg15[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg15[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg15[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg15[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg15[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg15[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg15[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg15[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg15[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg15[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \slv_reg1[15]_i_1 
       (.I0(p_0_in[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[3]),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \slv_reg1[23]_i_1 
       (.I0(p_0_in[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[3]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \slv_reg1[31]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \slv_reg1[7]_i_1 
       (.I0(p_0_in[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[3]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\prev[4]_7 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\prev[6]_5 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\prev[6]_5 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\prev[7]_4 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\prev[7]_4 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\prev[7]_4 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\prev[7]_4 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\prev[4]_7 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\prev[4]_7 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\prev[4]_7 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\prev[5]_6 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\prev[5]_6 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\prev[5]_6 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\prev[5]_6 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\prev[6]_5 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\prev[6]_5 [1]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \slv_reg2[15]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \slv_reg2[23]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \slv_reg2[31]_i_1 
       (.I0(p_0_in[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[3]),
        .I5(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \slv_reg2[7]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\prev[8]_11 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\prev[10]_9 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\prev[10]_9 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\prev[11]_8 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\prev[11]_8 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\prev[11]_8 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\prev[11]_8 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg2_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg2_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg2_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg2_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\prev[8]_11 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg2_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg2_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg2_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg2_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg2_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg2_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg2_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg2_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg2_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg2_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\prev[8]_11 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg2_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg2_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\prev[8]_11 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\prev[9]_10 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\prev[9]_10 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\prev[9]_10 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\prev[9]_10 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\prev[10]_9 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\prev[10]_9 [1]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \slv_reg3[15]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \slv_reg3[23]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \slv_reg3[31]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \slv_reg3[7]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\prev[12]_15 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\prev[14]_13 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\prev[14]_13 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\prev[15]_12 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\prev[15]_12 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\prev[15]_12 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\prev[15]_12 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg3_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg3_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg3_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg3_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\prev[12]_15 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg3_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg3_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg3_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg3_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg3_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg3_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg3_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg3_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg3_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg3_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\prev[12]_15 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg3_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg3_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\prev[12]_15 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\prev[13]_14 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\prev[13]_14 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\prev[13]_14 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\prev[13]_14 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\prev[14]_13 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\prev[14]_13 [1]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \slv_reg4[15]_i_1 
       (.I0(p_0_in[0]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \slv_reg4[23]_i_1 
       (.I0(p_0_in[0]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \slv_reg4[31]_i_1 
       (.I0(p_0_in[0]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \slv_reg4[7]_i_1 
       (.I0(p_0_in[0]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\curr[0]_19 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\curr[2]_17 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\curr[2]_17 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\curr[3]_16 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\curr[3]_16 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\curr[3]_16 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\curr[3]_16 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg4_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg4_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg4_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg4_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\curr[0]_19 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg4_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg4_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg4_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg4_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg4_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg4_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg4_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg4_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg4_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg4_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\curr[0]_19 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg4_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg4_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\curr[0]_19 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\curr[1]_18 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\curr[1]_18 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\curr[1]_18 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\curr[1]_18 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\curr[2]_17 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\curr[2]_17 [1]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[15]_i_1 
       (.I0(p_0_in[0]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[23]_i_1 
       (.I0(p_0_in[0]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[31]_i_1 
       (.I0(p_0_in[0]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[7]_i_1 
       (.I0(p_0_in[0]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\curr[4]_23 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\curr[6]_21 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\curr[6]_21 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\curr[7]_20 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\curr[7]_20 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\curr[7]_20 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\curr[7]_20 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg5_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg5_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg5_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg5_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\curr[4]_23 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg5_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg5_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg5_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg5_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg5_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg5_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg5_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg5_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg5_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg5_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\curr[4]_23 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg5_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg5_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\curr[4]_23 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\curr[5]_22 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\curr[5]_22 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\curr[5]_22 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\curr[5]_22 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\curr[6]_21 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\curr[6]_21 [1]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \slv_reg6[15]_i_1 
       (.I0(p_0_in[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \slv_reg6[23]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \slv_reg6[31]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(s00_axi_wstrb[3]),
        .I5(p_0_in[0]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \slv_reg6[7]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\curr[8]_27 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\curr[10]_25 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\curr[10]_25 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\curr[11]_24 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\curr[11]_24 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\curr[11]_24 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\curr[11]_24 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg6_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg6_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg6_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg6_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\curr[8]_27 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg6_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg6_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg6_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg6_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg6_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg6_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg6_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg6_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg6_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg6_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\curr[8]_27 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg6_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg6_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\curr[8]_27 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\curr[9]_26 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\curr[9]_26 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\curr[9]_26 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\curr[9]_26 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\curr[10]_25 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\curr[10]_25 [1]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\curr[12]_31 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\curr[14]_29 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\curr[14]_29 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\curr[15]_28 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\curr[15]_28 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\curr[15]_28 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\curr[15]_28 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg7_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg7_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg7_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg7_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\curr[12]_31 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg7_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg7_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg7_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg7_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg7_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg7_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg7_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg7_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg7_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg7_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\curr[12]_31 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg7_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg7_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\curr[12]_31 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\curr[13]_30 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\curr[13]_30 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\curr[13]_30 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\curr[13]_30 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\curr[14]_29 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\curr[14]_29 [1]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[0]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[10]_i_1 
       (.I0(s00_axi_wdata[10]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[10]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[11]_i_1 
       (.I0(s00_axi_wdata[11]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[11]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[12]_i_1 
       (.I0(s00_axi_wdata[12]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[12]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[13]_i_1 
       (.I0(s00_axi_wdata[13]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[13]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[14]_i_1 
       (.I0(s00_axi_wdata[14]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[14]));
  LUT6 #(
    .INIT(64'hABAAAAAAAAAAAAAA)) 
    \slv_reg8[15]_i_1 
       (.I0(\slv_reg8[31]_i_4_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[3]),
        .I4(s00_axi_wstrb[1]),
        .I5(\slv_reg8[31]_i_3_n_0 ),
        .O(\slv_reg8[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[15]_i_2 
       (.I0(s00_axi_wdata[15]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[15]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[16]_i_1 
       (.I0(s00_axi_wdata[16]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[16]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[17]_i_1 
       (.I0(s00_axi_wdata[17]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[17]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[18]_i_1 
       (.I0(s00_axi_wdata[18]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[18]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[19]_i_1 
       (.I0(s00_axi_wdata[19]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[19]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[1]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[20]_i_1 
       (.I0(s00_axi_wdata[20]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[20]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[21]_i_1 
       (.I0(s00_axi_wdata[21]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[21]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[22]_i_1 
       (.I0(s00_axi_wdata[22]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[22]));
  LUT6 #(
    .INIT(64'hABAAAAAAAAAAAAAA)) 
    \slv_reg8[23]_i_1 
       (.I0(\slv_reg8[31]_i_4_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[3]),
        .I4(s00_axi_wstrb[2]),
        .I5(\slv_reg8[31]_i_3_n_0 ),
        .O(\slv_reg8[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[23]_i_2 
       (.I0(s00_axi_wdata[23]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[23]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[24]_i_1 
       (.I0(s00_axi_wdata[24]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[25]_i_1 
       (.I0(s00_axi_wdata[25]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[25]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[26]_i_1 
       (.I0(s00_axi_wdata[26]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[26]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[27]_i_1 
       (.I0(s00_axi_wdata[27]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[27]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[28]_i_1 
       (.I0(s00_axi_wdata[28]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[28]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[29]_i_1 
       (.I0(s00_axi_wdata[29]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[29]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[2]_i_1 
       (.I0(s00_axi_wdata[2]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[2]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[30]_i_1 
       (.I0(s00_axi_wdata[30]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
    \slv_reg8[31]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(s00_axi_wstrb[3]),
        .I4(\slv_reg8[31]_i_3_n_0 ),
        .I5(\slv_reg8[31]_i_4_n_0 ),
        .O(\slv_reg8[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[31]_i_2 
       (.I0(s00_axi_wdata[31]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \slv_reg8[31]_i_3 
       (.I0(s00_axi_awready),
        .I1(s00_axi_wready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(p_0_in[0]),
        .O(\slv_reg8[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \slv_reg8[31]_i_4 
       (.I0(\slv_reg9[12]_i_5_n_0 ),
        .I1(\slv_reg9[12]_i_4_n_0 ),
        .I2(\slv_reg8[31]_i_5_n_0 ),
        .I3(\slv_reg8[31]_i_6_n_0 ),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg8[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \slv_reg8[31]_i_5 
       (.I0(\slv_reg8_reg_n_0_[2] ),
        .I1(\slv_reg8_reg_n_0_[3] ),
        .I2(\slv_reg8_reg_n_0_[0] ),
        .I3(\slv_reg8_reg_n_0_[1] ),
        .I4(\slv_reg8[31]_i_7_n_0 ),
        .O(\slv_reg8[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \slv_reg8[31]_i_6 
       (.I0(\slv_reg8_reg_n_0_[8] ),
        .I1(\slv_reg8_reg_n_0_[9] ),
        .I2(\slv_reg8_reg_n_0_[10] ),
        .I3(\slv_reg8_reg_n_0_[11] ),
        .I4(\slv_reg9[12]_i_9_n_0 ),
        .O(\slv_reg8[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg8[31]_i_7 
       (.I0(\slv_reg8_reg_n_0_[7] ),
        .I1(\slv_reg8_reg_n_0_[6] ),
        .I2(\slv_reg8_reg_n_0_[5] ),
        .I3(\slv_reg8_reg_n_0_[4] ),
        .O(\slv_reg8[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[3]_i_1 
       (.I0(s00_axi_wdata[3]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[3]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[4]_i_1 
       (.I0(s00_axi_wdata[4]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[4]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[5]_i_1 
       (.I0(s00_axi_wdata[5]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[6]_i_1 
       (.I0(s00_axi_wdata[6]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[6]));
  LUT6 #(
    .INIT(64'hABAAAAAAAAAAAAAA)) 
    \slv_reg8[7]_i_1 
       (.I0(\slv_reg8[31]_i_4_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[3]),
        .I4(s00_axi_wstrb[0]),
        .I5(\slv_reg8[31]_i_3_n_0 ),
        .O(\slv_reg8[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[7]_i_2 
       (.I0(s00_axi_wdata[7]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[7]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[8]_i_1 
       (.I0(s00_axi_wdata[8]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[8]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[9]_i_1 
       (.I0(s00_axi_wdata[9]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(p_2_in[9]));
  FDRE \slv_reg8_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(\slv_reg8_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(\slv_reg8_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(\slv_reg8_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(\slv_reg8_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(\slv_reg8_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(p_2_in[14]),
        .Q(\slv_reg8_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(p_2_in[15]),
        .Q(\slv_reg8_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(p_2_in[16]),
        .Q(\slv_reg8_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(p_2_in[17]),
        .Q(\slv_reg8_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(p_2_in[18]),
        .Q(\slv_reg8_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(p_2_in[19]),
        .Q(\slv_reg8_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(\slv_reg8_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(p_2_in[20]),
        .Q(\slv_reg8_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(p_2_in[21]),
        .Q(\slv_reg8_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(p_2_in[22]),
        .Q(\slv_reg8_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(p_2_in[23]),
        .Q(\slv_reg8_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(p_2_in[24]),
        .Q(\slv_reg8_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(p_2_in[25]),
        .Q(\slv_reg8_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(p_2_in[26]),
        .Q(\slv_reg8_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(p_2_in[27]),
        .Q(\slv_reg8_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(p_2_in[28]),
        .Q(\slv_reg8_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(p_2_in[29]),
        .Q(\slv_reg8_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(\slv_reg8_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(p_2_in[30]),
        .Q(\slv_reg8_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(p_2_in[31]),
        .Q(\slv_reg8_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(\slv_reg8_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(\slv_reg8_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(\slv_reg8_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(\slv_reg8_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(\slv_reg8_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(\slv_reg8_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(\slv_reg8_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \slv_reg9[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_wready),
        .I4(s00_axi_awready),
        .I5(\adder[14]__92_carry_n_7 ),
        .O(\slv_reg9[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg9[10]_i_1 
       (.I0(s00_axi_awready),
        .I1(s00_axi_wready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wdata[10]),
        .O(\slv_reg9[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg9[11]_i_1 
       (.I0(s00_axi_awready),
        .I1(s00_axi_wready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wdata[11]),
        .O(\slv_reg9[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF020200000202)) 
    \slv_reg9[12]_i_1 
       (.I0(\slv_reg9[12]_i_3_n_0 ),
        .I1(\slv_reg9[12]_i_4_n_0 ),
        .I2(\slv_reg9[12]_i_5_n_0 ),
        .I3(\slv_reg9[12]_i_6_n_0 ),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg9[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg9[12]_i_10 
       (.I0(\slv_reg8_reg_n_0_[11] ),
        .I1(\slv_reg8_reg_n_0_[10] ),
        .I2(\slv_reg8_reg_n_0_[9] ),
        .I3(\slv_reg8_reg_n_0_[8] ),
        .O(\slv_reg9[12]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg9[12]_i_11 
       (.I0(\slv_reg8_reg_n_0_[30] ),
        .I1(\slv_reg8_reg_n_0_[31] ),
        .I2(\slv_reg8_reg_n_0_[29] ),
        .I3(\slv_reg8_reg_n_0_[28] ),
        .O(\slv_reg9[12]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg9[12]_i_12 
       (.I0(\slv_reg8_reg_n_0_[21] ),
        .I1(\slv_reg8_reg_n_0_[20] ),
        .I2(\slv_reg8_reg_n_0_[23] ),
        .I3(\slv_reg8_reg_n_0_[22] ),
        .O(\slv_reg9[12]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg9[12]_i_2 
       (.I0(s00_axi_awready),
        .I1(s00_axi_wready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wdata[12]),
        .O(\slv_reg9[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \slv_reg9[12]_i_3 
       (.I0(\slv_reg9[12]_i_7_n_0 ),
        .I1(\slv_reg8_reg_n_0_[5] ),
        .I2(\slv_reg8_reg_n_0_[4] ),
        .I3(\slv_reg9[12]_i_8_n_0 ),
        .I4(\slv_reg9[12]_i_9_n_0 ),
        .I5(\slv_reg9[12]_i_10_n_0 ),
        .O(\slv_reg9[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \slv_reg9[12]_i_4 
       (.I0(\slv_reg8_reg_n_0_[26] ),
        .I1(\slv_reg8_reg_n_0_[27] ),
        .I2(\slv_reg8_reg_n_0_[24] ),
        .I3(\slv_reg8_reg_n_0_[25] ),
        .I4(\slv_reg9[12]_i_11_n_0 ),
        .O(\slv_reg9[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \slv_reg9[12]_i_5 
       (.I0(\slv_reg8_reg_n_0_[18] ),
        .I1(\slv_reg8_reg_n_0_[19] ),
        .I2(\slv_reg8_reg_n_0_[16] ),
        .I3(\slv_reg8_reg_n_0_[17] ),
        .I4(\slv_reg9[12]_i_12_n_0 ),
        .O(\slv_reg9[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \slv_reg9[12]_i_6 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg9[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \slv_reg9[12]_i_7 
       (.I0(\slv_reg8_reg_n_0_[6] ),
        .I1(\slv_reg8_reg_n_0_[7] ),
        .O(\slv_reg9[12]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \slv_reg9[12]_i_8 
       (.I0(\slv_reg8_reg_n_0_[1] ),
        .I1(\slv_reg8_reg_n_0_[0] ),
        .I2(\slv_reg8_reg_n_0_[3] ),
        .I3(\slv_reg8_reg_n_0_[2] ),
        .O(\slv_reg9[12]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg9[12]_i_9 
       (.I0(\slv_reg8_reg_n_0_[13] ),
        .I1(\slv_reg8_reg_n_0_[12] ),
        .I2(\slv_reg8_reg_n_0_[15] ),
        .I3(\slv_reg8_reg_n_0_[14] ),
        .O(\slv_reg9[12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000E222)) 
    \slv_reg9[13]_i_1 
       (.I0(slv_reg9[13]),
        .I1(\slv_reg9[12]_i_1_n_0 ),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_wdata[13]),
        .I4(\slv_reg9[31]_i_1_n_0 ),
        .O(\slv_reg9[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E222)) 
    \slv_reg9[14]_i_1 
       (.I0(slv_reg9[14]),
        .I1(\slv_reg9[12]_i_1_n_0 ),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_wdata[14]),
        .I4(\slv_reg9[31]_i_1_n_0 ),
        .O(\slv_reg9[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E222)) 
    \slv_reg9[15]_i_1 
       (.I0(slv_reg9[15]),
        .I1(\slv_reg9[12]_i_1_n_0 ),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_wdata[15]),
        .I4(\slv_reg9[31]_i_1_n_0 ),
        .O(\slv_reg9[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \slv_reg9[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_wready),
        .I4(s00_axi_awready),
        .I5(\adder[14]__92_carry_n_6 ),
        .O(\slv_reg9[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABAAAAAAAAAAAAAA)) 
    \slv_reg9[23]_i_1 
       (.I0(\slv_reg9[23]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[3]),
        .I4(s00_axi_wstrb[2]),
        .I5(\slv_reg9[31]_i_7_n_0 ),
        .O(\slv_reg9[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \slv_reg9[23]_i_2 
       (.I0(\slv_reg9[31]_i_6_n_0 ),
        .I1(\slv_reg9[31]_i_5_n_0 ),
        .I2(\slv_reg9[31]_i_4_n_0 ),
        .I3(\slv_reg9[31]_i_3_n_0 ),
        .O(\slv_reg9[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \slv_reg9[2]_i_1 
       (.I0(s00_axi_wdata[2]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_wready),
        .I4(s00_axi_awready),
        .I5(\adder[14]__92_carry_n_5 ),
        .O(\slv_reg9[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0100FFFF)) 
    \slv_reg9[31]_i_1 
       (.I0(\slv_reg9[31]_i_3_n_0 ),
        .I1(\slv_reg9[31]_i_4_n_0 ),
        .I2(\slv_reg9[31]_i_5_n_0 ),
        .I3(\slv_reg9[31]_i_6_n_0 ),
        .I4(s00_axi_aresetn),
        .O(\slv_reg9[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg9[31]_i_10 
       (.I0(\slv_reg8_reg_n_0_[20] ),
        .I1(\slv_reg8_reg_n_0_[17] ),
        .I2(\slv_reg8_reg_n_0_[7] ),
        .I3(\slv_reg8_reg_n_0_[6] ),
        .O(\slv_reg9[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg9[31]_i_11 
       (.I0(\slv_reg8_reg_n_0_[30] ),
        .I1(\slv_reg8_reg_n_0_[24] ),
        .I2(\slv_reg8_reg_n_0_[11] ),
        .I3(\slv_reg8_reg_n_0_[3] ),
        .O(\slv_reg9[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hABAAAAAAAAAAAAAA)) 
    \slv_reg9[31]_i_2 
       (.I0(\slv_reg8[31]_i_4_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[3]),
        .I4(s00_axi_wstrb[3]),
        .I5(\slv_reg9[31]_i_7_n_0 ),
        .O(\slv_reg9[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \slv_reg9[31]_i_3 
       (.I0(\slv_reg8_reg_n_0_[12] ),
        .I1(\slv_reg8_reg_n_0_[31] ),
        .I2(\slv_reg8_reg_n_0_[9] ),
        .I3(\slv_reg8_reg_n_0_[16] ),
        .I4(\slv_reg9[31]_i_8_n_0 ),
        .O(\slv_reg9[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \slv_reg9[31]_i_4 
       (.I0(\slv_reg8_reg_n_0_[23] ),
        .I1(\slv_reg8_reg_n_0_[0] ),
        .I2(\slv_reg8_reg_n_0_[18] ),
        .I3(\slv_reg8_reg_n_0_[22] ),
        .I4(\slv_reg9[31]_i_9_n_0 ),
        .O(\slv_reg9[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \slv_reg9[31]_i_5 
       (.I0(\slv_reg8_reg_n_0_[19] ),
        .I1(\slv_reg8_reg_n_0_[27] ),
        .I2(\slv_reg8_reg_n_0_[2] ),
        .I3(\slv_reg8_reg_n_0_[29] ),
        .I4(\slv_reg9[31]_i_10_n_0 ),
        .O(\slv_reg9[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \slv_reg9[31]_i_6 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\slv_reg9[31]_i_11_n_0 ),
        .I2(\slv_reg8_reg_n_0_[21] ),
        .I3(\slv_reg8_reg_n_0_[14] ),
        .I4(\slv_reg8_reg_n_0_[15] ),
        .I5(\slv_reg8_reg_n_0_[10] ),
        .O(\slv_reg9[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg9[31]_i_7 
       (.I0(s00_axi_awready),
        .I1(s00_axi_wready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(p_0_in[0]),
        .O(\slv_reg9[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg9[31]_i_8 
       (.I0(\slv_reg8_reg_n_0_[28] ),
        .I1(\slv_reg8_reg_n_0_[5] ),
        .I2(\slv_reg8_reg_n_0_[25] ),
        .I3(\slv_reg8_reg_n_0_[13] ),
        .O(\slv_reg9[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg9[31]_i_9 
       (.I0(\slv_reg8_reg_n_0_[8] ),
        .I1(\slv_reg8_reg_n_0_[1] ),
        .I2(\slv_reg8_reg_n_0_[26] ),
        .I3(\slv_reg8_reg_n_0_[4] ),
        .O(\slv_reg9[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \slv_reg9[3]_i_1 
       (.I0(s00_axi_wdata[3]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_wready),
        .I4(s00_axi_awready),
        .I5(\adder[14]__92_carry_n_4 ),
        .O(\slv_reg9[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \slv_reg9[4]_i_1 
       (.I0(s00_axi_wdata[4]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_wready),
        .I4(s00_axi_awready),
        .I5(\adder[14]__92_carry__0_n_7 ),
        .O(\slv_reg9[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \slv_reg9[5]_i_1 
       (.I0(s00_axi_wdata[5]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_wready),
        .I4(s00_axi_awready),
        .I5(\adder[14]__92_carry__0_n_6 ),
        .O(\slv_reg9[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \slv_reg9[6]_i_1 
       (.I0(s00_axi_wdata[6]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_wready),
        .I4(s00_axi_awready),
        .I5(\adder[14]__92_carry__0_n_5 ),
        .O(\slv_reg9[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABAAAAAAAAAAAAAA)) 
    \slv_reg9[7]_i_1 
       (.I0(\slv_reg8[31]_i_4_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[3]),
        .I4(s00_axi_wstrb[0]),
        .I5(\slv_reg9[31]_i_7_n_0 ),
        .O(\slv_reg9[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \slv_reg9[7]_i_2 
       (.I0(s00_axi_wdata[7]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_wready),
        .I4(s00_axi_awready),
        .I5(\adder[14]__92_carry__0_n_4 ),
        .O(\slv_reg9[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \slv_reg9[8]_i_1 
       (.I0(s00_axi_wdata[8]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_wready),
        .I4(s00_axi_awready),
        .I5(\slv_reg9_reg[8]_i_2_n_3 ),
        .O(\slv_reg9[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg9[9]_i_1 
       (.I0(s00_axi_awready),
        .I1(s00_axi_wready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wdata[9]),
        .O(\slv_reg9[9]_i_1_n_0 ));
  FDRE \slv_reg9_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\slv_reg9[0]_i_1_n_0 ),
        .Q(slv_reg9[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[12]_i_1_n_0 ),
        .D(\slv_reg9[10]_i_1_n_0 ),
        .Q(slv_reg9[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[12]_i_1_n_0 ),
        .D(\slv_reg9[11]_i_1_n_0 ),
        .Q(slv_reg9[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[12]_i_1_n_0 ),
        .D(\slv_reg9[12]_i_2_n_0 ),
        .Q(slv_reg9[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg9[13]_i_1_n_0 ),
        .Q(slv_reg9[13]),
        .R(1'b0));
  FDRE \slv_reg9_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg9[14]_i_1_n_0 ),
        .Q(slv_reg9[14]),
        .R(1'b0));
  FDRE \slv_reg9_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg9[15]_i_1_n_0 ),
        .Q(slv_reg9[15]),
        .R(1'b0));
  FDRE \slv_reg9_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(p_2_in[16]),
        .Q(slv_reg9[16]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(p_2_in[17]),
        .Q(slv_reg9[17]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(p_2_in[18]),
        .Q(slv_reg9[18]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(p_2_in[19]),
        .Q(slv_reg9[19]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\slv_reg9[1]_i_1_n_0 ),
        .Q(slv_reg9[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(p_2_in[20]),
        .Q(slv_reg9[20]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(p_2_in[21]),
        .Q(slv_reg9[21]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(p_2_in[22]),
        .Q(slv_reg9[22]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(p_2_in[23]),
        .Q(slv_reg9[23]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_2_n_0 ),
        .D(p_2_in[24]),
        .Q(slv_reg9[24]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_2_n_0 ),
        .D(p_2_in[25]),
        .Q(slv_reg9[25]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_2_n_0 ),
        .D(p_2_in[26]),
        .Q(slv_reg9[26]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_2_n_0 ),
        .D(p_2_in[27]),
        .Q(slv_reg9[27]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_2_n_0 ),
        .D(p_2_in[28]),
        .Q(slv_reg9[28]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_2_n_0 ),
        .D(p_2_in[29]),
        .Q(slv_reg9[29]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\slv_reg9[2]_i_1_n_0 ),
        .Q(slv_reg9[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_2_n_0 ),
        .D(p_2_in[30]),
        .Q(slv_reg9[30]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_2_n_0 ),
        .D(p_2_in[31]),
        .Q(slv_reg9[31]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\slv_reg9[3]_i_1_n_0 ),
        .Q(slv_reg9[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\slv_reg9[4]_i_1_n_0 ),
        .Q(slv_reg9[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\slv_reg9[5]_i_1_n_0 ),
        .Q(slv_reg9[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\slv_reg9[6]_i_1_n_0 ),
        .Q(slv_reg9[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\slv_reg9[7]_i_2_n_0 ),
        .Q(slv_reg9[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[12]_i_1_n_0 ),
        .D(\slv_reg9[8]_i_1_n_0 ),
        .Q(slv_reg9[8]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \slv_reg9_reg[8]_i_2 
       (.CI(\adder[14]__92_carry__0_n_0 ),
        .CO({\NLW_slv_reg9_reg[8]_i_2_CO_UNCONNECTED [3:1],\slv_reg9_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_slv_reg9_reg[8]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \slv_reg9_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[12]_i_1_n_0 ),
        .D(\slv_reg9[9]_i_1_n_0 ),
        .Q(slv_reg9[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    slv_reg_rden
       (.I0(s00_axi_rvalid),
        .I1(s00_axi_arready),
        .I2(s00_axi_arvalid),
        .O(slv_reg_rden__0));
endmodule

(* CHECK_LICENSE_TYPE = "lab2_compute_sad_0_0,compute_sad_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "compute_sad_v1_0,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [5:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [5:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compute_sad_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule
`endif
