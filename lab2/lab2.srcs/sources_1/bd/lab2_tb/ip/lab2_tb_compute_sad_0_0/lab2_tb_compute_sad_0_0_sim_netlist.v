// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Sat Mar 25 00:14:51 2017
// Host        : shlab_57-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top lab2_tb_compute_sad_0_0 -prefix
//               lab2_tb_compute_sad_0_0_ lab2_compute_sad_0_0_sim_netlist.v
// Design      : lab2_compute_sad_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module lab2_tb_compute_sad_0_0_compute_sad_v1_0
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rvalid,
    s00_axi_bvalid,
    CO,
    O,
    \slv_reg9_reg[12] ,
    \slv_reg9_reg[12]_0 ,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_aresetn,
    DI,
    S,
    s00_axi_awaddr,
    s00_axi_araddr);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output [0:0]CO;
  output [0:0]O;
  output [0:0]\slv_reg9_reg[12] ;
  output [0:0]\slv_reg9_reg[12]_0 ;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input [1:0]DI;
  input [1:0]S;
  input [3:0]s00_axi_awaddr;
  input [3:0]s00_axi_araddr;

  wire [0:0]CO;
  wire [1:0]DI;
  wire [0:0]O;
  wire [1:0]S;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
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
  wire [0:0]\slv_reg9_reg[12] ;
  wire [0:0]\slv_reg9_reg[12]_0 ;
  wire slv_reg_rden;

  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .I3(s00_axi_wready),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[31]_i_1 
       (.I0(s00_axi_rvalid),
        .I1(s00_axi_arready),
        .I2(s00_axi_arvalid),
        .O(slv_reg_rden));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  lab2_tb_compute_sad_0_0_compute_sad_v1_0_S00_AXI compute_sad_v1_0_S00_AXI_inst
       (.CO(CO),
        .DI(DI),
        .E(slv_reg_rden),
        .O(O),
        .S(S),
        .axi_arready_reg_0(axi_rvalid_i_1_n_0),
        .axi_awready_reg_0(axi_bvalid_i_1_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg9_reg[12]_0 (\slv_reg9_reg[12] ),
        .\slv_reg9_reg[12]_1 (\slv_reg9_reg[12]_0 ));
endmodule

module lab2_tb_compute_sad_0_0_compute_sad_v1_0_S00_AXI
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_rvalid,
    CO,
    O,
    \slv_reg9_reg[12]_0 ,
    \slv_reg9_reg[12]_1 ,
    s00_axi_rdata,
    s00_axi_aclk,
    axi_awready_reg_0,
    axi_arready_reg_0,
    s00_axi_wdata,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    DI,
    S,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_araddr,
    E);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [0:0]CO;
  output [0:0]O;
  output [0:0]\slv_reg9_reg[12]_0 ;
  output [0:0]\slv_reg9_reg[12]_1 ;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input axi_awready_reg_0;
  input axi_arready_reg_0;
  input [31:0]s00_axi_wdata;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input [1:0]DI;
  input [1:0]S;
  input s00_axi_arvalid;
  input [3:0]s00_axi_awaddr;
  input [3:0]s00_axi_araddr;
  input [0:0]E;

  wire [0:0]CO;
  wire [1:0]DI;
  wire [0:0]E;
  wire [0:0]O;
  wire [1:0]S;
  wire \abs_diff[0][3]_i_2_n_0 ;
  wire \abs_diff[0][3]_i_3_n_0 ;
  wire \abs_diff[0][3]_i_4_n_0 ;
  wire \abs_diff[0][3]_i_5_n_0 ;
  wire \abs_diff[0][3]_i_6_n_0 ;
  wire \abs_diff[0][3]_i_7_n_0 ;
  wire \abs_diff[0][3]_i_8_n_0 ;
  wire \abs_diff[0][3]_i_9_n_0 ;
  wire \abs_diff[0][7]_i_11_n_0 ;
  wire \abs_diff[0][7]_i_12_n_0 ;
  wire \abs_diff[0][7]_i_13_n_0 ;
  wire \abs_diff[0][7]_i_14_n_0 ;
  wire \abs_diff[0][7]_i_15_n_0 ;
  wire \abs_diff[0][7]_i_16_n_0 ;
  wire \abs_diff[0][7]_i_17_n_0 ;
  wire \abs_diff[0][7]_i_18_n_0 ;
  wire \abs_diff[0][7]_i_2_n_0 ;
  wire \abs_diff[0][7]_i_3_n_0 ;
  wire \abs_diff[0][7]_i_4_n_0 ;
  wire \abs_diff[0][7]_i_5_n_0 ;
  wire \abs_diff[0][7]_i_6_n_0 ;
  wire \abs_diff[0][7]_i_7_n_0 ;
  wire \abs_diff[0][7]_i_8_n_0 ;
  wire \abs_diff[0][7]_i_9_n_0 ;
  wire \abs_diff[10][3]_i_2_n_0 ;
  wire \abs_diff[10][3]_i_3_n_0 ;
  wire \abs_diff[10][3]_i_4_n_0 ;
  wire \abs_diff[10][3]_i_5_n_0 ;
  wire \abs_diff[10][3]_i_6_n_0 ;
  wire \abs_diff[10][3]_i_7_n_0 ;
  wire \abs_diff[10][3]_i_8_n_0 ;
  wire \abs_diff[10][3]_i_9_n_0 ;
  wire \abs_diff[10][7]_i_11_n_0 ;
  wire \abs_diff[10][7]_i_12_n_0 ;
  wire \abs_diff[10][7]_i_13_n_0 ;
  wire \abs_diff[10][7]_i_14_n_0 ;
  wire \abs_diff[10][7]_i_15_n_0 ;
  wire \abs_diff[10][7]_i_16_n_0 ;
  wire \abs_diff[10][7]_i_17_n_0 ;
  wire \abs_diff[10][7]_i_18_n_0 ;
  wire \abs_diff[10][7]_i_2_n_0 ;
  wire \abs_diff[10][7]_i_3_n_0 ;
  wire \abs_diff[10][7]_i_4_n_0 ;
  wire \abs_diff[10][7]_i_5_n_0 ;
  wire \abs_diff[10][7]_i_6_n_0 ;
  wire \abs_diff[10][7]_i_7_n_0 ;
  wire \abs_diff[10][7]_i_8_n_0 ;
  wire \abs_diff[10][7]_i_9_n_0 ;
  wire \abs_diff[11][3]_i_2_n_0 ;
  wire \abs_diff[11][3]_i_3_n_0 ;
  wire \abs_diff[11][3]_i_4_n_0 ;
  wire \abs_diff[11][3]_i_5_n_0 ;
  wire \abs_diff[11][3]_i_6_n_0 ;
  wire \abs_diff[11][3]_i_7_n_0 ;
  wire \abs_diff[11][3]_i_8_n_0 ;
  wire \abs_diff[11][3]_i_9_n_0 ;
  wire \abs_diff[11][7]_i_11_n_0 ;
  wire \abs_diff[11][7]_i_12_n_0 ;
  wire \abs_diff[11][7]_i_13_n_0 ;
  wire \abs_diff[11][7]_i_14_n_0 ;
  wire \abs_diff[11][7]_i_15_n_0 ;
  wire \abs_diff[11][7]_i_16_n_0 ;
  wire \abs_diff[11][7]_i_17_n_0 ;
  wire \abs_diff[11][7]_i_18_n_0 ;
  wire \abs_diff[11][7]_i_2_n_0 ;
  wire \abs_diff[11][7]_i_3_n_0 ;
  wire \abs_diff[11][7]_i_4_n_0 ;
  wire \abs_diff[11][7]_i_5_n_0 ;
  wire \abs_diff[11][7]_i_6_n_0 ;
  wire \abs_diff[11][7]_i_7_n_0 ;
  wire \abs_diff[11][7]_i_8_n_0 ;
  wire \abs_diff[11][7]_i_9_n_0 ;
  wire \abs_diff[12][3]_i_2_n_0 ;
  wire \abs_diff[12][3]_i_3_n_0 ;
  wire \abs_diff[12][3]_i_4_n_0 ;
  wire \abs_diff[12][3]_i_5_n_0 ;
  wire \abs_diff[12][3]_i_6_n_0 ;
  wire \abs_diff[12][3]_i_7_n_0 ;
  wire \abs_diff[12][3]_i_8_n_0 ;
  wire \abs_diff[12][3]_i_9_n_0 ;
  wire \abs_diff[12][7]_i_11_n_0 ;
  wire \abs_diff[12][7]_i_12_n_0 ;
  wire \abs_diff[12][7]_i_13_n_0 ;
  wire \abs_diff[12][7]_i_14_n_0 ;
  wire \abs_diff[12][7]_i_15_n_0 ;
  wire \abs_diff[12][7]_i_16_n_0 ;
  wire \abs_diff[12][7]_i_17_n_0 ;
  wire \abs_diff[12][7]_i_18_n_0 ;
  wire \abs_diff[12][7]_i_2_n_0 ;
  wire \abs_diff[12][7]_i_3_n_0 ;
  wire \abs_diff[12][7]_i_4_n_0 ;
  wire \abs_diff[12][7]_i_5_n_0 ;
  wire \abs_diff[12][7]_i_6_n_0 ;
  wire \abs_diff[12][7]_i_7_n_0 ;
  wire \abs_diff[12][7]_i_8_n_0 ;
  wire \abs_diff[12][7]_i_9_n_0 ;
  wire \abs_diff[13][3]_i_2_n_0 ;
  wire \abs_diff[13][3]_i_3_n_0 ;
  wire \abs_diff[13][3]_i_4_n_0 ;
  wire \abs_diff[13][3]_i_5_n_0 ;
  wire \abs_diff[13][3]_i_6_n_0 ;
  wire \abs_diff[13][3]_i_7_n_0 ;
  wire \abs_diff[13][3]_i_8_n_0 ;
  wire \abs_diff[13][3]_i_9_n_0 ;
  wire \abs_diff[13][7]_i_11_n_0 ;
  wire \abs_diff[13][7]_i_12_n_0 ;
  wire \abs_diff[13][7]_i_13_n_0 ;
  wire \abs_diff[13][7]_i_14_n_0 ;
  wire \abs_diff[13][7]_i_15_n_0 ;
  wire \abs_diff[13][7]_i_16_n_0 ;
  wire \abs_diff[13][7]_i_17_n_0 ;
  wire \abs_diff[13][7]_i_18_n_0 ;
  wire \abs_diff[13][7]_i_2_n_0 ;
  wire \abs_diff[13][7]_i_3_n_0 ;
  wire \abs_diff[13][7]_i_4_n_0 ;
  wire \abs_diff[13][7]_i_5_n_0 ;
  wire \abs_diff[13][7]_i_6_n_0 ;
  wire \abs_diff[13][7]_i_7_n_0 ;
  wire \abs_diff[13][7]_i_8_n_0 ;
  wire \abs_diff[13][7]_i_9_n_0 ;
  wire \abs_diff[14][3]_i_2_n_0 ;
  wire \abs_diff[14][3]_i_3_n_0 ;
  wire \abs_diff[14][3]_i_4_n_0 ;
  wire \abs_diff[14][3]_i_5_n_0 ;
  wire \abs_diff[14][3]_i_6_n_0 ;
  wire \abs_diff[14][3]_i_7_n_0 ;
  wire \abs_diff[14][3]_i_8_n_0 ;
  wire \abs_diff[14][3]_i_9_n_0 ;
  wire \abs_diff[14][7]_i_11_n_0 ;
  wire \abs_diff[14][7]_i_12_n_0 ;
  wire \abs_diff[14][7]_i_13_n_0 ;
  wire \abs_diff[14][7]_i_14_n_0 ;
  wire \abs_diff[14][7]_i_15_n_0 ;
  wire \abs_diff[14][7]_i_16_n_0 ;
  wire \abs_diff[14][7]_i_17_n_0 ;
  wire \abs_diff[14][7]_i_18_n_0 ;
  wire \abs_diff[14][7]_i_2_n_0 ;
  wire \abs_diff[14][7]_i_3_n_0 ;
  wire \abs_diff[14][7]_i_4_n_0 ;
  wire \abs_diff[14][7]_i_5_n_0 ;
  wire \abs_diff[14][7]_i_6_n_0 ;
  wire \abs_diff[14][7]_i_7_n_0 ;
  wire \abs_diff[14][7]_i_8_n_0 ;
  wire \abs_diff[14][7]_i_9_n_0 ;
  wire \abs_diff[15][3]_i_2_n_0 ;
  wire \abs_diff[15][3]_i_3_n_0 ;
  wire \abs_diff[15][3]_i_4_n_0 ;
  wire \abs_diff[15][3]_i_5_n_0 ;
  wire \abs_diff[15][3]_i_6_n_0 ;
  wire \abs_diff[15][3]_i_7_n_0 ;
  wire \abs_diff[15][3]_i_8_n_0 ;
  wire \abs_diff[15][3]_i_9_n_0 ;
  wire \abs_diff[15][7]_i_11_n_0 ;
  wire \abs_diff[15][7]_i_12_n_0 ;
  wire \abs_diff[15][7]_i_13_n_0 ;
  wire \abs_diff[15][7]_i_14_n_0 ;
  wire \abs_diff[15][7]_i_15_n_0 ;
  wire \abs_diff[15][7]_i_16_n_0 ;
  wire \abs_diff[15][7]_i_17_n_0 ;
  wire \abs_diff[15][7]_i_18_n_0 ;
  wire \abs_diff[15][7]_i_2_n_0 ;
  wire \abs_diff[15][7]_i_3_n_0 ;
  wire \abs_diff[15][7]_i_4_n_0 ;
  wire \abs_diff[15][7]_i_5_n_0 ;
  wire \abs_diff[15][7]_i_6_n_0 ;
  wire \abs_diff[15][7]_i_7_n_0 ;
  wire \abs_diff[15][7]_i_8_n_0 ;
  wire \abs_diff[15][7]_i_9_n_0 ;
  wire \abs_diff[1][3]_i_2_n_0 ;
  wire \abs_diff[1][3]_i_3_n_0 ;
  wire \abs_diff[1][3]_i_4_n_0 ;
  wire \abs_diff[1][3]_i_5_n_0 ;
  wire \abs_diff[1][3]_i_6_n_0 ;
  wire \abs_diff[1][3]_i_7_n_0 ;
  wire \abs_diff[1][3]_i_8_n_0 ;
  wire \abs_diff[1][3]_i_9_n_0 ;
  wire \abs_diff[1][7]_i_11_n_0 ;
  wire \abs_diff[1][7]_i_12_n_0 ;
  wire \abs_diff[1][7]_i_13_n_0 ;
  wire \abs_diff[1][7]_i_14_n_0 ;
  wire \abs_diff[1][7]_i_15_n_0 ;
  wire \abs_diff[1][7]_i_16_n_0 ;
  wire \abs_diff[1][7]_i_17_n_0 ;
  wire \abs_diff[1][7]_i_18_n_0 ;
  wire \abs_diff[1][7]_i_2_n_0 ;
  wire \abs_diff[1][7]_i_3_n_0 ;
  wire \abs_diff[1][7]_i_4_n_0 ;
  wire \abs_diff[1][7]_i_5_n_0 ;
  wire \abs_diff[1][7]_i_6_n_0 ;
  wire \abs_diff[1][7]_i_7_n_0 ;
  wire \abs_diff[1][7]_i_8_n_0 ;
  wire \abs_diff[1][7]_i_9_n_0 ;
  wire \abs_diff[2][3]_i_2_n_0 ;
  wire \abs_diff[2][3]_i_3_n_0 ;
  wire \abs_diff[2][3]_i_4_n_0 ;
  wire \abs_diff[2][3]_i_5_n_0 ;
  wire \abs_diff[2][3]_i_6_n_0 ;
  wire \abs_diff[2][3]_i_7_n_0 ;
  wire \abs_diff[2][3]_i_8_n_0 ;
  wire \abs_diff[2][3]_i_9_n_0 ;
  wire \abs_diff[2][7]_i_11_n_0 ;
  wire \abs_diff[2][7]_i_12_n_0 ;
  wire \abs_diff[2][7]_i_13_n_0 ;
  wire \abs_diff[2][7]_i_14_n_0 ;
  wire \abs_diff[2][7]_i_15_n_0 ;
  wire \abs_diff[2][7]_i_16_n_0 ;
  wire \abs_diff[2][7]_i_17_n_0 ;
  wire \abs_diff[2][7]_i_18_n_0 ;
  wire \abs_diff[2][7]_i_2_n_0 ;
  wire \abs_diff[2][7]_i_3_n_0 ;
  wire \abs_diff[2][7]_i_4_n_0 ;
  wire \abs_diff[2][7]_i_5_n_0 ;
  wire \abs_diff[2][7]_i_6_n_0 ;
  wire \abs_diff[2][7]_i_7_n_0 ;
  wire \abs_diff[2][7]_i_8_n_0 ;
  wire \abs_diff[2][7]_i_9_n_0 ;
  wire \abs_diff[3][3]_i_2_n_0 ;
  wire \abs_diff[3][3]_i_3_n_0 ;
  wire \abs_diff[3][3]_i_4_n_0 ;
  wire \abs_diff[3][3]_i_5_n_0 ;
  wire \abs_diff[3][3]_i_6_n_0 ;
  wire \abs_diff[3][3]_i_7_n_0 ;
  wire \abs_diff[3][3]_i_8_n_0 ;
  wire \abs_diff[3][3]_i_9_n_0 ;
  wire \abs_diff[3][7]_i_11_n_0 ;
  wire \abs_diff[3][7]_i_12_n_0 ;
  wire \abs_diff[3][7]_i_13_n_0 ;
  wire \abs_diff[3][7]_i_14_n_0 ;
  wire \abs_diff[3][7]_i_15_n_0 ;
  wire \abs_diff[3][7]_i_16_n_0 ;
  wire \abs_diff[3][7]_i_17_n_0 ;
  wire \abs_diff[3][7]_i_18_n_0 ;
  wire \abs_diff[3][7]_i_2_n_0 ;
  wire \abs_diff[3][7]_i_3_n_0 ;
  wire \abs_diff[3][7]_i_4_n_0 ;
  wire \abs_diff[3][7]_i_5_n_0 ;
  wire \abs_diff[3][7]_i_6_n_0 ;
  wire \abs_diff[3][7]_i_7_n_0 ;
  wire \abs_diff[3][7]_i_8_n_0 ;
  wire \abs_diff[3][7]_i_9_n_0 ;
  wire \abs_diff[4][3]_i_2_n_0 ;
  wire \abs_diff[4][3]_i_3_n_0 ;
  wire \abs_diff[4][3]_i_4_n_0 ;
  wire \abs_diff[4][3]_i_5_n_0 ;
  wire \abs_diff[4][3]_i_6_n_0 ;
  wire \abs_diff[4][3]_i_7_n_0 ;
  wire \abs_diff[4][3]_i_8_n_0 ;
  wire \abs_diff[4][3]_i_9_n_0 ;
  wire \abs_diff[4][7]_i_11_n_0 ;
  wire \abs_diff[4][7]_i_12_n_0 ;
  wire \abs_diff[4][7]_i_13_n_0 ;
  wire \abs_diff[4][7]_i_14_n_0 ;
  wire \abs_diff[4][7]_i_15_n_0 ;
  wire \abs_diff[4][7]_i_16_n_0 ;
  wire \abs_diff[4][7]_i_17_n_0 ;
  wire \abs_diff[4][7]_i_18_n_0 ;
  wire \abs_diff[4][7]_i_2_n_0 ;
  wire \abs_diff[4][7]_i_3_n_0 ;
  wire \abs_diff[4][7]_i_4_n_0 ;
  wire \abs_diff[4][7]_i_5_n_0 ;
  wire \abs_diff[4][7]_i_6_n_0 ;
  wire \abs_diff[4][7]_i_7_n_0 ;
  wire \abs_diff[4][7]_i_8_n_0 ;
  wire \abs_diff[4][7]_i_9_n_0 ;
  wire \abs_diff[5][3]_i_2_n_0 ;
  wire \abs_diff[5][3]_i_3_n_0 ;
  wire \abs_diff[5][3]_i_4_n_0 ;
  wire \abs_diff[5][3]_i_5_n_0 ;
  wire \abs_diff[5][3]_i_6_n_0 ;
  wire \abs_diff[5][3]_i_7_n_0 ;
  wire \abs_diff[5][3]_i_8_n_0 ;
  wire \abs_diff[5][3]_i_9_n_0 ;
  wire \abs_diff[5][7]_i_11_n_0 ;
  wire \abs_diff[5][7]_i_12_n_0 ;
  wire \abs_diff[5][7]_i_13_n_0 ;
  wire \abs_diff[5][7]_i_14_n_0 ;
  wire \abs_diff[5][7]_i_15_n_0 ;
  wire \abs_diff[5][7]_i_16_n_0 ;
  wire \abs_diff[5][7]_i_17_n_0 ;
  wire \abs_diff[5][7]_i_18_n_0 ;
  wire \abs_diff[5][7]_i_2_n_0 ;
  wire \abs_diff[5][7]_i_3_n_0 ;
  wire \abs_diff[5][7]_i_4_n_0 ;
  wire \abs_diff[5][7]_i_5_n_0 ;
  wire \abs_diff[5][7]_i_6_n_0 ;
  wire \abs_diff[5][7]_i_7_n_0 ;
  wire \abs_diff[5][7]_i_8_n_0 ;
  wire \abs_diff[5][7]_i_9_n_0 ;
  wire \abs_diff[6][3]_i_2_n_0 ;
  wire \abs_diff[6][3]_i_3_n_0 ;
  wire \abs_diff[6][3]_i_4_n_0 ;
  wire \abs_diff[6][3]_i_5_n_0 ;
  wire \abs_diff[6][3]_i_6_n_0 ;
  wire \abs_diff[6][3]_i_7_n_0 ;
  wire \abs_diff[6][3]_i_8_n_0 ;
  wire \abs_diff[6][3]_i_9_n_0 ;
  wire \abs_diff[6][7]_i_11_n_0 ;
  wire \abs_diff[6][7]_i_12_n_0 ;
  wire \abs_diff[6][7]_i_13_n_0 ;
  wire \abs_diff[6][7]_i_14_n_0 ;
  wire \abs_diff[6][7]_i_15_n_0 ;
  wire \abs_diff[6][7]_i_16_n_0 ;
  wire \abs_diff[6][7]_i_17_n_0 ;
  wire \abs_diff[6][7]_i_18_n_0 ;
  wire \abs_diff[6][7]_i_2_n_0 ;
  wire \abs_diff[6][7]_i_3_n_0 ;
  wire \abs_diff[6][7]_i_4_n_0 ;
  wire \abs_diff[6][7]_i_5_n_0 ;
  wire \abs_diff[6][7]_i_6_n_0 ;
  wire \abs_diff[6][7]_i_7_n_0 ;
  wire \abs_diff[6][7]_i_8_n_0 ;
  wire \abs_diff[6][7]_i_9_n_0 ;
  wire \abs_diff[7][3]_i_2_n_0 ;
  wire \abs_diff[7][3]_i_3_n_0 ;
  wire \abs_diff[7][3]_i_4_n_0 ;
  wire \abs_diff[7][3]_i_5_n_0 ;
  wire \abs_diff[7][3]_i_6_n_0 ;
  wire \abs_diff[7][3]_i_7_n_0 ;
  wire \abs_diff[7][3]_i_8_n_0 ;
  wire \abs_diff[7][3]_i_9_n_0 ;
  wire \abs_diff[7][7]_i_11_n_0 ;
  wire \abs_diff[7][7]_i_12_n_0 ;
  wire \abs_diff[7][7]_i_13_n_0 ;
  wire \abs_diff[7][7]_i_14_n_0 ;
  wire \abs_diff[7][7]_i_15_n_0 ;
  wire \abs_diff[7][7]_i_16_n_0 ;
  wire \abs_diff[7][7]_i_17_n_0 ;
  wire \abs_diff[7][7]_i_18_n_0 ;
  wire \abs_diff[7][7]_i_2_n_0 ;
  wire \abs_diff[7][7]_i_3_n_0 ;
  wire \abs_diff[7][7]_i_4_n_0 ;
  wire \abs_diff[7][7]_i_5_n_0 ;
  wire \abs_diff[7][7]_i_6_n_0 ;
  wire \abs_diff[7][7]_i_7_n_0 ;
  wire \abs_diff[7][7]_i_8_n_0 ;
  wire \abs_diff[7][7]_i_9_n_0 ;
  wire \abs_diff[8][3]_i_2_n_0 ;
  wire \abs_diff[8][3]_i_3_n_0 ;
  wire \abs_diff[8][3]_i_4_n_0 ;
  wire \abs_diff[8][3]_i_5_n_0 ;
  wire \abs_diff[8][3]_i_6_n_0 ;
  wire \abs_diff[8][3]_i_7_n_0 ;
  wire \abs_diff[8][3]_i_8_n_0 ;
  wire \abs_diff[8][3]_i_9_n_0 ;
  wire \abs_diff[8][7]_i_11_n_0 ;
  wire \abs_diff[8][7]_i_12_n_0 ;
  wire \abs_diff[8][7]_i_13_n_0 ;
  wire \abs_diff[8][7]_i_14_n_0 ;
  wire \abs_diff[8][7]_i_15_n_0 ;
  wire \abs_diff[8][7]_i_16_n_0 ;
  wire \abs_diff[8][7]_i_17_n_0 ;
  wire \abs_diff[8][7]_i_18_n_0 ;
  wire \abs_diff[8][7]_i_2_n_0 ;
  wire \abs_diff[8][7]_i_3_n_0 ;
  wire \abs_diff[8][7]_i_4_n_0 ;
  wire \abs_diff[8][7]_i_5_n_0 ;
  wire \abs_diff[8][7]_i_6_n_0 ;
  wire \abs_diff[8][7]_i_7_n_0 ;
  wire \abs_diff[8][7]_i_8_n_0 ;
  wire \abs_diff[8][7]_i_9_n_0 ;
  wire \abs_diff[9][3]_i_2_n_0 ;
  wire \abs_diff[9][3]_i_3_n_0 ;
  wire \abs_diff[9][3]_i_4_n_0 ;
  wire \abs_diff[9][3]_i_5_n_0 ;
  wire \abs_diff[9][3]_i_6_n_0 ;
  wire \abs_diff[9][3]_i_7_n_0 ;
  wire \abs_diff[9][3]_i_8_n_0 ;
  wire \abs_diff[9][3]_i_9_n_0 ;
  wire \abs_diff[9][7]_i_11_n_0 ;
  wire \abs_diff[9][7]_i_12_n_0 ;
  wire \abs_diff[9][7]_i_13_n_0 ;
  wire \abs_diff[9][7]_i_14_n_0 ;
  wire \abs_diff[9][7]_i_15_n_0 ;
  wire \abs_diff[9][7]_i_16_n_0 ;
  wire \abs_diff[9][7]_i_17_n_0 ;
  wire \abs_diff[9][7]_i_18_n_0 ;
  wire \abs_diff[9][7]_i_2_n_0 ;
  wire \abs_diff[9][7]_i_3_n_0 ;
  wire \abs_diff[9][7]_i_4_n_0 ;
  wire \abs_diff[9][7]_i_5_n_0 ;
  wire \abs_diff[9][7]_i_6_n_0 ;
  wire \abs_diff[9][7]_i_7_n_0 ;
  wire \abs_diff[9][7]_i_8_n_0 ;
  wire \abs_diff[9][7]_i_9_n_0 ;
  wire \abs_diff_reg[0][3]_i_1_n_0 ;
  wire \abs_diff_reg[0][3]_i_1_n_1 ;
  wire \abs_diff_reg[0][3]_i_1_n_2 ;
  wire \abs_diff_reg[0][3]_i_1_n_3 ;
  wire \abs_diff_reg[0][3]_i_1_n_4 ;
  wire \abs_diff_reg[0][3]_i_1_n_5 ;
  wire \abs_diff_reg[0][3]_i_1_n_6 ;
  wire \abs_diff_reg[0][3]_i_1_n_7 ;
  wire \abs_diff_reg[0][7]_i_10_n_0 ;
  wire \abs_diff_reg[0][7]_i_10_n_1 ;
  wire \abs_diff_reg[0][7]_i_10_n_2 ;
  wire \abs_diff_reg[0][7]_i_10_n_3 ;
  wire \abs_diff_reg[0][7]_i_1_n_0 ;
  wire \abs_diff_reg[0][7]_i_1_n_1 ;
  wire \abs_diff_reg[0][7]_i_1_n_2 ;
  wire \abs_diff_reg[0][7]_i_1_n_3 ;
  wire \abs_diff_reg[0][7]_i_1_n_4 ;
  wire \abs_diff_reg[0][7]_i_1_n_5 ;
  wire \abs_diff_reg[0][7]_i_1_n_6 ;
  wire \abs_diff_reg[0][7]_i_1_n_7 ;
  wire \abs_diff_reg[0][8]_i_1_n_7 ;
  wire [8:0]\abs_diff_reg[0]_14 ;
  wire \abs_diff_reg[10][3]_i_1_n_0 ;
  wire \abs_diff_reg[10][3]_i_1_n_1 ;
  wire \abs_diff_reg[10][3]_i_1_n_2 ;
  wire \abs_diff_reg[10][3]_i_1_n_3 ;
  wire \abs_diff_reg[10][3]_i_1_n_4 ;
  wire \abs_diff_reg[10][3]_i_1_n_5 ;
  wire \abs_diff_reg[10][3]_i_1_n_6 ;
  wire \abs_diff_reg[10][3]_i_1_n_7 ;
  wire \abs_diff_reg[10][7]_i_10_n_0 ;
  wire \abs_diff_reg[10][7]_i_10_n_1 ;
  wire \abs_diff_reg[10][7]_i_10_n_2 ;
  wire \abs_diff_reg[10][7]_i_10_n_3 ;
  wire \abs_diff_reg[10][7]_i_1_n_0 ;
  wire \abs_diff_reg[10][7]_i_1_n_1 ;
  wire \abs_diff_reg[10][7]_i_1_n_2 ;
  wire \abs_diff_reg[10][7]_i_1_n_3 ;
  wire \abs_diff_reg[10][7]_i_1_n_4 ;
  wire \abs_diff_reg[10][7]_i_1_n_5 ;
  wire \abs_diff_reg[10][7]_i_1_n_6 ;
  wire \abs_diff_reg[10][7]_i_1_n_7 ;
  wire \abs_diff_reg[10][8]_i_1_n_7 ;
  wire [8:0]\abs_diff_reg[10]_12 ;
  wire \abs_diff_reg[11][3]_i_1_n_0 ;
  wire \abs_diff_reg[11][3]_i_1_n_1 ;
  wire \abs_diff_reg[11][3]_i_1_n_2 ;
  wire \abs_diff_reg[11][3]_i_1_n_3 ;
  wire \abs_diff_reg[11][3]_i_1_n_4 ;
  wire \abs_diff_reg[11][3]_i_1_n_5 ;
  wire \abs_diff_reg[11][3]_i_1_n_6 ;
  wire \abs_diff_reg[11][3]_i_1_n_7 ;
  wire \abs_diff_reg[11][7]_i_10_n_0 ;
  wire \abs_diff_reg[11][7]_i_10_n_1 ;
  wire \abs_diff_reg[11][7]_i_10_n_2 ;
  wire \abs_diff_reg[11][7]_i_10_n_3 ;
  wire \abs_diff_reg[11][7]_i_1_n_0 ;
  wire \abs_diff_reg[11][7]_i_1_n_1 ;
  wire \abs_diff_reg[11][7]_i_1_n_2 ;
  wire \abs_diff_reg[11][7]_i_1_n_3 ;
  wire \abs_diff_reg[11][7]_i_1_n_4 ;
  wire \abs_diff_reg[11][7]_i_1_n_5 ;
  wire \abs_diff_reg[11][7]_i_1_n_6 ;
  wire \abs_diff_reg[11][7]_i_1_n_7 ;
  wire \abs_diff_reg[11][8]_i_1_n_7 ;
  wire [8:0]\abs_diff_reg[11]_10 ;
  wire \abs_diff_reg[12][3]_i_1_n_0 ;
  wire \abs_diff_reg[12][3]_i_1_n_1 ;
  wire \abs_diff_reg[12][3]_i_1_n_2 ;
  wire \abs_diff_reg[12][3]_i_1_n_3 ;
  wire \abs_diff_reg[12][3]_i_1_n_4 ;
  wire \abs_diff_reg[12][3]_i_1_n_5 ;
  wire \abs_diff_reg[12][3]_i_1_n_6 ;
  wire \abs_diff_reg[12][3]_i_1_n_7 ;
  wire \abs_diff_reg[12][7]_i_10_n_0 ;
  wire \abs_diff_reg[12][7]_i_10_n_1 ;
  wire \abs_diff_reg[12][7]_i_10_n_2 ;
  wire \abs_diff_reg[12][7]_i_10_n_3 ;
  wire \abs_diff_reg[12][7]_i_1_n_0 ;
  wire \abs_diff_reg[12][7]_i_1_n_1 ;
  wire \abs_diff_reg[12][7]_i_1_n_2 ;
  wire \abs_diff_reg[12][7]_i_1_n_3 ;
  wire \abs_diff_reg[12][7]_i_1_n_4 ;
  wire \abs_diff_reg[12][7]_i_1_n_5 ;
  wire \abs_diff_reg[12][7]_i_1_n_6 ;
  wire \abs_diff_reg[12][7]_i_1_n_7 ;
  wire \abs_diff_reg[12][8]_i_1_n_7 ;
  wire [8:0]\abs_diff_reg[12]_13 ;
  wire \abs_diff_reg[13][3]_i_1_n_0 ;
  wire \abs_diff_reg[13][3]_i_1_n_1 ;
  wire \abs_diff_reg[13][3]_i_1_n_2 ;
  wire \abs_diff_reg[13][3]_i_1_n_3 ;
  wire \abs_diff_reg[13][3]_i_1_n_4 ;
  wire \abs_diff_reg[13][3]_i_1_n_5 ;
  wire \abs_diff_reg[13][3]_i_1_n_6 ;
  wire \abs_diff_reg[13][3]_i_1_n_7 ;
  wire \abs_diff_reg[13][7]_i_10_n_0 ;
  wire \abs_diff_reg[13][7]_i_10_n_1 ;
  wire \abs_diff_reg[13][7]_i_10_n_2 ;
  wire \abs_diff_reg[13][7]_i_10_n_3 ;
  wire \abs_diff_reg[13][7]_i_1_n_0 ;
  wire \abs_diff_reg[13][7]_i_1_n_1 ;
  wire \abs_diff_reg[13][7]_i_1_n_2 ;
  wire \abs_diff_reg[13][7]_i_1_n_3 ;
  wire \abs_diff_reg[13][7]_i_1_n_4 ;
  wire \abs_diff_reg[13][7]_i_1_n_5 ;
  wire \abs_diff_reg[13][7]_i_1_n_6 ;
  wire \abs_diff_reg[13][7]_i_1_n_7 ;
  wire \abs_diff_reg[13][8]_i_1_n_7 ;
  wire [8:0]\abs_diff_reg[13]_8 ;
  wire \abs_diff_reg[14][3]_i_1_n_0 ;
  wire \abs_diff_reg[14][3]_i_1_n_1 ;
  wire \abs_diff_reg[14][3]_i_1_n_2 ;
  wire \abs_diff_reg[14][3]_i_1_n_3 ;
  wire \abs_diff_reg[14][3]_i_1_n_4 ;
  wire \abs_diff_reg[14][3]_i_1_n_5 ;
  wire \abs_diff_reg[14][3]_i_1_n_6 ;
  wire \abs_diff_reg[14][3]_i_1_n_7 ;
  wire \abs_diff_reg[14][7]_i_10_n_0 ;
  wire \abs_diff_reg[14][7]_i_10_n_1 ;
  wire \abs_diff_reg[14][7]_i_10_n_2 ;
  wire \abs_diff_reg[14][7]_i_10_n_3 ;
  wire \abs_diff_reg[14][7]_i_1_n_0 ;
  wire \abs_diff_reg[14][7]_i_1_n_1 ;
  wire \abs_diff_reg[14][7]_i_1_n_2 ;
  wire \abs_diff_reg[14][7]_i_1_n_3 ;
  wire \abs_diff_reg[14][7]_i_1_n_4 ;
  wire \abs_diff_reg[14][7]_i_1_n_5 ;
  wire \abs_diff_reg[14][7]_i_1_n_6 ;
  wire \abs_diff_reg[14][7]_i_1_n_7 ;
  wire \abs_diff_reg[14][8]_i_1_n_7 ;
  wire [8:0]\abs_diff_reg[14]_9 ;
  wire \abs_diff_reg[15][3]_i_1_n_0 ;
  wire \abs_diff_reg[15][3]_i_1_n_1 ;
  wire \abs_diff_reg[15][3]_i_1_n_2 ;
  wire \abs_diff_reg[15][3]_i_1_n_3 ;
  wire \abs_diff_reg[15][3]_i_1_n_4 ;
  wire \abs_diff_reg[15][3]_i_1_n_5 ;
  wire \abs_diff_reg[15][3]_i_1_n_6 ;
  wire \abs_diff_reg[15][3]_i_1_n_7 ;
  wire \abs_diff_reg[15][7]_i_10_n_0 ;
  wire \abs_diff_reg[15][7]_i_10_n_1 ;
  wire \abs_diff_reg[15][7]_i_10_n_2 ;
  wire \abs_diff_reg[15][7]_i_10_n_3 ;
  wire \abs_diff_reg[15][7]_i_1_n_0 ;
  wire \abs_diff_reg[15][7]_i_1_n_1 ;
  wire \abs_diff_reg[15][7]_i_1_n_2 ;
  wire \abs_diff_reg[15][7]_i_1_n_3 ;
  wire \abs_diff_reg[15][7]_i_1_n_4 ;
  wire \abs_diff_reg[15][7]_i_1_n_5 ;
  wire \abs_diff_reg[15][7]_i_1_n_6 ;
  wire \abs_diff_reg[15][7]_i_1_n_7 ;
  wire \abs_diff_reg[15][8]_i_1_n_7 ;
  wire [8:0]\abs_diff_reg[15]_7 ;
  wire \abs_diff_reg[1][3]_i_1_n_0 ;
  wire \abs_diff_reg[1][3]_i_1_n_1 ;
  wire \abs_diff_reg[1][3]_i_1_n_2 ;
  wire \abs_diff_reg[1][3]_i_1_n_3 ;
  wire \abs_diff_reg[1][3]_i_1_n_4 ;
  wire \abs_diff_reg[1][3]_i_1_n_5 ;
  wire \abs_diff_reg[1][3]_i_1_n_6 ;
  wire \abs_diff_reg[1][3]_i_1_n_7 ;
  wire \abs_diff_reg[1][7]_i_10_n_0 ;
  wire \abs_diff_reg[1][7]_i_10_n_1 ;
  wire \abs_diff_reg[1][7]_i_10_n_2 ;
  wire \abs_diff_reg[1][7]_i_10_n_3 ;
  wire \abs_diff_reg[1][7]_i_1_n_0 ;
  wire \abs_diff_reg[1][7]_i_1_n_1 ;
  wire \abs_diff_reg[1][7]_i_1_n_2 ;
  wire \abs_diff_reg[1][7]_i_1_n_3 ;
  wire \abs_diff_reg[1][7]_i_1_n_4 ;
  wire \abs_diff_reg[1][7]_i_1_n_5 ;
  wire \abs_diff_reg[1][7]_i_1_n_6 ;
  wire \abs_diff_reg[1][7]_i_1_n_7 ;
  wire \abs_diff_reg[1][8]_i_1_n_7 ;
  wire [8:0]\abs_diff_reg[1]_4 ;
  wire \abs_diff_reg[2][3]_i_1_n_0 ;
  wire \abs_diff_reg[2][3]_i_1_n_1 ;
  wire \abs_diff_reg[2][3]_i_1_n_2 ;
  wire \abs_diff_reg[2][3]_i_1_n_3 ;
  wire \abs_diff_reg[2][3]_i_1_n_4 ;
  wire \abs_diff_reg[2][3]_i_1_n_5 ;
  wire \abs_diff_reg[2][3]_i_1_n_6 ;
  wire \abs_diff_reg[2][3]_i_1_n_7 ;
  wire \abs_diff_reg[2][7]_i_10_n_0 ;
  wire \abs_diff_reg[2][7]_i_10_n_1 ;
  wire \abs_diff_reg[2][7]_i_10_n_2 ;
  wire \abs_diff_reg[2][7]_i_10_n_3 ;
  wire \abs_diff_reg[2][7]_i_1_n_0 ;
  wire \abs_diff_reg[2][7]_i_1_n_1 ;
  wire \abs_diff_reg[2][7]_i_1_n_2 ;
  wire \abs_diff_reg[2][7]_i_1_n_3 ;
  wire \abs_diff_reg[2][7]_i_1_n_4 ;
  wire \abs_diff_reg[2][7]_i_1_n_5 ;
  wire \abs_diff_reg[2][7]_i_1_n_6 ;
  wire \abs_diff_reg[2][7]_i_1_n_7 ;
  wire \abs_diff_reg[2][8]_i_1_n_7 ;
  wire [8:0]\abs_diff_reg[2]_5 ;
  wire \abs_diff_reg[3][3]_i_1_n_0 ;
  wire \abs_diff_reg[3][3]_i_1_n_1 ;
  wire \abs_diff_reg[3][3]_i_1_n_2 ;
  wire \abs_diff_reg[3][3]_i_1_n_3 ;
  wire \abs_diff_reg[3][3]_i_1_n_4 ;
  wire \abs_diff_reg[3][3]_i_1_n_5 ;
  wire \abs_diff_reg[3][3]_i_1_n_6 ;
  wire \abs_diff_reg[3][3]_i_1_n_7 ;
  wire \abs_diff_reg[3][7]_i_10_n_0 ;
  wire \abs_diff_reg[3][7]_i_10_n_1 ;
  wire \abs_diff_reg[3][7]_i_10_n_2 ;
  wire \abs_diff_reg[3][7]_i_10_n_3 ;
  wire \abs_diff_reg[3][7]_i_1_n_0 ;
  wire \abs_diff_reg[3][7]_i_1_n_1 ;
  wire \abs_diff_reg[3][7]_i_1_n_2 ;
  wire \abs_diff_reg[3][7]_i_1_n_3 ;
  wire \abs_diff_reg[3][7]_i_1_n_4 ;
  wire \abs_diff_reg[3][7]_i_1_n_5 ;
  wire \abs_diff_reg[3][7]_i_1_n_6 ;
  wire \abs_diff_reg[3][7]_i_1_n_7 ;
  wire \abs_diff_reg[3][8]_i_1_n_7 ;
  wire [8:0]\abs_diff_reg[3]_3 ;
  wire \abs_diff_reg[4][3]_i_1_n_0 ;
  wire \abs_diff_reg[4][3]_i_1_n_1 ;
  wire \abs_diff_reg[4][3]_i_1_n_2 ;
  wire \abs_diff_reg[4][3]_i_1_n_3 ;
  wire \abs_diff_reg[4][3]_i_1_n_4 ;
  wire \abs_diff_reg[4][3]_i_1_n_5 ;
  wire \abs_diff_reg[4][3]_i_1_n_6 ;
  wire \abs_diff_reg[4][3]_i_1_n_7 ;
  wire \abs_diff_reg[4][7]_i_10_n_0 ;
  wire \abs_diff_reg[4][7]_i_10_n_1 ;
  wire \abs_diff_reg[4][7]_i_10_n_2 ;
  wire \abs_diff_reg[4][7]_i_10_n_3 ;
  wire \abs_diff_reg[4][7]_i_1_n_0 ;
  wire \abs_diff_reg[4][7]_i_1_n_1 ;
  wire \abs_diff_reg[4][7]_i_1_n_2 ;
  wire \abs_diff_reg[4][7]_i_1_n_3 ;
  wire \abs_diff_reg[4][7]_i_1_n_4 ;
  wire \abs_diff_reg[4][7]_i_1_n_5 ;
  wire \abs_diff_reg[4][7]_i_1_n_6 ;
  wire \abs_diff_reg[4][7]_i_1_n_7 ;
  wire \abs_diff_reg[4][8]_i_1_n_7 ;
  wire [8:0]\abs_diff_reg[4]_6 ;
  wire \abs_diff_reg[5][3]_i_1_n_0 ;
  wire \abs_diff_reg[5][3]_i_1_n_1 ;
  wire \abs_diff_reg[5][3]_i_1_n_2 ;
  wire \abs_diff_reg[5][3]_i_1_n_3 ;
  wire \abs_diff_reg[5][3]_i_1_n_4 ;
  wire \abs_diff_reg[5][3]_i_1_n_5 ;
  wire \abs_diff_reg[5][3]_i_1_n_6 ;
  wire \abs_diff_reg[5][3]_i_1_n_7 ;
  wire \abs_diff_reg[5][7]_i_10_n_0 ;
  wire \abs_diff_reg[5][7]_i_10_n_1 ;
  wire \abs_diff_reg[5][7]_i_10_n_2 ;
  wire \abs_diff_reg[5][7]_i_10_n_3 ;
  wire \abs_diff_reg[5][7]_i_1_n_0 ;
  wire \abs_diff_reg[5][7]_i_1_n_1 ;
  wire \abs_diff_reg[5][7]_i_1_n_2 ;
  wire \abs_diff_reg[5][7]_i_1_n_3 ;
  wire \abs_diff_reg[5][7]_i_1_n_4 ;
  wire \abs_diff_reg[5][7]_i_1_n_5 ;
  wire \abs_diff_reg[5][7]_i_1_n_6 ;
  wire \abs_diff_reg[5][7]_i_1_n_7 ;
  wire \abs_diff_reg[5][8]_i_1_n_7 ;
  wire [8:0]\abs_diff_reg[5]_1 ;
  wire \abs_diff_reg[6][3]_i_1_n_0 ;
  wire \abs_diff_reg[6][3]_i_1_n_1 ;
  wire \abs_diff_reg[6][3]_i_1_n_2 ;
  wire \abs_diff_reg[6][3]_i_1_n_3 ;
  wire \abs_diff_reg[6][3]_i_1_n_4 ;
  wire \abs_diff_reg[6][3]_i_1_n_5 ;
  wire \abs_diff_reg[6][3]_i_1_n_6 ;
  wire \abs_diff_reg[6][3]_i_1_n_7 ;
  wire \abs_diff_reg[6][7]_i_10_n_0 ;
  wire \abs_diff_reg[6][7]_i_10_n_1 ;
  wire \abs_diff_reg[6][7]_i_10_n_2 ;
  wire \abs_diff_reg[6][7]_i_10_n_3 ;
  wire \abs_diff_reg[6][7]_i_1_n_0 ;
  wire \abs_diff_reg[6][7]_i_1_n_1 ;
  wire \abs_diff_reg[6][7]_i_1_n_2 ;
  wire \abs_diff_reg[6][7]_i_1_n_3 ;
  wire \abs_diff_reg[6][7]_i_1_n_4 ;
  wire \abs_diff_reg[6][7]_i_1_n_5 ;
  wire \abs_diff_reg[6][7]_i_1_n_6 ;
  wire \abs_diff_reg[6][7]_i_1_n_7 ;
  wire \abs_diff_reg[6][8]_i_1_n_7 ;
  wire [8:0]\abs_diff_reg[6]_2 ;
  wire \abs_diff_reg[7][3]_i_1_n_0 ;
  wire \abs_diff_reg[7][3]_i_1_n_1 ;
  wire \abs_diff_reg[7][3]_i_1_n_2 ;
  wire \abs_diff_reg[7][3]_i_1_n_3 ;
  wire \abs_diff_reg[7][3]_i_1_n_4 ;
  wire \abs_diff_reg[7][3]_i_1_n_5 ;
  wire \abs_diff_reg[7][3]_i_1_n_6 ;
  wire \abs_diff_reg[7][3]_i_1_n_7 ;
  wire \abs_diff_reg[7][7]_i_10_n_0 ;
  wire \abs_diff_reg[7][7]_i_10_n_1 ;
  wire \abs_diff_reg[7][7]_i_10_n_2 ;
  wire \abs_diff_reg[7][7]_i_10_n_3 ;
  wire \abs_diff_reg[7][7]_i_1_n_0 ;
  wire \abs_diff_reg[7][7]_i_1_n_1 ;
  wire \abs_diff_reg[7][7]_i_1_n_2 ;
  wire \abs_diff_reg[7][7]_i_1_n_3 ;
  wire \abs_diff_reg[7][7]_i_1_n_4 ;
  wire \abs_diff_reg[7][7]_i_1_n_5 ;
  wire \abs_diff_reg[7][7]_i_1_n_6 ;
  wire \abs_diff_reg[7][7]_i_1_n_7 ;
  wire \abs_diff_reg[7][8]_i_1_n_7 ;
  wire [8:0]\abs_diff_reg[7]_0 ;
  wire \abs_diff_reg[8][3]_i_1_n_0 ;
  wire \abs_diff_reg[8][3]_i_1_n_1 ;
  wire \abs_diff_reg[8][3]_i_1_n_2 ;
  wire \abs_diff_reg[8][3]_i_1_n_3 ;
  wire \abs_diff_reg[8][3]_i_1_n_4 ;
  wire \abs_diff_reg[8][3]_i_1_n_5 ;
  wire \abs_diff_reg[8][3]_i_1_n_6 ;
  wire \abs_diff_reg[8][3]_i_1_n_7 ;
  wire \abs_diff_reg[8][7]_i_10_n_0 ;
  wire \abs_diff_reg[8][7]_i_10_n_1 ;
  wire \abs_diff_reg[8][7]_i_10_n_2 ;
  wire \abs_diff_reg[8][7]_i_10_n_3 ;
  wire \abs_diff_reg[8][7]_i_1_n_0 ;
  wire \abs_diff_reg[8][7]_i_1_n_1 ;
  wire \abs_diff_reg[8][7]_i_1_n_2 ;
  wire \abs_diff_reg[8][7]_i_1_n_3 ;
  wire \abs_diff_reg[8][7]_i_1_n_4 ;
  wire \abs_diff_reg[8][7]_i_1_n_5 ;
  wire \abs_diff_reg[8][7]_i_1_n_6 ;
  wire \abs_diff_reg[8][7]_i_1_n_7 ;
  wire \abs_diff_reg[8][8]_i_1_n_7 ;
  wire [8:0]\abs_diff_reg[8]_15 ;
  wire \abs_diff_reg[9][3]_i_1_n_0 ;
  wire \abs_diff_reg[9][3]_i_1_n_1 ;
  wire \abs_diff_reg[9][3]_i_1_n_2 ;
  wire \abs_diff_reg[9][3]_i_1_n_3 ;
  wire \abs_diff_reg[9][3]_i_1_n_4 ;
  wire \abs_diff_reg[9][3]_i_1_n_5 ;
  wire \abs_diff_reg[9][3]_i_1_n_6 ;
  wire \abs_diff_reg[9][3]_i_1_n_7 ;
  wire \abs_diff_reg[9][7]_i_10_n_0 ;
  wire \abs_diff_reg[9][7]_i_10_n_1 ;
  wire \abs_diff_reg[9][7]_i_10_n_2 ;
  wire \abs_diff_reg[9][7]_i_10_n_3 ;
  wire \abs_diff_reg[9][7]_i_1_n_0 ;
  wire \abs_diff_reg[9][7]_i_1_n_1 ;
  wire \abs_diff_reg[9][7]_i_1_n_2 ;
  wire \abs_diff_reg[9][7]_i_1_n_3 ;
  wire \abs_diff_reg[9][7]_i_1_n_4 ;
  wire \abs_diff_reg[9][7]_i_1_n_5 ;
  wire \abs_diff_reg[9][7]_i_1_n_6 ;
  wire \abs_diff_reg[9][7]_i_1_n_7 ;
  wire \abs_diff_reg[9][8]_i_1_n_7 ;
  wire [8:0]\abs_diff_reg[9]_11 ;
  wire [5:2]axi_araddr;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg_0;
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
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[31]_i_6_n_0 ;
  wire \axi_rdata[31]_i_7_n_0 ;
  wire \axi_rdata[31]_i_8_n_0 ;
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
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[8]_i_5_n_0 ;
  wire \axi_rdata[8]_i_6_n_0 ;
  wire \axi_rdata[8]_i_7_n_0 ;
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
  wire \axi_rdata_reg[31]_i_3_n_0 ;
  wire \axi_rdata_reg[31]_i_4_n_0 ;
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
  wire \axi_rdata_reg[8]_i_2_n_0 ;
  wire \axi_rdata_reg[8]_i_3_n_0 ;
  wire \axi_rdata_reg[9]_i_2_n_0 ;
  wire \axi_rdata_reg[9]_i_3_n_0 ;
  wire axi_wready_i_1_n_0;
  wire [3:0]p_0_in;
  wire [31:7]p_1_in;
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
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
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
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
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
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[1] ;
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
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[0] ;
  wire \slv_reg2_reg_n_0_[10] ;
  wire \slv_reg2_reg_n_0_[11] ;
  wire \slv_reg2_reg_n_0_[12] ;
  wire \slv_reg2_reg_n_0_[13] ;
  wire \slv_reg2_reg_n_0_[14] ;
  wire \slv_reg2_reg_n_0_[15] ;
  wire \slv_reg2_reg_n_0_[16] ;
  wire \slv_reg2_reg_n_0_[17] ;
  wire \slv_reg2_reg_n_0_[18] ;
  wire \slv_reg2_reg_n_0_[19] ;
  wire \slv_reg2_reg_n_0_[1] ;
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
  wire \slv_reg2_reg_n_0_[2] ;
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire \slv_reg2_reg_n_0_[4] ;
  wire \slv_reg2_reg_n_0_[5] ;
  wire \slv_reg2_reg_n_0_[6] ;
  wire \slv_reg2_reg_n_0_[7] ;
  wire \slv_reg2_reg_n_0_[8] ;
  wire \slv_reg2_reg_n_0_[9] ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire \slv_reg3_reg_n_0_[0] ;
  wire \slv_reg3_reg_n_0_[10] ;
  wire \slv_reg3_reg_n_0_[11] ;
  wire \slv_reg3_reg_n_0_[12] ;
  wire \slv_reg3_reg_n_0_[13] ;
  wire \slv_reg3_reg_n_0_[14] ;
  wire \slv_reg3_reg_n_0_[15] ;
  wire \slv_reg3_reg_n_0_[16] ;
  wire \slv_reg3_reg_n_0_[17] ;
  wire \slv_reg3_reg_n_0_[18] ;
  wire \slv_reg3_reg_n_0_[19] ;
  wire \slv_reg3_reg_n_0_[1] ;
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
  wire \slv_reg3_reg_n_0_[2] ;
  wire \slv_reg3_reg_n_0_[30] ;
  wire \slv_reg3_reg_n_0_[31] ;
  wire \slv_reg3_reg_n_0_[3] ;
  wire \slv_reg3_reg_n_0_[4] ;
  wire \slv_reg3_reg_n_0_[5] ;
  wire \slv_reg3_reg_n_0_[6] ;
  wire \slv_reg3_reg_n_0_[7] ;
  wire \slv_reg3_reg_n_0_[8] ;
  wire \slv_reg3_reg_n_0_[9] ;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire \slv_reg4_reg_n_0_[0] ;
  wire \slv_reg4_reg_n_0_[10] ;
  wire \slv_reg4_reg_n_0_[11] ;
  wire \slv_reg4_reg_n_0_[12] ;
  wire \slv_reg4_reg_n_0_[13] ;
  wire \slv_reg4_reg_n_0_[14] ;
  wire \slv_reg4_reg_n_0_[15] ;
  wire \slv_reg4_reg_n_0_[16] ;
  wire \slv_reg4_reg_n_0_[17] ;
  wire \slv_reg4_reg_n_0_[18] ;
  wire \slv_reg4_reg_n_0_[19] ;
  wire \slv_reg4_reg_n_0_[1] ;
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
  wire \slv_reg4_reg_n_0_[2] ;
  wire \slv_reg4_reg_n_0_[30] ;
  wire \slv_reg4_reg_n_0_[31] ;
  wire \slv_reg4_reg_n_0_[3] ;
  wire \slv_reg4_reg_n_0_[4] ;
  wire \slv_reg4_reg_n_0_[5] ;
  wire \slv_reg4_reg_n_0_[6] ;
  wire \slv_reg4_reg_n_0_[7] ;
  wire \slv_reg4_reg_n_0_[8] ;
  wire \slv_reg4_reg_n_0_[9] ;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire \slv_reg5_reg_n_0_[0] ;
  wire \slv_reg5_reg_n_0_[10] ;
  wire \slv_reg5_reg_n_0_[11] ;
  wire \slv_reg5_reg_n_0_[12] ;
  wire \slv_reg5_reg_n_0_[13] ;
  wire \slv_reg5_reg_n_0_[14] ;
  wire \slv_reg5_reg_n_0_[15] ;
  wire \slv_reg5_reg_n_0_[16] ;
  wire \slv_reg5_reg_n_0_[17] ;
  wire \slv_reg5_reg_n_0_[18] ;
  wire \slv_reg5_reg_n_0_[19] ;
  wire \slv_reg5_reg_n_0_[1] ;
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
  wire \slv_reg5_reg_n_0_[2] ;
  wire \slv_reg5_reg_n_0_[30] ;
  wire \slv_reg5_reg_n_0_[31] ;
  wire \slv_reg5_reg_n_0_[3] ;
  wire \slv_reg5_reg_n_0_[4] ;
  wire \slv_reg5_reg_n_0_[5] ;
  wire \slv_reg5_reg_n_0_[6] ;
  wire \slv_reg5_reg_n_0_[7] ;
  wire \slv_reg5_reg_n_0_[8] ;
  wire \slv_reg5_reg_n_0_[9] ;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire \slv_reg6_reg_n_0_[0] ;
  wire \slv_reg6_reg_n_0_[10] ;
  wire \slv_reg6_reg_n_0_[11] ;
  wire \slv_reg6_reg_n_0_[12] ;
  wire \slv_reg6_reg_n_0_[13] ;
  wire \slv_reg6_reg_n_0_[14] ;
  wire \slv_reg6_reg_n_0_[15] ;
  wire \slv_reg6_reg_n_0_[16] ;
  wire \slv_reg6_reg_n_0_[17] ;
  wire \slv_reg6_reg_n_0_[18] ;
  wire \slv_reg6_reg_n_0_[19] ;
  wire \slv_reg6_reg_n_0_[1] ;
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
  wire \slv_reg6_reg_n_0_[2] ;
  wire \slv_reg6_reg_n_0_[30] ;
  wire \slv_reg6_reg_n_0_[31] ;
  wire \slv_reg6_reg_n_0_[3] ;
  wire \slv_reg6_reg_n_0_[4] ;
  wire \slv_reg6_reg_n_0_[5] ;
  wire \slv_reg6_reg_n_0_[6] ;
  wire \slv_reg6_reg_n_0_[7] ;
  wire \slv_reg6_reg_n_0_[8] ;
  wire \slv_reg6_reg_n_0_[9] ;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire \slv_reg7_reg_n_0_[0] ;
  wire \slv_reg7_reg_n_0_[10] ;
  wire \slv_reg7_reg_n_0_[11] ;
  wire \slv_reg7_reg_n_0_[12] ;
  wire \slv_reg7_reg_n_0_[13] ;
  wire \slv_reg7_reg_n_0_[14] ;
  wire \slv_reg7_reg_n_0_[15] ;
  wire \slv_reg7_reg_n_0_[16] ;
  wire \slv_reg7_reg_n_0_[17] ;
  wire \slv_reg7_reg_n_0_[18] ;
  wire \slv_reg7_reg_n_0_[19] ;
  wire \slv_reg7_reg_n_0_[1] ;
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
  wire \slv_reg7_reg_n_0_[2] ;
  wire \slv_reg7_reg_n_0_[30] ;
  wire \slv_reg7_reg_n_0_[31] ;
  wire \slv_reg7_reg_n_0_[3] ;
  wire \slv_reg7_reg_n_0_[4] ;
  wire \slv_reg7_reg_n_0_[5] ;
  wire \slv_reg7_reg_n_0_[6] ;
  wire \slv_reg7_reg_n_0_[7] ;
  wire \slv_reg7_reg_n_0_[8] ;
  wire \slv_reg7_reg_n_0_[9] ;
  wire [31:31]slv_reg8;
  wire \slv_reg8[0]_i_1_n_0 ;
  wire \slv_reg8[10]_i_1_n_0 ;
  wire \slv_reg8[11]_i_1_n_0 ;
  wire \slv_reg8[12]_i_1_n_0 ;
  wire \slv_reg8[13]_i_1_n_0 ;
  wire \slv_reg8[14]_i_1_n_0 ;
  wire \slv_reg8[15]_i_1_n_0 ;
  wire \slv_reg8[15]_i_2_n_0 ;
  wire \slv_reg8[16]_i_1_n_0 ;
  wire \slv_reg8[17]_i_1_n_0 ;
  wire \slv_reg8[18]_i_1_n_0 ;
  wire \slv_reg8[19]_i_1_n_0 ;
  wire \slv_reg8[1]_i_1_n_0 ;
  wire \slv_reg8[20]_i_1_n_0 ;
  wire \slv_reg8[21]_i_1_n_0 ;
  wire \slv_reg8[22]_i_1_n_0 ;
  wire \slv_reg8[23]_i_1_n_0 ;
  wire \slv_reg8[23]_i_2_n_0 ;
  wire \slv_reg8[24]_i_1_n_0 ;
  wire \slv_reg8[25]_i_1_n_0 ;
  wire \slv_reg8[26]_i_1_n_0 ;
  wire \slv_reg8[27]_i_1_n_0 ;
  wire \slv_reg8[28]_i_1_n_0 ;
  wire \slv_reg8[29]_i_1_n_0 ;
  wire \slv_reg8[2]_i_1_n_0 ;
  wire \slv_reg8[30]_i_1_n_0 ;
  wire \slv_reg8[31]_i_1_n_0 ;
  wire \slv_reg8[31]_i_2_n_0 ;
  wire \slv_reg8[31]_i_4_n_0 ;
  wire \slv_reg8[3]_i_1_n_0 ;
  wire \slv_reg8[4]_i_1_n_0 ;
  wire \slv_reg8[5]_i_1_n_0 ;
  wire \slv_reg8[6]_i_1_n_0 ;
  wire \slv_reg8[7]_i_1_n_0 ;
  wire \slv_reg8[7]_i_2_n_0 ;
  wire \slv_reg8[8]_i_1_n_0 ;
  wire \slv_reg8[9]_i_1_n_0 ;
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
  wire \slv_reg9[11]_i_10_n_0 ;
  wire \slv_reg9[11]_i_12_n_0 ;
  wire \slv_reg9[11]_i_13_n_0 ;
  wire \slv_reg9[11]_i_14_n_0 ;
  wire \slv_reg9[11]_i_19_n_0 ;
  wire \slv_reg9[11]_i_1_n_0 ;
  wire \slv_reg9[11]_i_20_n_0 ;
  wire \slv_reg9[11]_i_21_n_0 ;
  wire \slv_reg9[11]_i_22_n_0 ;
  wire \slv_reg9[11]_i_23_n_0 ;
  wire \slv_reg9[11]_i_24_n_0 ;
  wire \slv_reg9[11]_i_25_n_0 ;
  wire \slv_reg9[11]_i_26_n_0 ;
  wire \slv_reg9[11]_i_27_n_0 ;
  wire \slv_reg9[11]_i_28_n_0 ;
  wire \slv_reg9[11]_i_29_n_0 ;
  wire \slv_reg9[11]_i_30_n_0 ;
  wire \slv_reg9[11]_i_31_n_0 ;
  wire \slv_reg9[11]_i_32_n_0 ;
  wire \slv_reg9[11]_i_33_n_0 ;
  wire \slv_reg9[11]_i_34_n_0 ;
  wire \slv_reg9[11]_i_35_n_0 ;
  wire \slv_reg9[11]_i_36_n_0 ;
  wire \slv_reg9[11]_i_37_n_0 ;
  wire \slv_reg9[11]_i_38_n_0 ;
  wire \slv_reg9[11]_i_39_n_0 ;
  wire \slv_reg9[11]_i_3_n_0 ;
  wire \slv_reg9[11]_i_40_n_0 ;
  wire \slv_reg9[11]_i_41_n_0 ;
  wire \slv_reg9[11]_i_42_n_0 ;
  wire \slv_reg9[11]_i_43_n_0 ;
  wire \slv_reg9[11]_i_44_n_0 ;
  wire \slv_reg9[11]_i_45_n_0 ;
  wire \slv_reg9[11]_i_46_n_0 ;
  wire \slv_reg9[11]_i_47_n_0 ;
  wire \slv_reg9[11]_i_48_n_0 ;
  wire \slv_reg9[11]_i_49_n_0 ;
  wire \slv_reg9[11]_i_4_n_0 ;
  wire \slv_reg9[11]_i_50_n_0 ;
  wire \slv_reg9[11]_i_51_n_0 ;
  wire \slv_reg9[11]_i_52_n_0 ;
  wire \slv_reg9[11]_i_53_n_0 ;
  wire \slv_reg9[11]_i_54_n_0 ;
  wire \slv_reg9[11]_i_55_n_0 ;
  wire \slv_reg9[11]_i_58_n_0 ;
  wire \slv_reg9[11]_i_59_n_0 ;
  wire \slv_reg9[11]_i_5_n_0 ;
  wire \slv_reg9[11]_i_60_n_0 ;
  wire \slv_reg9[11]_i_61_n_0 ;
  wire \slv_reg9[11]_i_62_n_0 ;
  wire \slv_reg9[11]_i_63_n_0 ;
  wire \slv_reg9[11]_i_64_n_0 ;
  wire \slv_reg9[11]_i_65_n_0 ;
  wire \slv_reg9[11]_i_66_n_0 ;
  wire \slv_reg9[11]_i_67_n_0 ;
  wire \slv_reg9[11]_i_68_n_0 ;
  wire \slv_reg9[11]_i_69_n_0 ;
  wire \slv_reg9[11]_i_6_n_0 ;
  wire \slv_reg9[11]_i_70_n_0 ;
  wire \slv_reg9[11]_i_71_n_0 ;
  wire \slv_reg9[11]_i_7_n_0 ;
  wire \slv_reg9[11]_i_8_n_0 ;
  wire \slv_reg9[11]_i_9_n_0 ;
  wire \slv_reg9[12]_i_10_n_0 ;
  wire \slv_reg9[12]_i_11_n_0 ;
  wire \slv_reg9[12]_i_12_n_0 ;
  wire \slv_reg9[12]_i_13_n_0 ;
  wire \slv_reg9[12]_i_1_n_0 ;
  wire \slv_reg9[12]_i_20_n_0 ;
  wire \slv_reg9[12]_i_21_n_0 ;
  wire \slv_reg9[12]_i_24_n_0 ;
  wire \slv_reg9[12]_i_25_n_0 ;
  wire \slv_reg9[12]_i_26_n_0 ;
  wire \slv_reg9[12]_i_27_n_0 ;
  wire \slv_reg9[12]_i_28_n_0 ;
  wire \slv_reg9[12]_i_29_n_0 ;
  wire \slv_reg9[12]_i_2_n_0 ;
  wire \slv_reg9[12]_i_30_n_0 ;
  wire \slv_reg9[12]_i_31_n_0 ;
  wire \slv_reg9[12]_i_36_n_0 ;
  wire \slv_reg9[12]_i_37_n_0 ;
  wire \slv_reg9[12]_i_38_n_0 ;
  wire \slv_reg9[12]_i_39_n_0 ;
  wire \slv_reg9[12]_i_3_n_0 ;
  wire \slv_reg9[12]_i_40_n_0 ;
  wire \slv_reg9[12]_i_41_n_0 ;
  wire \slv_reg9[12]_i_42_n_0 ;
  wire \slv_reg9[12]_i_43_n_0 ;
  wire \slv_reg9[12]_i_44_n_0 ;
  wire \slv_reg9[12]_i_45_n_0 ;
  wire \slv_reg9[12]_i_46_n_0 ;
  wire \slv_reg9[12]_i_47_n_0 ;
  wire \slv_reg9[12]_i_48_n_0 ;
  wire \slv_reg9[12]_i_49_n_0 ;
  wire \slv_reg9[12]_i_4_n_0 ;
  wire \slv_reg9[12]_i_50_n_0 ;
  wire \slv_reg9[12]_i_51_n_0 ;
  wire \slv_reg9[12]_i_52_n_0 ;
  wire \slv_reg9[12]_i_53_n_0 ;
  wire \slv_reg9[12]_i_54_n_0 ;
  wire \slv_reg9[12]_i_55_n_0 ;
  wire \slv_reg9[12]_i_56_n_0 ;
  wire \slv_reg9[12]_i_57_n_0 ;
  wire \slv_reg9[12]_i_5_n_0 ;
  wire \slv_reg9[12]_i_6_n_0 ;
  wire \slv_reg9[12]_i_7_n_0 ;
  wire \slv_reg9[12]_i_9_n_0 ;
  wire \slv_reg9[13]_i_1_n_0 ;
  wire \slv_reg9[14]_i_1_n_0 ;
  wire \slv_reg9[15]_i_1_n_0 ;
  wire \slv_reg9[1]_i_1_n_0 ;
  wire \slv_reg9[23]_i_1_n_0 ;
  wire \slv_reg9[2]_i_1_n_0 ;
  wire \slv_reg9[31]_i_10_n_0 ;
  wire \slv_reg9[31]_i_1_n_0 ;
  wire \slv_reg9[31]_i_2_n_0 ;
  wire \slv_reg9[31]_i_3_n_0 ;
  wire \slv_reg9[31]_i_4_n_0 ;
  wire \slv_reg9[31]_i_5_n_0 ;
  wire \slv_reg9[31]_i_6_n_0 ;
  wire \slv_reg9[31]_i_7_n_0 ;
  wire \slv_reg9[31]_i_8_n_0 ;
  wire \slv_reg9[31]_i_9_n_0 ;
  wire \slv_reg9[3]_i_10_n_0 ;
  wire \slv_reg9[3]_i_11_n_0 ;
  wire \slv_reg9[3]_i_12_n_0 ;
  wire \slv_reg9[3]_i_13_n_0 ;
  wire \slv_reg9[3]_i_14_n_0 ;
  wire \slv_reg9[3]_i_15_n_0 ;
  wire \slv_reg9[3]_i_16_n_0 ;
  wire \slv_reg9[3]_i_17_n_0 ;
  wire \slv_reg9[3]_i_18_n_0 ;
  wire \slv_reg9[3]_i_1_n_0 ;
  wire \slv_reg9[3]_i_3_n_0 ;
  wire \slv_reg9[3]_i_4_n_0 ;
  wire \slv_reg9[3]_i_5_n_0 ;
  wire \slv_reg9[3]_i_7_n_0 ;
  wire \slv_reg9[3]_i_8_n_0 ;
  wire \slv_reg9[3]_i_9_n_0 ;
  wire \slv_reg9[4]_i_1_n_0 ;
  wire \slv_reg9[5]_i_1_n_0 ;
  wire \slv_reg9[6]_i_1_n_0 ;
  wire \slv_reg9[7]_i_10_n_0 ;
  wire \slv_reg9[7]_i_11_n_0 ;
  wire \slv_reg9[7]_i_12_n_0 ;
  wire \slv_reg9[7]_i_13_n_0 ;
  wire \slv_reg9[7]_i_14_n_0 ;
  wire \slv_reg9[7]_i_18_n_0 ;
  wire \slv_reg9[7]_i_19_n_0 ;
  wire \slv_reg9[7]_i_1_n_0 ;
  wire \slv_reg9[7]_i_20_n_0 ;
  wire \slv_reg9[7]_i_21_n_0 ;
  wire \slv_reg9[7]_i_22_n_0 ;
  wire \slv_reg9[7]_i_23_n_0 ;
  wire \slv_reg9[7]_i_24_n_0 ;
  wire \slv_reg9[7]_i_25_n_0 ;
  wire \slv_reg9[7]_i_26_n_0 ;
  wire \slv_reg9[7]_i_27_n_0 ;
  wire \slv_reg9[7]_i_28_n_0 ;
  wire \slv_reg9[7]_i_29_n_0 ;
  wire \slv_reg9[7]_i_2_n_0 ;
  wire \slv_reg9[7]_i_30_n_0 ;
  wire \slv_reg9[7]_i_31_n_0 ;
  wire \slv_reg9[7]_i_32_n_0 ;
  wire \slv_reg9[7]_i_33_n_0 ;
  wire \slv_reg9[7]_i_34_n_0 ;
  wire \slv_reg9[7]_i_35_n_0 ;
  wire \slv_reg9[7]_i_36_n_0 ;
  wire \slv_reg9[7]_i_37_n_0 ;
  wire \slv_reg9[7]_i_38_n_0 ;
  wire \slv_reg9[7]_i_39_n_0 ;
  wire \slv_reg9[7]_i_4_n_0 ;
  wire \slv_reg9[7]_i_5_n_0 ;
  wire \slv_reg9[7]_i_6_n_0 ;
  wire \slv_reg9[7]_i_7_n_0 ;
  wire \slv_reg9[7]_i_8_n_0 ;
  wire \slv_reg9[7]_i_9_n_0 ;
  wire \slv_reg9[8]_i_1_n_0 ;
  wire \slv_reg9[9]_i_1_n_0 ;
  wire \slv_reg9_reg[11]_i_11_n_1 ;
  wire \slv_reg9_reg[11]_i_11_n_3 ;
  wire \slv_reg9_reg[11]_i_11_n_6 ;
  wire \slv_reg9_reg[11]_i_11_n_7 ;
  wire \slv_reg9_reg[11]_i_15_n_0 ;
  wire \slv_reg9_reg[11]_i_15_n_1 ;
  wire \slv_reg9_reg[11]_i_15_n_2 ;
  wire \slv_reg9_reg[11]_i_15_n_3 ;
  wire \slv_reg9_reg[11]_i_15_n_4 ;
  wire \slv_reg9_reg[11]_i_15_n_5 ;
  wire \slv_reg9_reg[11]_i_15_n_6 ;
  wire \slv_reg9_reg[11]_i_15_n_7 ;
  wire \slv_reg9_reg[11]_i_16_n_0 ;
  wire \slv_reg9_reg[11]_i_16_n_1 ;
  wire \slv_reg9_reg[11]_i_16_n_2 ;
  wire \slv_reg9_reg[11]_i_16_n_3 ;
  wire \slv_reg9_reg[11]_i_16_n_4 ;
  wire \slv_reg9_reg[11]_i_16_n_5 ;
  wire \slv_reg9_reg[11]_i_16_n_6 ;
  wire \slv_reg9_reg[11]_i_16_n_7 ;
  wire \slv_reg9_reg[11]_i_17_n_0 ;
  wire \slv_reg9_reg[11]_i_17_n_1 ;
  wire \slv_reg9_reg[11]_i_17_n_2 ;
  wire \slv_reg9_reg[11]_i_17_n_3 ;
  wire \slv_reg9_reg[11]_i_17_n_4 ;
  wire \slv_reg9_reg[11]_i_17_n_5 ;
  wire \slv_reg9_reg[11]_i_17_n_6 ;
  wire \slv_reg9_reg[11]_i_17_n_7 ;
  wire \slv_reg9_reg[11]_i_18_n_0 ;
  wire \slv_reg9_reg[11]_i_18_n_1 ;
  wire \slv_reg9_reg[11]_i_18_n_2 ;
  wire \slv_reg9_reg[11]_i_18_n_3 ;
  wire \slv_reg9_reg[11]_i_18_n_4 ;
  wire \slv_reg9_reg[11]_i_18_n_5 ;
  wire \slv_reg9_reg[11]_i_18_n_6 ;
  wire \slv_reg9_reg[11]_i_18_n_7 ;
  wire \slv_reg9_reg[11]_i_2_n_0 ;
  wire \slv_reg9_reg[11]_i_2_n_1 ;
  wire \slv_reg9_reg[11]_i_2_n_2 ;
  wire \slv_reg9_reg[11]_i_2_n_3 ;
  wire \slv_reg9_reg[11]_i_2_n_4 ;
  wire \slv_reg9_reg[11]_i_2_n_5 ;
  wire \slv_reg9_reg[11]_i_2_n_6 ;
  wire \slv_reg9_reg[11]_i_2_n_7 ;
  wire \slv_reg9_reg[11]_i_56_n_0 ;
  wire \slv_reg9_reg[11]_i_56_n_1 ;
  wire \slv_reg9_reg[11]_i_56_n_2 ;
  wire \slv_reg9_reg[11]_i_56_n_3 ;
  wire \slv_reg9_reg[11]_i_56_n_4 ;
  wire \slv_reg9_reg[11]_i_56_n_5 ;
  wire \slv_reg9_reg[11]_i_56_n_6 ;
  wire \slv_reg9_reg[11]_i_56_n_7 ;
  wire \slv_reg9_reg[11]_i_57_n_0 ;
  wire \slv_reg9_reg[11]_i_57_n_1 ;
  wire \slv_reg9_reg[11]_i_57_n_2 ;
  wire \slv_reg9_reg[11]_i_57_n_3 ;
  wire \slv_reg9_reg[11]_i_57_n_4 ;
  wire \slv_reg9_reg[11]_i_57_n_5 ;
  wire \slv_reg9_reg[11]_i_57_n_6 ;
  wire \slv_reg9_reg[11]_i_57_n_7 ;
  wire [0:0]\slv_reg9_reg[12]_0 ;
  wire [0:0]\slv_reg9_reg[12]_1 ;
  wire \slv_reg9_reg[12]_i_14_n_0 ;
  wire \slv_reg9_reg[12]_i_14_n_1 ;
  wire \slv_reg9_reg[12]_i_14_n_2 ;
  wire \slv_reg9_reg[12]_i_14_n_3 ;
  wire \slv_reg9_reg[12]_i_14_n_4 ;
  wire \slv_reg9_reg[12]_i_14_n_5 ;
  wire \slv_reg9_reg[12]_i_14_n_6 ;
  wire \slv_reg9_reg[12]_i_14_n_7 ;
  wire \slv_reg9_reg[12]_i_15_n_1 ;
  wire \slv_reg9_reg[12]_i_15_n_3 ;
  wire \slv_reg9_reg[12]_i_15_n_6 ;
  wire \slv_reg9_reg[12]_i_15_n_7 ;
  wire \slv_reg9_reg[12]_i_16_n_1 ;
  wire \slv_reg9_reg[12]_i_16_n_3 ;
  wire \slv_reg9_reg[12]_i_16_n_6 ;
  wire \slv_reg9_reg[12]_i_16_n_7 ;
  wire \slv_reg9_reg[12]_i_17_n_3 ;
  wire \slv_reg9_reg[12]_i_32_n_3 ;
  wire \slv_reg9_reg[12]_i_32_n_7 ;
  wire \slv_reg9_reg[12]_i_33_n_3 ;
  wire \slv_reg9_reg[12]_i_33_n_7 ;
  wire \slv_reg9_reg[12]_i_34_n_0 ;
  wire \slv_reg9_reg[12]_i_34_n_1 ;
  wire \slv_reg9_reg[12]_i_34_n_2 ;
  wire \slv_reg9_reg[12]_i_34_n_3 ;
  wire \slv_reg9_reg[12]_i_34_n_4 ;
  wire \slv_reg9_reg[12]_i_34_n_5 ;
  wire \slv_reg9_reg[12]_i_34_n_6 ;
  wire \slv_reg9_reg[12]_i_34_n_7 ;
  wire \slv_reg9_reg[12]_i_35_n_0 ;
  wire \slv_reg9_reg[12]_i_35_n_1 ;
  wire \slv_reg9_reg[12]_i_35_n_2 ;
  wire \slv_reg9_reg[12]_i_35_n_3 ;
  wire \slv_reg9_reg[12]_i_35_n_4 ;
  wire \slv_reg9_reg[12]_i_35_n_5 ;
  wire \slv_reg9_reg[12]_i_35_n_6 ;
  wire \slv_reg9_reg[12]_i_35_n_7 ;
  wire \slv_reg9_reg[12]_i_8_n_7 ;
  wire \slv_reg9_reg[3]_i_2_n_0 ;
  wire \slv_reg9_reg[3]_i_2_n_1 ;
  wire \slv_reg9_reg[3]_i_2_n_2 ;
  wire \slv_reg9_reg[3]_i_2_n_3 ;
  wire \slv_reg9_reg[3]_i_2_n_4 ;
  wire \slv_reg9_reg[3]_i_2_n_5 ;
  wire \slv_reg9_reg[3]_i_2_n_6 ;
  wire \slv_reg9_reg[3]_i_2_n_7 ;
  wire \slv_reg9_reg[3]_i_6_n_0 ;
  wire \slv_reg9_reg[3]_i_6_n_1 ;
  wire \slv_reg9_reg[3]_i_6_n_2 ;
  wire \slv_reg9_reg[3]_i_6_n_3 ;
  wire \slv_reg9_reg[3]_i_6_n_4 ;
  wire \slv_reg9_reg[3]_i_6_n_5 ;
  wire \slv_reg9_reg[3]_i_6_n_6 ;
  wire \slv_reg9_reg[3]_i_6_n_7 ;
  wire \slv_reg9_reg[7]_i_15_n_0 ;
  wire \slv_reg9_reg[7]_i_15_n_1 ;
  wire \slv_reg9_reg[7]_i_15_n_2 ;
  wire \slv_reg9_reg[7]_i_15_n_3 ;
  wire \slv_reg9_reg[7]_i_15_n_4 ;
  wire \slv_reg9_reg[7]_i_15_n_5 ;
  wire \slv_reg9_reg[7]_i_15_n_6 ;
  wire \slv_reg9_reg[7]_i_15_n_7 ;
  wire \slv_reg9_reg[7]_i_16_n_0 ;
  wire \slv_reg9_reg[7]_i_16_n_1 ;
  wire \slv_reg9_reg[7]_i_16_n_2 ;
  wire \slv_reg9_reg[7]_i_16_n_3 ;
  wire \slv_reg9_reg[7]_i_16_n_4 ;
  wire \slv_reg9_reg[7]_i_16_n_5 ;
  wire \slv_reg9_reg[7]_i_16_n_6 ;
  wire \slv_reg9_reg[7]_i_16_n_7 ;
  wire \slv_reg9_reg[7]_i_17_n_0 ;
  wire \slv_reg9_reg[7]_i_17_n_1 ;
  wire \slv_reg9_reg[7]_i_17_n_2 ;
  wire \slv_reg9_reg[7]_i_17_n_3 ;
  wire \slv_reg9_reg[7]_i_17_n_4 ;
  wire \slv_reg9_reg[7]_i_17_n_5 ;
  wire \slv_reg9_reg[7]_i_17_n_6 ;
  wire \slv_reg9_reg[7]_i_17_n_7 ;
  wire \slv_reg9_reg[7]_i_3_n_0 ;
  wire \slv_reg9_reg[7]_i_3_n_1 ;
  wire \slv_reg9_reg[7]_i_3_n_2 ;
  wire \slv_reg9_reg[7]_i_3_n_3 ;
  wire \slv_reg9_reg[7]_i_3_n_4 ;
  wire \slv_reg9_reg[7]_i_3_n_5 ;
  wire \slv_reg9_reg[7]_i_3_n_6 ;
  wire \slv_reg9_reg[7]_i_3_n_7 ;
  wire [3:0]\NLW_abs_diff_reg[0][7]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[0][8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_abs_diff_reg[0][8]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[10][7]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[10][8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_abs_diff_reg[10][8]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[11][7]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[11][8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_abs_diff_reg[11][8]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[12][7]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[12][8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_abs_diff_reg[12][8]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[13][7]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[13][8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_abs_diff_reg[13][8]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[14][7]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[14][8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_abs_diff_reg[14][8]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[15][7]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[15][8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_abs_diff_reg[15][8]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[1][7]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[1][8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_abs_diff_reg[1][8]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[2][7]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[2][8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_abs_diff_reg[2][8]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[3][7]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[3][8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_abs_diff_reg[3][8]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[4][7]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[4][8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_abs_diff_reg[4][8]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[5][7]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[5][8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_abs_diff_reg[5][8]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[6][7]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[6][8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_abs_diff_reg[6][8]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[7][7]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[7][8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_abs_diff_reg[7][8]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[8][7]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[8][8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_abs_diff_reg[8][8]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[9][7]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_abs_diff_reg[9][8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_abs_diff_reg[9][8]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_slv_reg9_reg[11]_i_11_CO_UNCONNECTED ;
  wire [3:2]\NLW_slv_reg9_reg[11]_i_11_O_UNCONNECTED ;
  wire [3:1]\NLW_slv_reg9_reg[12]_i_15_CO_UNCONNECTED ;
  wire [3:2]\NLW_slv_reg9_reg[12]_i_15_O_UNCONNECTED ;
  wire [3:1]\NLW_slv_reg9_reg[12]_i_16_CO_UNCONNECTED ;
  wire [3:2]\NLW_slv_reg9_reg[12]_i_16_O_UNCONNECTED ;
  wire [3:1]\NLW_slv_reg9_reg[12]_i_17_CO_UNCONNECTED ;
  wire [3:0]\NLW_slv_reg9_reg[12]_i_17_O_UNCONNECTED ;
  wire [3:1]\NLW_slv_reg9_reg[12]_i_32_CO_UNCONNECTED ;
  wire [3:2]\NLW_slv_reg9_reg[12]_i_32_O_UNCONNECTED ;
  wire [3:1]\NLW_slv_reg9_reg[12]_i_33_CO_UNCONNECTED ;
  wire [3:2]\NLW_slv_reg9_reg[12]_i_33_O_UNCONNECTED ;
  wire [3:0]\NLW_slv_reg9_reg[12]_i_8_CO_UNCONNECTED ;
  wire [3:1]\NLW_slv_reg9_reg[12]_i_8_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[0][3]_i_2 
       (.I0(\slv_reg4_reg_n_0_[3] ),
        .I1(\slv_reg0_reg_n_0_[3] ),
        .I2(\abs_diff_reg[0][7]_i_10_n_0 ),
        .O(\abs_diff[0][3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[0][3]_i_3 
       (.I0(\slv_reg4_reg_n_0_[2] ),
        .I1(\slv_reg0_reg_n_0_[2] ),
        .I2(\abs_diff_reg[0][7]_i_10_n_0 ),
        .O(\abs_diff[0][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[0][3]_i_4 
       (.I0(\slv_reg4_reg_n_0_[1] ),
        .I1(\slv_reg0_reg_n_0_[1] ),
        .I2(\abs_diff_reg[0][7]_i_10_n_0 ),
        .O(\abs_diff[0][3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[0][3]_i_5 
       (.I0(\slv_reg4_reg_n_0_[0] ),
        .I1(\slv_reg0_reg_n_0_[0] ),
        .I2(\abs_diff_reg[0][7]_i_10_n_0 ),
        .O(\abs_diff[0][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[0][3]_i_6 
       (.I0(\slv_reg4_reg_n_0_[3] ),
        .I1(\slv_reg0_reg_n_0_[3] ),
        .O(\abs_diff[0][3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[0][3]_i_7 
       (.I0(\slv_reg4_reg_n_0_[2] ),
        .I1(\slv_reg0_reg_n_0_[2] ),
        .O(\abs_diff[0][3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[0][3]_i_8 
       (.I0(\slv_reg4_reg_n_0_[1] ),
        .I1(\slv_reg0_reg_n_0_[1] ),
        .O(\abs_diff[0][3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[0][3]_i_9 
       (.I0(\slv_reg4_reg_n_0_[0] ),
        .I1(\slv_reg0_reg_n_0_[0] ),
        .O(\abs_diff[0][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[0][7]_i_11 
       (.I0(\slv_reg0_reg_n_0_[6] ),
        .I1(\slv_reg4_reg_n_0_[6] ),
        .I2(\slv_reg4_reg_n_0_[7] ),
        .I3(\slv_reg0_reg_n_0_[7] ),
        .O(\abs_diff[0][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[0][7]_i_12 
       (.I0(\slv_reg0_reg_n_0_[4] ),
        .I1(\slv_reg4_reg_n_0_[4] ),
        .I2(\slv_reg4_reg_n_0_[5] ),
        .I3(\slv_reg0_reg_n_0_[5] ),
        .O(\abs_diff[0][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[0][7]_i_13 
       (.I0(\slv_reg0_reg_n_0_[2] ),
        .I1(\slv_reg4_reg_n_0_[2] ),
        .I2(\slv_reg4_reg_n_0_[3] ),
        .I3(\slv_reg0_reg_n_0_[3] ),
        .O(\abs_diff[0][7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[0][7]_i_14 
       (.I0(\slv_reg0_reg_n_0_[0] ),
        .I1(\slv_reg4_reg_n_0_[0] ),
        .I2(\slv_reg4_reg_n_0_[1] ),
        .I3(\slv_reg0_reg_n_0_[1] ),
        .O(\abs_diff[0][7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[0][7]_i_15 
       (.I0(\slv_reg0_reg_n_0_[6] ),
        .I1(\slv_reg4_reg_n_0_[6] ),
        .I2(\slv_reg0_reg_n_0_[7] ),
        .I3(\slv_reg4_reg_n_0_[7] ),
        .O(\abs_diff[0][7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[0][7]_i_16 
       (.I0(\slv_reg0_reg_n_0_[4] ),
        .I1(\slv_reg4_reg_n_0_[4] ),
        .I2(\slv_reg0_reg_n_0_[5] ),
        .I3(\slv_reg4_reg_n_0_[5] ),
        .O(\abs_diff[0][7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[0][7]_i_17 
       (.I0(\slv_reg0_reg_n_0_[2] ),
        .I1(\slv_reg4_reg_n_0_[2] ),
        .I2(\slv_reg0_reg_n_0_[3] ),
        .I3(\slv_reg4_reg_n_0_[3] ),
        .O(\abs_diff[0][7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[0][7]_i_18 
       (.I0(\slv_reg0_reg_n_0_[0] ),
        .I1(\slv_reg4_reg_n_0_[0] ),
        .I2(\slv_reg0_reg_n_0_[1] ),
        .I3(\slv_reg4_reg_n_0_[1] ),
        .O(\abs_diff[0][7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[0][7]_i_2 
       (.I0(\slv_reg4_reg_n_0_[7] ),
        .I1(\slv_reg0_reg_n_0_[7] ),
        .I2(\abs_diff_reg[0][7]_i_10_n_0 ),
        .O(\abs_diff[0][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[0][7]_i_3 
       (.I0(\slv_reg4_reg_n_0_[6] ),
        .I1(\slv_reg0_reg_n_0_[6] ),
        .I2(\abs_diff_reg[0][7]_i_10_n_0 ),
        .O(\abs_diff[0][7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[0][7]_i_4 
       (.I0(\slv_reg4_reg_n_0_[5] ),
        .I1(\slv_reg0_reg_n_0_[5] ),
        .I2(\abs_diff_reg[0][7]_i_10_n_0 ),
        .O(\abs_diff[0][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[0][7]_i_5 
       (.I0(\slv_reg4_reg_n_0_[4] ),
        .I1(\slv_reg0_reg_n_0_[4] ),
        .I2(\abs_diff_reg[0][7]_i_10_n_0 ),
        .O(\abs_diff[0][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[0][7]_i_6 
       (.I0(\slv_reg4_reg_n_0_[7] ),
        .I1(\slv_reg0_reg_n_0_[7] ),
        .O(\abs_diff[0][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[0][7]_i_7 
       (.I0(\slv_reg4_reg_n_0_[6] ),
        .I1(\slv_reg0_reg_n_0_[6] ),
        .O(\abs_diff[0][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[0][7]_i_8 
       (.I0(\slv_reg4_reg_n_0_[5] ),
        .I1(\slv_reg0_reg_n_0_[5] ),
        .O(\abs_diff[0][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[0][7]_i_9 
       (.I0(\slv_reg4_reg_n_0_[4] ),
        .I1(\slv_reg0_reg_n_0_[4] ),
        .O(\abs_diff[0][7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[10][3]_i_2 
       (.I0(\slv_reg6_reg_n_0_[19] ),
        .I1(\slv_reg2_reg_n_0_[19] ),
        .I2(\abs_diff_reg[10][7]_i_10_n_0 ),
        .O(\abs_diff[10][3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[10][3]_i_3 
       (.I0(\slv_reg6_reg_n_0_[18] ),
        .I1(\slv_reg2_reg_n_0_[18] ),
        .I2(\abs_diff_reg[10][7]_i_10_n_0 ),
        .O(\abs_diff[10][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[10][3]_i_4 
       (.I0(\slv_reg6_reg_n_0_[17] ),
        .I1(\slv_reg2_reg_n_0_[17] ),
        .I2(\abs_diff_reg[10][7]_i_10_n_0 ),
        .O(\abs_diff[10][3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[10][3]_i_5 
       (.I0(\slv_reg6_reg_n_0_[16] ),
        .I1(\slv_reg2_reg_n_0_[16] ),
        .I2(\abs_diff_reg[10][7]_i_10_n_0 ),
        .O(\abs_diff[10][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[10][3]_i_6 
       (.I0(\slv_reg6_reg_n_0_[19] ),
        .I1(\slv_reg2_reg_n_0_[19] ),
        .O(\abs_diff[10][3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[10][3]_i_7 
       (.I0(\slv_reg6_reg_n_0_[18] ),
        .I1(\slv_reg2_reg_n_0_[18] ),
        .O(\abs_diff[10][3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[10][3]_i_8 
       (.I0(\slv_reg6_reg_n_0_[17] ),
        .I1(\slv_reg2_reg_n_0_[17] ),
        .O(\abs_diff[10][3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[10][3]_i_9 
       (.I0(\slv_reg6_reg_n_0_[16] ),
        .I1(\slv_reg2_reg_n_0_[16] ),
        .O(\abs_diff[10][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[10][7]_i_11 
       (.I0(\slv_reg2_reg_n_0_[22] ),
        .I1(\slv_reg6_reg_n_0_[22] ),
        .I2(\slv_reg6_reg_n_0_[23] ),
        .I3(\slv_reg2_reg_n_0_[23] ),
        .O(\abs_diff[10][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[10][7]_i_12 
       (.I0(\slv_reg2_reg_n_0_[20] ),
        .I1(\slv_reg6_reg_n_0_[20] ),
        .I2(\slv_reg6_reg_n_0_[21] ),
        .I3(\slv_reg2_reg_n_0_[21] ),
        .O(\abs_diff[10][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[10][7]_i_13 
       (.I0(\slv_reg2_reg_n_0_[18] ),
        .I1(\slv_reg6_reg_n_0_[18] ),
        .I2(\slv_reg6_reg_n_0_[19] ),
        .I3(\slv_reg2_reg_n_0_[19] ),
        .O(\abs_diff[10][7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[10][7]_i_14 
       (.I0(\slv_reg2_reg_n_0_[16] ),
        .I1(\slv_reg6_reg_n_0_[16] ),
        .I2(\slv_reg6_reg_n_0_[17] ),
        .I3(\slv_reg2_reg_n_0_[17] ),
        .O(\abs_diff[10][7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[10][7]_i_15 
       (.I0(\slv_reg2_reg_n_0_[22] ),
        .I1(\slv_reg6_reg_n_0_[22] ),
        .I2(\slv_reg2_reg_n_0_[23] ),
        .I3(\slv_reg6_reg_n_0_[23] ),
        .O(\abs_diff[10][7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[10][7]_i_16 
       (.I0(\slv_reg2_reg_n_0_[20] ),
        .I1(\slv_reg6_reg_n_0_[20] ),
        .I2(\slv_reg2_reg_n_0_[21] ),
        .I3(\slv_reg6_reg_n_0_[21] ),
        .O(\abs_diff[10][7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[10][7]_i_17 
       (.I0(\slv_reg2_reg_n_0_[18] ),
        .I1(\slv_reg6_reg_n_0_[18] ),
        .I2(\slv_reg2_reg_n_0_[19] ),
        .I3(\slv_reg6_reg_n_0_[19] ),
        .O(\abs_diff[10][7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[10][7]_i_18 
       (.I0(\slv_reg2_reg_n_0_[16] ),
        .I1(\slv_reg6_reg_n_0_[16] ),
        .I2(\slv_reg2_reg_n_0_[17] ),
        .I3(\slv_reg6_reg_n_0_[17] ),
        .O(\abs_diff[10][7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[10][7]_i_2 
       (.I0(\slv_reg6_reg_n_0_[23] ),
        .I1(\slv_reg2_reg_n_0_[23] ),
        .I2(\abs_diff_reg[10][7]_i_10_n_0 ),
        .O(\abs_diff[10][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[10][7]_i_3 
       (.I0(\slv_reg6_reg_n_0_[22] ),
        .I1(\slv_reg2_reg_n_0_[22] ),
        .I2(\abs_diff_reg[10][7]_i_10_n_0 ),
        .O(\abs_diff[10][7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[10][7]_i_4 
       (.I0(\slv_reg6_reg_n_0_[21] ),
        .I1(\slv_reg2_reg_n_0_[21] ),
        .I2(\abs_diff_reg[10][7]_i_10_n_0 ),
        .O(\abs_diff[10][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[10][7]_i_5 
       (.I0(\slv_reg6_reg_n_0_[20] ),
        .I1(\slv_reg2_reg_n_0_[20] ),
        .I2(\abs_diff_reg[10][7]_i_10_n_0 ),
        .O(\abs_diff[10][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[10][7]_i_6 
       (.I0(\slv_reg6_reg_n_0_[23] ),
        .I1(\slv_reg2_reg_n_0_[23] ),
        .O(\abs_diff[10][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[10][7]_i_7 
       (.I0(\slv_reg6_reg_n_0_[22] ),
        .I1(\slv_reg2_reg_n_0_[22] ),
        .O(\abs_diff[10][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[10][7]_i_8 
       (.I0(\slv_reg6_reg_n_0_[21] ),
        .I1(\slv_reg2_reg_n_0_[21] ),
        .O(\abs_diff[10][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[10][7]_i_9 
       (.I0(\slv_reg6_reg_n_0_[20] ),
        .I1(\slv_reg2_reg_n_0_[20] ),
        .O(\abs_diff[10][7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[11][3]_i_2 
       (.I0(\slv_reg6_reg_n_0_[27] ),
        .I1(\slv_reg2_reg_n_0_[27] ),
        .I2(\abs_diff_reg[11][7]_i_10_n_0 ),
        .O(\abs_diff[11][3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[11][3]_i_3 
       (.I0(\slv_reg6_reg_n_0_[26] ),
        .I1(\slv_reg2_reg_n_0_[26] ),
        .I2(\abs_diff_reg[11][7]_i_10_n_0 ),
        .O(\abs_diff[11][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[11][3]_i_4 
       (.I0(\slv_reg6_reg_n_0_[25] ),
        .I1(\slv_reg2_reg_n_0_[25] ),
        .I2(\abs_diff_reg[11][7]_i_10_n_0 ),
        .O(\abs_diff[11][3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[11][3]_i_5 
       (.I0(\slv_reg6_reg_n_0_[24] ),
        .I1(\slv_reg2_reg_n_0_[24] ),
        .I2(\abs_diff_reg[11][7]_i_10_n_0 ),
        .O(\abs_diff[11][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[11][3]_i_6 
       (.I0(\slv_reg6_reg_n_0_[27] ),
        .I1(\slv_reg2_reg_n_0_[27] ),
        .O(\abs_diff[11][3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[11][3]_i_7 
       (.I0(\slv_reg6_reg_n_0_[26] ),
        .I1(\slv_reg2_reg_n_0_[26] ),
        .O(\abs_diff[11][3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[11][3]_i_8 
       (.I0(\slv_reg6_reg_n_0_[25] ),
        .I1(\slv_reg2_reg_n_0_[25] ),
        .O(\abs_diff[11][3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[11][3]_i_9 
       (.I0(\slv_reg6_reg_n_0_[24] ),
        .I1(\slv_reg2_reg_n_0_[24] ),
        .O(\abs_diff[11][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[11][7]_i_11 
       (.I0(\slv_reg2_reg_n_0_[30] ),
        .I1(\slv_reg6_reg_n_0_[30] ),
        .I2(\slv_reg6_reg_n_0_[31] ),
        .I3(\slv_reg2_reg_n_0_[31] ),
        .O(\abs_diff[11][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[11][7]_i_12 
       (.I0(\slv_reg2_reg_n_0_[28] ),
        .I1(\slv_reg6_reg_n_0_[28] ),
        .I2(\slv_reg6_reg_n_0_[29] ),
        .I3(\slv_reg2_reg_n_0_[29] ),
        .O(\abs_diff[11][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[11][7]_i_13 
       (.I0(\slv_reg2_reg_n_0_[26] ),
        .I1(\slv_reg6_reg_n_0_[26] ),
        .I2(\slv_reg6_reg_n_0_[27] ),
        .I3(\slv_reg2_reg_n_0_[27] ),
        .O(\abs_diff[11][7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[11][7]_i_14 
       (.I0(\slv_reg2_reg_n_0_[24] ),
        .I1(\slv_reg6_reg_n_0_[24] ),
        .I2(\slv_reg6_reg_n_0_[25] ),
        .I3(\slv_reg2_reg_n_0_[25] ),
        .O(\abs_diff[11][7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[11][7]_i_15 
       (.I0(\slv_reg2_reg_n_0_[30] ),
        .I1(\slv_reg6_reg_n_0_[30] ),
        .I2(\slv_reg2_reg_n_0_[31] ),
        .I3(\slv_reg6_reg_n_0_[31] ),
        .O(\abs_diff[11][7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[11][7]_i_16 
       (.I0(\slv_reg2_reg_n_0_[28] ),
        .I1(\slv_reg6_reg_n_0_[28] ),
        .I2(\slv_reg2_reg_n_0_[29] ),
        .I3(\slv_reg6_reg_n_0_[29] ),
        .O(\abs_diff[11][7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[11][7]_i_17 
       (.I0(\slv_reg2_reg_n_0_[26] ),
        .I1(\slv_reg6_reg_n_0_[26] ),
        .I2(\slv_reg2_reg_n_0_[27] ),
        .I3(\slv_reg6_reg_n_0_[27] ),
        .O(\abs_diff[11][7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[11][7]_i_18 
       (.I0(\slv_reg2_reg_n_0_[24] ),
        .I1(\slv_reg6_reg_n_0_[24] ),
        .I2(\slv_reg2_reg_n_0_[25] ),
        .I3(\slv_reg6_reg_n_0_[25] ),
        .O(\abs_diff[11][7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[11][7]_i_2 
       (.I0(\slv_reg6_reg_n_0_[31] ),
        .I1(\slv_reg2_reg_n_0_[31] ),
        .I2(\abs_diff_reg[11][7]_i_10_n_0 ),
        .O(\abs_diff[11][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[11][7]_i_3 
       (.I0(\slv_reg6_reg_n_0_[30] ),
        .I1(\slv_reg2_reg_n_0_[30] ),
        .I2(\abs_diff_reg[11][7]_i_10_n_0 ),
        .O(\abs_diff[11][7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[11][7]_i_4 
       (.I0(\slv_reg6_reg_n_0_[29] ),
        .I1(\slv_reg2_reg_n_0_[29] ),
        .I2(\abs_diff_reg[11][7]_i_10_n_0 ),
        .O(\abs_diff[11][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[11][7]_i_5 
       (.I0(\slv_reg6_reg_n_0_[28] ),
        .I1(\slv_reg2_reg_n_0_[28] ),
        .I2(\abs_diff_reg[11][7]_i_10_n_0 ),
        .O(\abs_diff[11][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[11][7]_i_6 
       (.I0(\slv_reg6_reg_n_0_[31] ),
        .I1(\slv_reg2_reg_n_0_[31] ),
        .O(\abs_diff[11][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[11][7]_i_7 
       (.I0(\slv_reg6_reg_n_0_[30] ),
        .I1(\slv_reg2_reg_n_0_[30] ),
        .O(\abs_diff[11][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[11][7]_i_8 
       (.I0(\slv_reg6_reg_n_0_[29] ),
        .I1(\slv_reg2_reg_n_0_[29] ),
        .O(\abs_diff[11][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[11][7]_i_9 
       (.I0(\slv_reg6_reg_n_0_[28] ),
        .I1(\slv_reg2_reg_n_0_[28] ),
        .O(\abs_diff[11][7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[12][3]_i_2 
       (.I0(\slv_reg7_reg_n_0_[3] ),
        .I1(\slv_reg3_reg_n_0_[3] ),
        .I2(\abs_diff_reg[12][7]_i_10_n_0 ),
        .O(\abs_diff[12][3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[12][3]_i_3 
       (.I0(\slv_reg7_reg_n_0_[2] ),
        .I1(\slv_reg3_reg_n_0_[2] ),
        .I2(\abs_diff_reg[12][7]_i_10_n_0 ),
        .O(\abs_diff[12][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[12][3]_i_4 
       (.I0(\slv_reg7_reg_n_0_[1] ),
        .I1(\slv_reg3_reg_n_0_[1] ),
        .I2(\abs_diff_reg[12][7]_i_10_n_0 ),
        .O(\abs_diff[12][3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[12][3]_i_5 
       (.I0(\slv_reg7_reg_n_0_[0] ),
        .I1(\slv_reg3_reg_n_0_[0] ),
        .I2(\abs_diff_reg[12][7]_i_10_n_0 ),
        .O(\abs_diff[12][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[12][3]_i_6 
       (.I0(\slv_reg7_reg_n_0_[3] ),
        .I1(\slv_reg3_reg_n_0_[3] ),
        .O(\abs_diff[12][3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[12][3]_i_7 
       (.I0(\slv_reg7_reg_n_0_[2] ),
        .I1(\slv_reg3_reg_n_0_[2] ),
        .O(\abs_diff[12][3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[12][3]_i_8 
       (.I0(\slv_reg7_reg_n_0_[1] ),
        .I1(\slv_reg3_reg_n_0_[1] ),
        .O(\abs_diff[12][3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[12][3]_i_9 
       (.I0(\slv_reg7_reg_n_0_[0] ),
        .I1(\slv_reg3_reg_n_0_[0] ),
        .O(\abs_diff[12][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[12][7]_i_11 
       (.I0(\slv_reg3_reg_n_0_[6] ),
        .I1(\slv_reg7_reg_n_0_[6] ),
        .I2(\slv_reg7_reg_n_0_[7] ),
        .I3(\slv_reg3_reg_n_0_[7] ),
        .O(\abs_diff[12][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[12][7]_i_12 
       (.I0(\slv_reg3_reg_n_0_[4] ),
        .I1(\slv_reg7_reg_n_0_[4] ),
        .I2(\slv_reg7_reg_n_0_[5] ),
        .I3(\slv_reg3_reg_n_0_[5] ),
        .O(\abs_diff[12][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[12][7]_i_13 
       (.I0(\slv_reg3_reg_n_0_[2] ),
        .I1(\slv_reg7_reg_n_0_[2] ),
        .I2(\slv_reg7_reg_n_0_[3] ),
        .I3(\slv_reg3_reg_n_0_[3] ),
        .O(\abs_diff[12][7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[12][7]_i_14 
       (.I0(\slv_reg3_reg_n_0_[0] ),
        .I1(\slv_reg7_reg_n_0_[0] ),
        .I2(\slv_reg7_reg_n_0_[1] ),
        .I3(\slv_reg3_reg_n_0_[1] ),
        .O(\abs_diff[12][7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[12][7]_i_15 
       (.I0(\slv_reg3_reg_n_0_[6] ),
        .I1(\slv_reg7_reg_n_0_[6] ),
        .I2(\slv_reg3_reg_n_0_[7] ),
        .I3(\slv_reg7_reg_n_0_[7] ),
        .O(\abs_diff[12][7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[12][7]_i_16 
       (.I0(\slv_reg3_reg_n_0_[4] ),
        .I1(\slv_reg7_reg_n_0_[4] ),
        .I2(\slv_reg3_reg_n_0_[5] ),
        .I3(\slv_reg7_reg_n_0_[5] ),
        .O(\abs_diff[12][7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[12][7]_i_17 
       (.I0(\slv_reg3_reg_n_0_[2] ),
        .I1(\slv_reg7_reg_n_0_[2] ),
        .I2(\slv_reg3_reg_n_0_[3] ),
        .I3(\slv_reg7_reg_n_0_[3] ),
        .O(\abs_diff[12][7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[12][7]_i_18 
       (.I0(\slv_reg3_reg_n_0_[0] ),
        .I1(\slv_reg7_reg_n_0_[0] ),
        .I2(\slv_reg3_reg_n_0_[1] ),
        .I3(\slv_reg7_reg_n_0_[1] ),
        .O(\abs_diff[12][7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[12][7]_i_2 
       (.I0(\slv_reg7_reg_n_0_[7] ),
        .I1(\slv_reg3_reg_n_0_[7] ),
        .I2(\abs_diff_reg[12][7]_i_10_n_0 ),
        .O(\abs_diff[12][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[12][7]_i_3 
       (.I0(\slv_reg7_reg_n_0_[6] ),
        .I1(\slv_reg3_reg_n_0_[6] ),
        .I2(\abs_diff_reg[12][7]_i_10_n_0 ),
        .O(\abs_diff[12][7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[12][7]_i_4 
       (.I0(\slv_reg7_reg_n_0_[5] ),
        .I1(\slv_reg3_reg_n_0_[5] ),
        .I2(\abs_diff_reg[12][7]_i_10_n_0 ),
        .O(\abs_diff[12][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[12][7]_i_5 
       (.I0(\slv_reg7_reg_n_0_[4] ),
        .I1(\slv_reg3_reg_n_0_[4] ),
        .I2(\abs_diff_reg[12][7]_i_10_n_0 ),
        .O(\abs_diff[12][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[12][7]_i_6 
       (.I0(\slv_reg7_reg_n_0_[7] ),
        .I1(\slv_reg3_reg_n_0_[7] ),
        .O(\abs_diff[12][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[12][7]_i_7 
       (.I0(\slv_reg7_reg_n_0_[6] ),
        .I1(\slv_reg3_reg_n_0_[6] ),
        .O(\abs_diff[12][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[12][7]_i_8 
       (.I0(\slv_reg7_reg_n_0_[5] ),
        .I1(\slv_reg3_reg_n_0_[5] ),
        .O(\abs_diff[12][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[12][7]_i_9 
       (.I0(\slv_reg7_reg_n_0_[4] ),
        .I1(\slv_reg3_reg_n_0_[4] ),
        .O(\abs_diff[12][7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[13][3]_i_2 
       (.I0(\slv_reg7_reg_n_0_[11] ),
        .I1(\slv_reg3_reg_n_0_[11] ),
        .I2(\abs_diff_reg[13][7]_i_10_n_0 ),
        .O(\abs_diff[13][3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[13][3]_i_3 
       (.I0(\slv_reg7_reg_n_0_[10] ),
        .I1(\slv_reg3_reg_n_0_[10] ),
        .I2(\abs_diff_reg[13][7]_i_10_n_0 ),
        .O(\abs_diff[13][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[13][3]_i_4 
       (.I0(\slv_reg7_reg_n_0_[9] ),
        .I1(\slv_reg3_reg_n_0_[9] ),
        .I2(\abs_diff_reg[13][7]_i_10_n_0 ),
        .O(\abs_diff[13][3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[13][3]_i_5 
       (.I0(\slv_reg7_reg_n_0_[8] ),
        .I1(\slv_reg3_reg_n_0_[8] ),
        .I2(\abs_diff_reg[13][7]_i_10_n_0 ),
        .O(\abs_diff[13][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[13][3]_i_6 
       (.I0(\slv_reg7_reg_n_0_[11] ),
        .I1(\slv_reg3_reg_n_0_[11] ),
        .O(\abs_diff[13][3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[13][3]_i_7 
       (.I0(\slv_reg7_reg_n_0_[10] ),
        .I1(\slv_reg3_reg_n_0_[10] ),
        .O(\abs_diff[13][3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[13][3]_i_8 
       (.I0(\slv_reg7_reg_n_0_[9] ),
        .I1(\slv_reg3_reg_n_0_[9] ),
        .O(\abs_diff[13][3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[13][3]_i_9 
       (.I0(\slv_reg7_reg_n_0_[8] ),
        .I1(\slv_reg3_reg_n_0_[8] ),
        .O(\abs_diff[13][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[13][7]_i_11 
       (.I0(\slv_reg3_reg_n_0_[14] ),
        .I1(\slv_reg7_reg_n_0_[14] ),
        .I2(\slv_reg7_reg_n_0_[15] ),
        .I3(\slv_reg3_reg_n_0_[15] ),
        .O(\abs_diff[13][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[13][7]_i_12 
       (.I0(\slv_reg3_reg_n_0_[12] ),
        .I1(\slv_reg7_reg_n_0_[12] ),
        .I2(\slv_reg7_reg_n_0_[13] ),
        .I3(\slv_reg3_reg_n_0_[13] ),
        .O(\abs_diff[13][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[13][7]_i_13 
       (.I0(\slv_reg3_reg_n_0_[10] ),
        .I1(\slv_reg7_reg_n_0_[10] ),
        .I2(\slv_reg7_reg_n_0_[11] ),
        .I3(\slv_reg3_reg_n_0_[11] ),
        .O(\abs_diff[13][7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[13][7]_i_14 
       (.I0(\slv_reg3_reg_n_0_[8] ),
        .I1(\slv_reg7_reg_n_0_[8] ),
        .I2(\slv_reg7_reg_n_0_[9] ),
        .I3(\slv_reg3_reg_n_0_[9] ),
        .O(\abs_diff[13][7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[13][7]_i_15 
       (.I0(\slv_reg3_reg_n_0_[14] ),
        .I1(\slv_reg7_reg_n_0_[14] ),
        .I2(\slv_reg3_reg_n_0_[15] ),
        .I3(\slv_reg7_reg_n_0_[15] ),
        .O(\abs_diff[13][7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[13][7]_i_16 
       (.I0(\slv_reg3_reg_n_0_[12] ),
        .I1(\slv_reg7_reg_n_0_[12] ),
        .I2(\slv_reg3_reg_n_0_[13] ),
        .I3(\slv_reg7_reg_n_0_[13] ),
        .O(\abs_diff[13][7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[13][7]_i_17 
       (.I0(\slv_reg3_reg_n_0_[10] ),
        .I1(\slv_reg7_reg_n_0_[10] ),
        .I2(\slv_reg3_reg_n_0_[11] ),
        .I3(\slv_reg7_reg_n_0_[11] ),
        .O(\abs_diff[13][7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[13][7]_i_18 
       (.I0(\slv_reg3_reg_n_0_[8] ),
        .I1(\slv_reg7_reg_n_0_[8] ),
        .I2(\slv_reg3_reg_n_0_[9] ),
        .I3(\slv_reg7_reg_n_0_[9] ),
        .O(\abs_diff[13][7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[13][7]_i_2 
       (.I0(\slv_reg7_reg_n_0_[15] ),
        .I1(\slv_reg3_reg_n_0_[15] ),
        .I2(\abs_diff_reg[13][7]_i_10_n_0 ),
        .O(\abs_diff[13][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[13][7]_i_3 
       (.I0(\slv_reg7_reg_n_0_[14] ),
        .I1(\slv_reg3_reg_n_0_[14] ),
        .I2(\abs_diff_reg[13][7]_i_10_n_0 ),
        .O(\abs_diff[13][7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[13][7]_i_4 
       (.I0(\slv_reg7_reg_n_0_[13] ),
        .I1(\slv_reg3_reg_n_0_[13] ),
        .I2(\abs_diff_reg[13][7]_i_10_n_0 ),
        .O(\abs_diff[13][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[13][7]_i_5 
       (.I0(\slv_reg7_reg_n_0_[12] ),
        .I1(\slv_reg3_reg_n_0_[12] ),
        .I2(\abs_diff_reg[13][7]_i_10_n_0 ),
        .O(\abs_diff[13][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[13][7]_i_6 
       (.I0(\slv_reg7_reg_n_0_[15] ),
        .I1(\slv_reg3_reg_n_0_[15] ),
        .O(\abs_diff[13][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[13][7]_i_7 
       (.I0(\slv_reg7_reg_n_0_[14] ),
        .I1(\slv_reg3_reg_n_0_[14] ),
        .O(\abs_diff[13][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[13][7]_i_8 
       (.I0(\slv_reg7_reg_n_0_[13] ),
        .I1(\slv_reg3_reg_n_0_[13] ),
        .O(\abs_diff[13][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[13][7]_i_9 
       (.I0(\slv_reg7_reg_n_0_[12] ),
        .I1(\slv_reg3_reg_n_0_[12] ),
        .O(\abs_diff[13][7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[14][3]_i_2 
       (.I0(\slv_reg7_reg_n_0_[19] ),
        .I1(\slv_reg3_reg_n_0_[19] ),
        .I2(\abs_diff_reg[14][7]_i_10_n_0 ),
        .O(\abs_diff[14][3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[14][3]_i_3 
       (.I0(\slv_reg7_reg_n_0_[18] ),
        .I1(\slv_reg3_reg_n_0_[18] ),
        .I2(\abs_diff_reg[14][7]_i_10_n_0 ),
        .O(\abs_diff[14][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[14][3]_i_4 
       (.I0(\slv_reg7_reg_n_0_[17] ),
        .I1(\slv_reg3_reg_n_0_[17] ),
        .I2(\abs_diff_reg[14][7]_i_10_n_0 ),
        .O(\abs_diff[14][3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[14][3]_i_5 
       (.I0(\slv_reg7_reg_n_0_[16] ),
        .I1(\slv_reg3_reg_n_0_[16] ),
        .I2(\abs_diff_reg[14][7]_i_10_n_0 ),
        .O(\abs_diff[14][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[14][3]_i_6 
       (.I0(\slv_reg7_reg_n_0_[19] ),
        .I1(\slv_reg3_reg_n_0_[19] ),
        .O(\abs_diff[14][3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[14][3]_i_7 
       (.I0(\slv_reg7_reg_n_0_[18] ),
        .I1(\slv_reg3_reg_n_0_[18] ),
        .O(\abs_diff[14][3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[14][3]_i_8 
       (.I0(\slv_reg7_reg_n_0_[17] ),
        .I1(\slv_reg3_reg_n_0_[17] ),
        .O(\abs_diff[14][3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[14][3]_i_9 
       (.I0(\slv_reg7_reg_n_0_[16] ),
        .I1(\slv_reg3_reg_n_0_[16] ),
        .O(\abs_diff[14][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[14][7]_i_11 
       (.I0(\slv_reg3_reg_n_0_[22] ),
        .I1(\slv_reg7_reg_n_0_[22] ),
        .I2(\slv_reg7_reg_n_0_[23] ),
        .I3(\slv_reg3_reg_n_0_[23] ),
        .O(\abs_diff[14][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[14][7]_i_12 
       (.I0(\slv_reg3_reg_n_0_[20] ),
        .I1(\slv_reg7_reg_n_0_[20] ),
        .I2(\slv_reg7_reg_n_0_[21] ),
        .I3(\slv_reg3_reg_n_0_[21] ),
        .O(\abs_diff[14][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[14][7]_i_13 
       (.I0(\slv_reg3_reg_n_0_[18] ),
        .I1(\slv_reg7_reg_n_0_[18] ),
        .I2(\slv_reg7_reg_n_0_[19] ),
        .I3(\slv_reg3_reg_n_0_[19] ),
        .O(\abs_diff[14][7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[14][7]_i_14 
       (.I0(\slv_reg3_reg_n_0_[16] ),
        .I1(\slv_reg7_reg_n_0_[16] ),
        .I2(\slv_reg7_reg_n_0_[17] ),
        .I3(\slv_reg3_reg_n_0_[17] ),
        .O(\abs_diff[14][7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[14][7]_i_15 
       (.I0(\slv_reg3_reg_n_0_[22] ),
        .I1(\slv_reg7_reg_n_0_[22] ),
        .I2(\slv_reg3_reg_n_0_[23] ),
        .I3(\slv_reg7_reg_n_0_[23] ),
        .O(\abs_diff[14][7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[14][7]_i_16 
       (.I0(\slv_reg3_reg_n_0_[20] ),
        .I1(\slv_reg7_reg_n_0_[20] ),
        .I2(\slv_reg3_reg_n_0_[21] ),
        .I3(\slv_reg7_reg_n_0_[21] ),
        .O(\abs_diff[14][7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[14][7]_i_17 
       (.I0(\slv_reg3_reg_n_0_[18] ),
        .I1(\slv_reg7_reg_n_0_[18] ),
        .I2(\slv_reg3_reg_n_0_[19] ),
        .I3(\slv_reg7_reg_n_0_[19] ),
        .O(\abs_diff[14][7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[14][7]_i_18 
       (.I0(\slv_reg3_reg_n_0_[16] ),
        .I1(\slv_reg7_reg_n_0_[16] ),
        .I2(\slv_reg3_reg_n_0_[17] ),
        .I3(\slv_reg7_reg_n_0_[17] ),
        .O(\abs_diff[14][7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[14][7]_i_2 
       (.I0(\slv_reg7_reg_n_0_[23] ),
        .I1(\slv_reg3_reg_n_0_[23] ),
        .I2(\abs_diff_reg[14][7]_i_10_n_0 ),
        .O(\abs_diff[14][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[14][7]_i_3 
       (.I0(\slv_reg7_reg_n_0_[22] ),
        .I1(\slv_reg3_reg_n_0_[22] ),
        .I2(\abs_diff_reg[14][7]_i_10_n_0 ),
        .O(\abs_diff[14][7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[14][7]_i_4 
       (.I0(\slv_reg7_reg_n_0_[21] ),
        .I1(\slv_reg3_reg_n_0_[21] ),
        .I2(\abs_diff_reg[14][7]_i_10_n_0 ),
        .O(\abs_diff[14][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[14][7]_i_5 
       (.I0(\slv_reg7_reg_n_0_[20] ),
        .I1(\slv_reg3_reg_n_0_[20] ),
        .I2(\abs_diff_reg[14][7]_i_10_n_0 ),
        .O(\abs_diff[14][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[14][7]_i_6 
       (.I0(\slv_reg7_reg_n_0_[23] ),
        .I1(\slv_reg3_reg_n_0_[23] ),
        .O(\abs_diff[14][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[14][7]_i_7 
       (.I0(\slv_reg7_reg_n_0_[22] ),
        .I1(\slv_reg3_reg_n_0_[22] ),
        .O(\abs_diff[14][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[14][7]_i_8 
       (.I0(\slv_reg7_reg_n_0_[21] ),
        .I1(\slv_reg3_reg_n_0_[21] ),
        .O(\abs_diff[14][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[14][7]_i_9 
       (.I0(\slv_reg7_reg_n_0_[20] ),
        .I1(\slv_reg3_reg_n_0_[20] ),
        .O(\abs_diff[14][7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[15][3]_i_2 
       (.I0(\slv_reg7_reg_n_0_[27] ),
        .I1(\slv_reg3_reg_n_0_[27] ),
        .I2(\abs_diff_reg[15][7]_i_10_n_0 ),
        .O(\abs_diff[15][3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[15][3]_i_3 
       (.I0(\slv_reg7_reg_n_0_[26] ),
        .I1(\slv_reg3_reg_n_0_[26] ),
        .I2(\abs_diff_reg[15][7]_i_10_n_0 ),
        .O(\abs_diff[15][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[15][3]_i_4 
       (.I0(\slv_reg7_reg_n_0_[25] ),
        .I1(\slv_reg3_reg_n_0_[25] ),
        .I2(\abs_diff_reg[15][7]_i_10_n_0 ),
        .O(\abs_diff[15][3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[15][3]_i_5 
       (.I0(\slv_reg7_reg_n_0_[24] ),
        .I1(\slv_reg3_reg_n_0_[24] ),
        .I2(\abs_diff_reg[15][7]_i_10_n_0 ),
        .O(\abs_diff[15][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[15][3]_i_6 
       (.I0(\slv_reg7_reg_n_0_[27] ),
        .I1(\slv_reg3_reg_n_0_[27] ),
        .O(\abs_diff[15][3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[15][3]_i_7 
       (.I0(\slv_reg7_reg_n_0_[26] ),
        .I1(\slv_reg3_reg_n_0_[26] ),
        .O(\abs_diff[15][3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[15][3]_i_8 
       (.I0(\slv_reg7_reg_n_0_[25] ),
        .I1(\slv_reg3_reg_n_0_[25] ),
        .O(\abs_diff[15][3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[15][3]_i_9 
       (.I0(\slv_reg7_reg_n_0_[24] ),
        .I1(\slv_reg3_reg_n_0_[24] ),
        .O(\abs_diff[15][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[15][7]_i_11 
       (.I0(\slv_reg3_reg_n_0_[30] ),
        .I1(\slv_reg7_reg_n_0_[30] ),
        .I2(\slv_reg7_reg_n_0_[31] ),
        .I3(\slv_reg3_reg_n_0_[31] ),
        .O(\abs_diff[15][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[15][7]_i_12 
       (.I0(\slv_reg3_reg_n_0_[28] ),
        .I1(\slv_reg7_reg_n_0_[28] ),
        .I2(\slv_reg7_reg_n_0_[29] ),
        .I3(\slv_reg3_reg_n_0_[29] ),
        .O(\abs_diff[15][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[15][7]_i_13 
       (.I0(\slv_reg3_reg_n_0_[26] ),
        .I1(\slv_reg7_reg_n_0_[26] ),
        .I2(\slv_reg7_reg_n_0_[27] ),
        .I3(\slv_reg3_reg_n_0_[27] ),
        .O(\abs_diff[15][7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[15][7]_i_14 
       (.I0(\slv_reg3_reg_n_0_[24] ),
        .I1(\slv_reg7_reg_n_0_[24] ),
        .I2(\slv_reg7_reg_n_0_[25] ),
        .I3(\slv_reg3_reg_n_0_[25] ),
        .O(\abs_diff[15][7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[15][7]_i_15 
       (.I0(\slv_reg3_reg_n_0_[30] ),
        .I1(\slv_reg7_reg_n_0_[30] ),
        .I2(\slv_reg3_reg_n_0_[31] ),
        .I3(\slv_reg7_reg_n_0_[31] ),
        .O(\abs_diff[15][7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[15][7]_i_16 
       (.I0(\slv_reg3_reg_n_0_[28] ),
        .I1(\slv_reg7_reg_n_0_[28] ),
        .I2(\slv_reg3_reg_n_0_[29] ),
        .I3(\slv_reg7_reg_n_0_[29] ),
        .O(\abs_diff[15][7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[15][7]_i_17 
       (.I0(\slv_reg3_reg_n_0_[26] ),
        .I1(\slv_reg7_reg_n_0_[26] ),
        .I2(\slv_reg3_reg_n_0_[27] ),
        .I3(\slv_reg7_reg_n_0_[27] ),
        .O(\abs_diff[15][7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[15][7]_i_18 
       (.I0(\slv_reg3_reg_n_0_[24] ),
        .I1(\slv_reg7_reg_n_0_[24] ),
        .I2(\slv_reg3_reg_n_0_[25] ),
        .I3(\slv_reg7_reg_n_0_[25] ),
        .O(\abs_diff[15][7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[15][7]_i_2 
       (.I0(\slv_reg7_reg_n_0_[31] ),
        .I1(\slv_reg3_reg_n_0_[31] ),
        .I2(\abs_diff_reg[15][7]_i_10_n_0 ),
        .O(\abs_diff[15][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[15][7]_i_3 
       (.I0(\slv_reg7_reg_n_0_[30] ),
        .I1(\slv_reg3_reg_n_0_[30] ),
        .I2(\abs_diff_reg[15][7]_i_10_n_0 ),
        .O(\abs_diff[15][7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[15][7]_i_4 
       (.I0(\slv_reg7_reg_n_0_[29] ),
        .I1(\slv_reg3_reg_n_0_[29] ),
        .I2(\abs_diff_reg[15][7]_i_10_n_0 ),
        .O(\abs_diff[15][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[15][7]_i_5 
       (.I0(\slv_reg7_reg_n_0_[28] ),
        .I1(\slv_reg3_reg_n_0_[28] ),
        .I2(\abs_diff_reg[15][7]_i_10_n_0 ),
        .O(\abs_diff[15][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[15][7]_i_6 
       (.I0(\slv_reg7_reg_n_0_[31] ),
        .I1(\slv_reg3_reg_n_0_[31] ),
        .O(\abs_diff[15][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[15][7]_i_7 
       (.I0(\slv_reg7_reg_n_0_[30] ),
        .I1(\slv_reg3_reg_n_0_[30] ),
        .O(\abs_diff[15][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[15][7]_i_8 
       (.I0(\slv_reg7_reg_n_0_[29] ),
        .I1(\slv_reg3_reg_n_0_[29] ),
        .O(\abs_diff[15][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[15][7]_i_9 
       (.I0(\slv_reg7_reg_n_0_[28] ),
        .I1(\slv_reg3_reg_n_0_[28] ),
        .O(\abs_diff[15][7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[1][3]_i_2 
       (.I0(\slv_reg4_reg_n_0_[11] ),
        .I1(\slv_reg0_reg_n_0_[11] ),
        .I2(\abs_diff_reg[1][7]_i_10_n_0 ),
        .O(\abs_diff[1][3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[1][3]_i_3 
       (.I0(\slv_reg4_reg_n_0_[10] ),
        .I1(\slv_reg0_reg_n_0_[10] ),
        .I2(\abs_diff_reg[1][7]_i_10_n_0 ),
        .O(\abs_diff[1][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[1][3]_i_4 
       (.I0(\slv_reg4_reg_n_0_[9] ),
        .I1(\slv_reg0_reg_n_0_[9] ),
        .I2(\abs_diff_reg[1][7]_i_10_n_0 ),
        .O(\abs_diff[1][3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[1][3]_i_5 
       (.I0(\slv_reg4_reg_n_0_[8] ),
        .I1(\slv_reg0_reg_n_0_[8] ),
        .I2(\abs_diff_reg[1][7]_i_10_n_0 ),
        .O(\abs_diff[1][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[1][3]_i_6 
       (.I0(\slv_reg4_reg_n_0_[11] ),
        .I1(\slv_reg0_reg_n_0_[11] ),
        .O(\abs_diff[1][3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[1][3]_i_7 
       (.I0(\slv_reg4_reg_n_0_[10] ),
        .I1(\slv_reg0_reg_n_0_[10] ),
        .O(\abs_diff[1][3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[1][3]_i_8 
       (.I0(\slv_reg4_reg_n_0_[9] ),
        .I1(\slv_reg0_reg_n_0_[9] ),
        .O(\abs_diff[1][3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[1][3]_i_9 
       (.I0(\slv_reg4_reg_n_0_[8] ),
        .I1(\slv_reg0_reg_n_0_[8] ),
        .O(\abs_diff[1][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[1][7]_i_11 
       (.I0(\slv_reg0_reg_n_0_[14] ),
        .I1(\slv_reg4_reg_n_0_[14] ),
        .I2(\slv_reg4_reg_n_0_[15] ),
        .I3(\slv_reg0_reg_n_0_[15] ),
        .O(\abs_diff[1][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[1][7]_i_12 
       (.I0(\slv_reg0_reg_n_0_[12] ),
        .I1(\slv_reg4_reg_n_0_[12] ),
        .I2(\slv_reg4_reg_n_0_[13] ),
        .I3(\slv_reg0_reg_n_0_[13] ),
        .O(\abs_diff[1][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[1][7]_i_13 
       (.I0(\slv_reg0_reg_n_0_[10] ),
        .I1(\slv_reg4_reg_n_0_[10] ),
        .I2(\slv_reg4_reg_n_0_[11] ),
        .I3(\slv_reg0_reg_n_0_[11] ),
        .O(\abs_diff[1][7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[1][7]_i_14 
       (.I0(\slv_reg0_reg_n_0_[8] ),
        .I1(\slv_reg4_reg_n_0_[8] ),
        .I2(\slv_reg4_reg_n_0_[9] ),
        .I3(\slv_reg0_reg_n_0_[9] ),
        .O(\abs_diff[1][7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[1][7]_i_15 
       (.I0(\slv_reg0_reg_n_0_[14] ),
        .I1(\slv_reg4_reg_n_0_[14] ),
        .I2(\slv_reg0_reg_n_0_[15] ),
        .I3(\slv_reg4_reg_n_0_[15] ),
        .O(\abs_diff[1][7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[1][7]_i_16 
       (.I0(\slv_reg0_reg_n_0_[12] ),
        .I1(\slv_reg4_reg_n_0_[12] ),
        .I2(\slv_reg0_reg_n_0_[13] ),
        .I3(\slv_reg4_reg_n_0_[13] ),
        .O(\abs_diff[1][7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[1][7]_i_17 
       (.I0(\slv_reg0_reg_n_0_[10] ),
        .I1(\slv_reg4_reg_n_0_[10] ),
        .I2(\slv_reg0_reg_n_0_[11] ),
        .I3(\slv_reg4_reg_n_0_[11] ),
        .O(\abs_diff[1][7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[1][7]_i_18 
       (.I0(\slv_reg0_reg_n_0_[8] ),
        .I1(\slv_reg4_reg_n_0_[8] ),
        .I2(\slv_reg0_reg_n_0_[9] ),
        .I3(\slv_reg4_reg_n_0_[9] ),
        .O(\abs_diff[1][7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[1][7]_i_2 
       (.I0(\slv_reg4_reg_n_0_[15] ),
        .I1(\slv_reg0_reg_n_0_[15] ),
        .I2(\abs_diff_reg[1][7]_i_10_n_0 ),
        .O(\abs_diff[1][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[1][7]_i_3 
       (.I0(\slv_reg4_reg_n_0_[14] ),
        .I1(\slv_reg0_reg_n_0_[14] ),
        .I2(\abs_diff_reg[1][7]_i_10_n_0 ),
        .O(\abs_diff[1][7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[1][7]_i_4 
       (.I0(\slv_reg4_reg_n_0_[13] ),
        .I1(\slv_reg0_reg_n_0_[13] ),
        .I2(\abs_diff_reg[1][7]_i_10_n_0 ),
        .O(\abs_diff[1][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[1][7]_i_5 
       (.I0(\slv_reg4_reg_n_0_[12] ),
        .I1(\slv_reg0_reg_n_0_[12] ),
        .I2(\abs_diff_reg[1][7]_i_10_n_0 ),
        .O(\abs_diff[1][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[1][7]_i_6 
       (.I0(\slv_reg4_reg_n_0_[15] ),
        .I1(\slv_reg0_reg_n_0_[15] ),
        .O(\abs_diff[1][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[1][7]_i_7 
       (.I0(\slv_reg4_reg_n_0_[14] ),
        .I1(\slv_reg0_reg_n_0_[14] ),
        .O(\abs_diff[1][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[1][7]_i_8 
       (.I0(\slv_reg4_reg_n_0_[13] ),
        .I1(\slv_reg0_reg_n_0_[13] ),
        .O(\abs_diff[1][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[1][7]_i_9 
       (.I0(\slv_reg4_reg_n_0_[12] ),
        .I1(\slv_reg0_reg_n_0_[12] ),
        .O(\abs_diff[1][7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[2][3]_i_2 
       (.I0(\slv_reg4_reg_n_0_[19] ),
        .I1(\slv_reg0_reg_n_0_[19] ),
        .I2(\abs_diff_reg[2][7]_i_10_n_0 ),
        .O(\abs_diff[2][3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[2][3]_i_3 
       (.I0(\slv_reg4_reg_n_0_[18] ),
        .I1(\slv_reg0_reg_n_0_[18] ),
        .I2(\abs_diff_reg[2][7]_i_10_n_0 ),
        .O(\abs_diff[2][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[2][3]_i_4 
       (.I0(\slv_reg4_reg_n_0_[17] ),
        .I1(\slv_reg0_reg_n_0_[17] ),
        .I2(\abs_diff_reg[2][7]_i_10_n_0 ),
        .O(\abs_diff[2][3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[2][3]_i_5 
       (.I0(\slv_reg4_reg_n_0_[16] ),
        .I1(\slv_reg0_reg_n_0_[16] ),
        .I2(\abs_diff_reg[2][7]_i_10_n_0 ),
        .O(\abs_diff[2][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[2][3]_i_6 
       (.I0(\slv_reg4_reg_n_0_[19] ),
        .I1(\slv_reg0_reg_n_0_[19] ),
        .O(\abs_diff[2][3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[2][3]_i_7 
       (.I0(\slv_reg4_reg_n_0_[18] ),
        .I1(\slv_reg0_reg_n_0_[18] ),
        .O(\abs_diff[2][3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[2][3]_i_8 
       (.I0(\slv_reg4_reg_n_0_[17] ),
        .I1(\slv_reg0_reg_n_0_[17] ),
        .O(\abs_diff[2][3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[2][3]_i_9 
       (.I0(\slv_reg4_reg_n_0_[16] ),
        .I1(\slv_reg0_reg_n_0_[16] ),
        .O(\abs_diff[2][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[2][7]_i_11 
       (.I0(\slv_reg0_reg_n_0_[22] ),
        .I1(\slv_reg4_reg_n_0_[22] ),
        .I2(\slv_reg4_reg_n_0_[23] ),
        .I3(\slv_reg0_reg_n_0_[23] ),
        .O(\abs_diff[2][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[2][7]_i_12 
       (.I0(\slv_reg0_reg_n_0_[20] ),
        .I1(\slv_reg4_reg_n_0_[20] ),
        .I2(\slv_reg4_reg_n_0_[21] ),
        .I3(\slv_reg0_reg_n_0_[21] ),
        .O(\abs_diff[2][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[2][7]_i_13 
       (.I0(\slv_reg0_reg_n_0_[18] ),
        .I1(\slv_reg4_reg_n_0_[18] ),
        .I2(\slv_reg4_reg_n_0_[19] ),
        .I3(\slv_reg0_reg_n_0_[19] ),
        .O(\abs_diff[2][7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[2][7]_i_14 
       (.I0(\slv_reg0_reg_n_0_[16] ),
        .I1(\slv_reg4_reg_n_0_[16] ),
        .I2(\slv_reg4_reg_n_0_[17] ),
        .I3(\slv_reg0_reg_n_0_[17] ),
        .O(\abs_diff[2][7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[2][7]_i_15 
       (.I0(\slv_reg0_reg_n_0_[22] ),
        .I1(\slv_reg4_reg_n_0_[22] ),
        .I2(\slv_reg0_reg_n_0_[23] ),
        .I3(\slv_reg4_reg_n_0_[23] ),
        .O(\abs_diff[2][7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[2][7]_i_16 
       (.I0(\slv_reg0_reg_n_0_[20] ),
        .I1(\slv_reg4_reg_n_0_[20] ),
        .I2(\slv_reg0_reg_n_0_[21] ),
        .I3(\slv_reg4_reg_n_0_[21] ),
        .O(\abs_diff[2][7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[2][7]_i_17 
       (.I0(\slv_reg0_reg_n_0_[18] ),
        .I1(\slv_reg4_reg_n_0_[18] ),
        .I2(\slv_reg0_reg_n_0_[19] ),
        .I3(\slv_reg4_reg_n_0_[19] ),
        .O(\abs_diff[2][7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[2][7]_i_18 
       (.I0(\slv_reg0_reg_n_0_[16] ),
        .I1(\slv_reg4_reg_n_0_[16] ),
        .I2(\slv_reg0_reg_n_0_[17] ),
        .I3(\slv_reg4_reg_n_0_[17] ),
        .O(\abs_diff[2][7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[2][7]_i_2 
       (.I0(\slv_reg4_reg_n_0_[23] ),
        .I1(\slv_reg0_reg_n_0_[23] ),
        .I2(\abs_diff_reg[2][7]_i_10_n_0 ),
        .O(\abs_diff[2][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[2][7]_i_3 
       (.I0(\slv_reg4_reg_n_0_[22] ),
        .I1(\slv_reg0_reg_n_0_[22] ),
        .I2(\abs_diff_reg[2][7]_i_10_n_0 ),
        .O(\abs_diff[2][7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[2][7]_i_4 
       (.I0(\slv_reg4_reg_n_0_[21] ),
        .I1(\slv_reg0_reg_n_0_[21] ),
        .I2(\abs_diff_reg[2][7]_i_10_n_0 ),
        .O(\abs_diff[2][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[2][7]_i_5 
       (.I0(\slv_reg4_reg_n_0_[20] ),
        .I1(\slv_reg0_reg_n_0_[20] ),
        .I2(\abs_diff_reg[2][7]_i_10_n_0 ),
        .O(\abs_diff[2][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[2][7]_i_6 
       (.I0(\slv_reg4_reg_n_0_[23] ),
        .I1(\slv_reg0_reg_n_0_[23] ),
        .O(\abs_diff[2][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[2][7]_i_7 
       (.I0(\slv_reg4_reg_n_0_[22] ),
        .I1(\slv_reg0_reg_n_0_[22] ),
        .O(\abs_diff[2][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[2][7]_i_8 
       (.I0(\slv_reg4_reg_n_0_[21] ),
        .I1(\slv_reg0_reg_n_0_[21] ),
        .O(\abs_diff[2][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[2][7]_i_9 
       (.I0(\slv_reg4_reg_n_0_[20] ),
        .I1(\slv_reg0_reg_n_0_[20] ),
        .O(\abs_diff[2][7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[3][3]_i_2 
       (.I0(\slv_reg4_reg_n_0_[27] ),
        .I1(\slv_reg0_reg_n_0_[27] ),
        .I2(\abs_diff_reg[3][7]_i_10_n_0 ),
        .O(\abs_diff[3][3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[3][3]_i_3 
       (.I0(\slv_reg4_reg_n_0_[26] ),
        .I1(\slv_reg0_reg_n_0_[26] ),
        .I2(\abs_diff_reg[3][7]_i_10_n_0 ),
        .O(\abs_diff[3][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[3][3]_i_4 
       (.I0(\slv_reg4_reg_n_0_[25] ),
        .I1(\slv_reg0_reg_n_0_[25] ),
        .I2(\abs_diff_reg[3][7]_i_10_n_0 ),
        .O(\abs_diff[3][3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[3][3]_i_5 
       (.I0(\slv_reg4_reg_n_0_[24] ),
        .I1(\slv_reg0_reg_n_0_[24] ),
        .I2(\abs_diff_reg[3][7]_i_10_n_0 ),
        .O(\abs_diff[3][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[3][3]_i_6 
       (.I0(\slv_reg4_reg_n_0_[27] ),
        .I1(\slv_reg0_reg_n_0_[27] ),
        .O(\abs_diff[3][3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[3][3]_i_7 
       (.I0(\slv_reg4_reg_n_0_[26] ),
        .I1(\slv_reg0_reg_n_0_[26] ),
        .O(\abs_diff[3][3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[3][3]_i_8 
       (.I0(\slv_reg4_reg_n_0_[25] ),
        .I1(\slv_reg0_reg_n_0_[25] ),
        .O(\abs_diff[3][3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[3][3]_i_9 
       (.I0(\slv_reg4_reg_n_0_[24] ),
        .I1(\slv_reg0_reg_n_0_[24] ),
        .O(\abs_diff[3][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[3][7]_i_11 
       (.I0(\slv_reg0_reg_n_0_[30] ),
        .I1(\slv_reg4_reg_n_0_[30] ),
        .I2(\slv_reg4_reg_n_0_[31] ),
        .I3(\slv_reg0_reg_n_0_[31] ),
        .O(\abs_diff[3][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[3][7]_i_12 
       (.I0(\slv_reg0_reg_n_0_[28] ),
        .I1(\slv_reg4_reg_n_0_[28] ),
        .I2(\slv_reg4_reg_n_0_[29] ),
        .I3(\slv_reg0_reg_n_0_[29] ),
        .O(\abs_diff[3][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[3][7]_i_13 
       (.I0(\slv_reg0_reg_n_0_[26] ),
        .I1(\slv_reg4_reg_n_0_[26] ),
        .I2(\slv_reg4_reg_n_0_[27] ),
        .I3(\slv_reg0_reg_n_0_[27] ),
        .O(\abs_diff[3][7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[3][7]_i_14 
       (.I0(\slv_reg0_reg_n_0_[24] ),
        .I1(\slv_reg4_reg_n_0_[24] ),
        .I2(\slv_reg4_reg_n_0_[25] ),
        .I3(\slv_reg0_reg_n_0_[25] ),
        .O(\abs_diff[3][7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[3][7]_i_15 
       (.I0(\slv_reg0_reg_n_0_[30] ),
        .I1(\slv_reg4_reg_n_0_[30] ),
        .I2(\slv_reg0_reg_n_0_[31] ),
        .I3(\slv_reg4_reg_n_0_[31] ),
        .O(\abs_diff[3][7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[3][7]_i_16 
       (.I0(\slv_reg0_reg_n_0_[28] ),
        .I1(\slv_reg4_reg_n_0_[28] ),
        .I2(\slv_reg0_reg_n_0_[29] ),
        .I3(\slv_reg4_reg_n_0_[29] ),
        .O(\abs_diff[3][7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[3][7]_i_17 
       (.I0(\slv_reg0_reg_n_0_[26] ),
        .I1(\slv_reg4_reg_n_0_[26] ),
        .I2(\slv_reg0_reg_n_0_[27] ),
        .I3(\slv_reg4_reg_n_0_[27] ),
        .O(\abs_diff[3][7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[3][7]_i_18 
       (.I0(\slv_reg0_reg_n_0_[24] ),
        .I1(\slv_reg4_reg_n_0_[24] ),
        .I2(\slv_reg0_reg_n_0_[25] ),
        .I3(\slv_reg4_reg_n_0_[25] ),
        .O(\abs_diff[3][7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[3][7]_i_2 
       (.I0(\slv_reg4_reg_n_0_[31] ),
        .I1(\slv_reg0_reg_n_0_[31] ),
        .I2(\abs_diff_reg[3][7]_i_10_n_0 ),
        .O(\abs_diff[3][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[3][7]_i_3 
       (.I0(\slv_reg4_reg_n_0_[30] ),
        .I1(\slv_reg0_reg_n_0_[30] ),
        .I2(\abs_diff_reg[3][7]_i_10_n_0 ),
        .O(\abs_diff[3][7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[3][7]_i_4 
       (.I0(\slv_reg4_reg_n_0_[29] ),
        .I1(\slv_reg0_reg_n_0_[29] ),
        .I2(\abs_diff_reg[3][7]_i_10_n_0 ),
        .O(\abs_diff[3][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[3][7]_i_5 
       (.I0(\slv_reg4_reg_n_0_[28] ),
        .I1(\slv_reg0_reg_n_0_[28] ),
        .I2(\abs_diff_reg[3][7]_i_10_n_0 ),
        .O(\abs_diff[3][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[3][7]_i_6 
       (.I0(\slv_reg4_reg_n_0_[31] ),
        .I1(\slv_reg0_reg_n_0_[31] ),
        .O(\abs_diff[3][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[3][7]_i_7 
       (.I0(\slv_reg4_reg_n_0_[30] ),
        .I1(\slv_reg0_reg_n_0_[30] ),
        .O(\abs_diff[3][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[3][7]_i_8 
       (.I0(\slv_reg4_reg_n_0_[29] ),
        .I1(\slv_reg0_reg_n_0_[29] ),
        .O(\abs_diff[3][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[3][7]_i_9 
       (.I0(\slv_reg4_reg_n_0_[28] ),
        .I1(\slv_reg0_reg_n_0_[28] ),
        .O(\abs_diff[3][7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[4][3]_i_2 
       (.I0(\slv_reg5_reg_n_0_[3] ),
        .I1(\slv_reg1_reg_n_0_[3] ),
        .I2(\abs_diff_reg[4][7]_i_10_n_0 ),
        .O(\abs_diff[4][3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[4][3]_i_3 
       (.I0(\slv_reg5_reg_n_0_[2] ),
        .I1(\slv_reg1_reg_n_0_[2] ),
        .I2(\abs_diff_reg[4][7]_i_10_n_0 ),
        .O(\abs_diff[4][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[4][3]_i_4 
       (.I0(\slv_reg5_reg_n_0_[1] ),
        .I1(\slv_reg1_reg_n_0_[1] ),
        .I2(\abs_diff_reg[4][7]_i_10_n_0 ),
        .O(\abs_diff[4][3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[4][3]_i_5 
       (.I0(\slv_reg5_reg_n_0_[0] ),
        .I1(\slv_reg1_reg_n_0_[0] ),
        .I2(\abs_diff_reg[4][7]_i_10_n_0 ),
        .O(\abs_diff[4][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[4][3]_i_6 
       (.I0(\slv_reg5_reg_n_0_[3] ),
        .I1(\slv_reg1_reg_n_0_[3] ),
        .O(\abs_diff[4][3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[4][3]_i_7 
       (.I0(\slv_reg5_reg_n_0_[2] ),
        .I1(\slv_reg1_reg_n_0_[2] ),
        .O(\abs_diff[4][3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[4][3]_i_8 
       (.I0(\slv_reg5_reg_n_0_[1] ),
        .I1(\slv_reg1_reg_n_0_[1] ),
        .O(\abs_diff[4][3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[4][3]_i_9 
       (.I0(\slv_reg5_reg_n_0_[0] ),
        .I1(\slv_reg1_reg_n_0_[0] ),
        .O(\abs_diff[4][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[4][7]_i_11 
       (.I0(\slv_reg1_reg_n_0_[6] ),
        .I1(\slv_reg5_reg_n_0_[6] ),
        .I2(\slv_reg5_reg_n_0_[7] ),
        .I3(\slv_reg1_reg_n_0_[7] ),
        .O(\abs_diff[4][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[4][7]_i_12 
       (.I0(\slv_reg1_reg_n_0_[4] ),
        .I1(\slv_reg5_reg_n_0_[4] ),
        .I2(\slv_reg5_reg_n_0_[5] ),
        .I3(\slv_reg1_reg_n_0_[5] ),
        .O(\abs_diff[4][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[4][7]_i_13 
       (.I0(\slv_reg1_reg_n_0_[2] ),
        .I1(\slv_reg5_reg_n_0_[2] ),
        .I2(\slv_reg5_reg_n_0_[3] ),
        .I3(\slv_reg1_reg_n_0_[3] ),
        .O(\abs_diff[4][7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[4][7]_i_14 
       (.I0(\slv_reg1_reg_n_0_[0] ),
        .I1(\slv_reg5_reg_n_0_[0] ),
        .I2(\slv_reg5_reg_n_0_[1] ),
        .I3(\slv_reg1_reg_n_0_[1] ),
        .O(\abs_diff[4][7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[4][7]_i_15 
       (.I0(\slv_reg1_reg_n_0_[6] ),
        .I1(\slv_reg5_reg_n_0_[6] ),
        .I2(\slv_reg1_reg_n_0_[7] ),
        .I3(\slv_reg5_reg_n_0_[7] ),
        .O(\abs_diff[4][7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[4][7]_i_16 
       (.I0(\slv_reg1_reg_n_0_[4] ),
        .I1(\slv_reg5_reg_n_0_[4] ),
        .I2(\slv_reg1_reg_n_0_[5] ),
        .I3(\slv_reg5_reg_n_0_[5] ),
        .O(\abs_diff[4][7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[4][7]_i_17 
       (.I0(\slv_reg1_reg_n_0_[2] ),
        .I1(\slv_reg5_reg_n_0_[2] ),
        .I2(\slv_reg1_reg_n_0_[3] ),
        .I3(\slv_reg5_reg_n_0_[3] ),
        .O(\abs_diff[4][7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[4][7]_i_18 
       (.I0(\slv_reg1_reg_n_0_[0] ),
        .I1(\slv_reg5_reg_n_0_[0] ),
        .I2(\slv_reg1_reg_n_0_[1] ),
        .I3(\slv_reg5_reg_n_0_[1] ),
        .O(\abs_diff[4][7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[4][7]_i_2 
       (.I0(\slv_reg5_reg_n_0_[7] ),
        .I1(\slv_reg1_reg_n_0_[7] ),
        .I2(\abs_diff_reg[4][7]_i_10_n_0 ),
        .O(\abs_diff[4][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[4][7]_i_3 
       (.I0(\slv_reg5_reg_n_0_[6] ),
        .I1(\slv_reg1_reg_n_0_[6] ),
        .I2(\abs_diff_reg[4][7]_i_10_n_0 ),
        .O(\abs_diff[4][7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[4][7]_i_4 
       (.I0(\slv_reg5_reg_n_0_[5] ),
        .I1(\slv_reg1_reg_n_0_[5] ),
        .I2(\abs_diff_reg[4][7]_i_10_n_0 ),
        .O(\abs_diff[4][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[4][7]_i_5 
       (.I0(\slv_reg5_reg_n_0_[4] ),
        .I1(\slv_reg1_reg_n_0_[4] ),
        .I2(\abs_diff_reg[4][7]_i_10_n_0 ),
        .O(\abs_diff[4][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[4][7]_i_6 
       (.I0(\slv_reg5_reg_n_0_[7] ),
        .I1(\slv_reg1_reg_n_0_[7] ),
        .O(\abs_diff[4][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[4][7]_i_7 
       (.I0(\slv_reg5_reg_n_0_[6] ),
        .I1(\slv_reg1_reg_n_0_[6] ),
        .O(\abs_diff[4][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[4][7]_i_8 
       (.I0(\slv_reg5_reg_n_0_[5] ),
        .I1(\slv_reg1_reg_n_0_[5] ),
        .O(\abs_diff[4][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[4][7]_i_9 
       (.I0(\slv_reg5_reg_n_0_[4] ),
        .I1(\slv_reg1_reg_n_0_[4] ),
        .O(\abs_diff[4][7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[5][3]_i_2 
       (.I0(\slv_reg5_reg_n_0_[11] ),
        .I1(\slv_reg1_reg_n_0_[11] ),
        .I2(\abs_diff_reg[5][7]_i_10_n_0 ),
        .O(\abs_diff[5][3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[5][3]_i_3 
       (.I0(\slv_reg5_reg_n_0_[10] ),
        .I1(\slv_reg1_reg_n_0_[10] ),
        .I2(\abs_diff_reg[5][7]_i_10_n_0 ),
        .O(\abs_diff[5][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[5][3]_i_4 
       (.I0(\slv_reg5_reg_n_0_[9] ),
        .I1(\slv_reg1_reg_n_0_[9] ),
        .I2(\abs_diff_reg[5][7]_i_10_n_0 ),
        .O(\abs_diff[5][3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[5][3]_i_5 
       (.I0(\slv_reg5_reg_n_0_[8] ),
        .I1(\slv_reg1_reg_n_0_[8] ),
        .I2(\abs_diff_reg[5][7]_i_10_n_0 ),
        .O(\abs_diff[5][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[5][3]_i_6 
       (.I0(\slv_reg5_reg_n_0_[11] ),
        .I1(\slv_reg1_reg_n_0_[11] ),
        .O(\abs_diff[5][3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[5][3]_i_7 
       (.I0(\slv_reg5_reg_n_0_[10] ),
        .I1(\slv_reg1_reg_n_0_[10] ),
        .O(\abs_diff[5][3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[5][3]_i_8 
       (.I0(\slv_reg5_reg_n_0_[9] ),
        .I1(\slv_reg1_reg_n_0_[9] ),
        .O(\abs_diff[5][3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[5][3]_i_9 
       (.I0(\slv_reg5_reg_n_0_[8] ),
        .I1(\slv_reg1_reg_n_0_[8] ),
        .O(\abs_diff[5][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[5][7]_i_11 
       (.I0(\slv_reg1_reg_n_0_[14] ),
        .I1(\slv_reg5_reg_n_0_[14] ),
        .I2(\slv_reg5_reg_n_0_[15] ),
        .I3(\slv_reg1_reg_n_0_[15] ),
        .O(\abs_diff[5][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[5][7]_i_12 
       (.I0(\slv_reg1_reg_n_0_[12] ),
        .I1(\slv_reg5_reg_n_0_[12] ),
        .I2(\slv_reg5_reg_n_0_[13] ),
        .I3(\slv_reg1_reg_n_0_[13] ),
        .O(\abs_diff[5][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[5][7]_i_13 
       (.I0(\slv_reg1_reg_n_0_[10] ),
        .I1(\slv_reg5_reg_n_0_[10] ),
        .I2(\slv_reg5_reg_n_0_[11] ),
        .I3(\slv_reg1_reg_n_0_[11] ),
        .O(\abs_diff[5][7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[5][7]_i_14 
       (.I0(\slv_reg1_reg_n_0_[8] ),
        .I1(\slv_reg5_reg_n_0_[8] ),
        .I2(\slv_reg5_reg_n_0_[9] ),
        .I3(\slv_reg1_reg_n_0_[9] ),
        .O(\abs_diff[5][7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[5][7]_i_15 
       (.I0(\slv_reg1_reg_n_0_[14] ),
        .I1(\slv_reg5_reg_n_0_[14] ),
        .I2(\slv_reg1_reg_n_0_[15] ),
        .I3(\slv_reg5_reg_n_0_[15] ),
        .O(\abs_diff[5][7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[5][7]_i_16 
       (.I0(\slv_reg1_reg_n_0_[12] ),
        .I1(\slv_reg5_reg_n_0_[12] ),
        .I2(\slv_reg1_reg_n_0_[13] ),
        .I3(\slv_reg5_reg_n_0_[13] ),
        .O(\abs_diff[5][7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[5][7]_i_17 
       (.I0(\slv_reg1_reg_n_0_[10] ),
        .I1(\slv_reg5_reg_n_0_[10] ),
        .I2(\slv_reg1_reg_n_0_[11] ),
        .I3(\slv_reg5_reg_n_0_[11] ),
        .O(\abs_diff[5][7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[5][7]_i_18 
       (.I0(\slv_reg1_reg_n_0_[8] ),
        .I1(\slv_reg5_reg_n_0_[8] ),
        .I2(\slv_reg1_reg_n_0_[9] ),
        .I3(\slv_reg5_reg_n_0_[9] ),
        .O(\abs_diff[5][7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[5][7]_i_2 
       (.I0(\slv_reg5_reg_n_0_[15] ),
        .I1(\slv_reg1_reg_n_0_[15] ),
        .I2(\abs_diff_reg[5][7]_i_10_n_0 ),
        .O(\abs_diff[5][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[5][7]_i_3 
       (.I0(\slv_reg5_reg_n_0_[14] ),
        .I1(\slv_reg1_reg_n_0_[14] ),
        .I2(\abs_diff_reg[5][7]_i_10_n_0 ),
        .O(\abs_diff[5][7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[5][7]_i_4 
       (.I0(\slv_reg5_reg_n_0_[13] ),
        .I1(\slv_reg1_reg_n_0_[13] ),
        .I2(\abs_diff_reg[5][7]_i_10_n_0 ),
        .O(\abs_diff[5][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[5][7]_i_5 
       (.I0(\slv_reg5_reg_n_0_[12] ),
        .I1(\slv_reg1_reg_n_0_[12] ),
        .I2(\abs_diff_reg[5][7]_i_10_n_0 ),
        .O(\abs_diff[5][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[5][7]_i_6 
       (.I0(\slv_reg5_reg_n_0_[15] ),
        .I1(\slv_reg1_reg_n_0_[15] ),
        .O(\abs_diff[5][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[5][7]_i_7 
       (.I0(\slv_reg5_reg_n_0_[14] ),
        .I1(\slv_reg1_reg_n_0_[14] ),
        .O(\abs_diff[5][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[5][7]_i_8 
       (.I0(\slv_reg5_reg_n_0_[13] ),
        .I1(\slv_reg1_reg_n_0_[13] ),
        .O(\abs_diff[5][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[5][7]_i_9 
       (.I0(\slv_reg5_reg_n_0_[12] ),
        .I1(\slv_reg1_reg_n_0_[12] ),
        .O(\abs_diff[5][7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[6][3]_i_2 
       (.I0(\slv_reg5_reg_n_0_[19] ),
        .I1(\slv_reg1_reg_n_0_[19] ),
        .I2(\abs_diff_reg[6][7]_i_10_n_0 ),
        .O(\abs_diff[6][3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[6][3]_i_3 
       (.I0(\slv_reg5_reg_n_0_[18] ),
        .I1(\slv_reg1_reg_n_0_[18] ),
        .I2(\abs_diff_reg[6][7]_i_10_n_0 ),
        .O(\abs_diff[6][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[6][3]_i_4 
       (.I0(\slv_reg5_reg_n_0_[17] ),
        .I1(\slv_reg1_reg_n_0_[17] ),
        .I2(\abs_diff_reg[6][7]_i_10_n_0 ),
        .O(\abs_diff[6][3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[6][3]_i_5 
       (.I0(\slv_reg5_reg_n_0_[16] ),
        .I1(\slv_reg1_reg_n_0_[16] ),
        .I2(\abs_diff_reg[6][7]_i_10_n_0 ),
        .O(\abs_diff[6][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[6][3]_i_6 
       (.I0(\slv_reg5_reg_n_0_[19] ),
        .I1(\slv_reg1_reg_n_0_[19] ),
        .O(\abs_diff[6][3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[6][3]_i_7 
       (.I0(\slv_reg5_reg_n_0_[18] ),
        .I1(\slv_reg1_reg_n_0_[18] ),
        .O(\abs_diff[6][3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[6][3]_i_8 
       (.I0(\slv_reg5_reg_n_0_[17] ),
        .I1(\slv_reg1_reg_n_0_[17] ),
        .O(\abs_diff[6][3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[6][3]_i_9 
       (.I0(\slv_reg5_reg_n_0_[16] ),
        .I1(\slv_reg1_reg_n_0_[16] ),
        .O(\abs_diff[6][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[6][7]_i_11 
       (.I0(\slv_reg1_reg_n_0_[22] ),
        .I1(\slv_reg5_reg_n_0_[22] ),
        .I2(\slv_reg5_reg_n_0_[23] ),
        .I3(\slv_reg1_reg_n_0_[23] ),
        .O(\abs_diff[6][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[6][7]_i_12 
       (.I0(\slv_reg1_reg_n_0_[20] ),
        .I1(\slv_reg5_reg_n_0_[20] ),
        .I2(\slv_reg5_reg_n_0_[21] ),
        .I3(\slv_reg1_reg_n_0_[21] ),
        .O(\abs_diff[6][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[6][7]_i_13 
       (.I0(\slv_reg1_reg_n_0_[18] ),
        .I1(\slv_reg5_reg_n_0_[18] ),
        .I2(\slv_reg5_reg_n_0_[19] ),
        .I3(\slv_reg1_reg_n_0_[19] ),
        .O(\abs_diff[6][7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[6][7]_i_14 
       (.I0(\slv_reg1_reg_n_0_[16] ),
        .I1(\slv_reg5_reg_n_0_[16] ),
        .I2(\slv_reg5_reg_n_0_[17] ),
        .I3(\slv_reg1_reg_n_0_[17] ),
        .O(\abs_diff[6][7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[6][7]_i_15 
       (.I0(\slv_reg1_reg_n_0_[22] ),
        .I1(\slv_reg5_reg_n_0_[22] ),
        .I2(\slv_reg1_reg_n_0_[23] ),
        .I3(\slv_reg5_reg_n_0_[23] ),
        .O(\abs_diff[6][7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[6][7]_i_16 
       (.I0(\slv_reg1_reg_n_0_[20] ),
        .I1(\slv_reg5_reg_n_0_[20] ),
        .I2(\slv_reg1_reg_n_0_[21] ),
        .I3(\slv_reg5_reg_n_0_[21] ),
        .O(\abs_diff[6][7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[6][7]_i_17 
       (.I0(\slv_reg1_reg_n_0_[18] ),
        .I1(\slv_reg5_reg_n_0_[18] ),
        .I2(\slv_reg1_reg_n_0_[19] ),
        .I3(\slv_reg5_reg_n_0_[19] ),
        .O(\abs_diff[6][7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[6][7]_i_18 
       (.I0(\slv_reg1_reg_n_0_[16] ),
        .I1(\slv_reg5_reg_n_0_[16] ),
        .I2(\slv_reg1_reg_n_0_[17] ),
        .I3(\slv_reg5_reg_n_0_[17] ),
        .O(\abs_diff[6][7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[6][7]_i_2 
       (.I0(\slv_reg5_reg_n_0_[23] ),
        .I1(\slv_reg1_reg_n_0_[23] ),
        .I2(\abs_diff_reg[6][7]_i_10_n_0 ),
        .O(\abs_diff[6][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[6][7]_i_3 
       (.I0(\slv_reg5_reg_n_0_[22] ),
        .I1(\slv_reg1_reg_n_0_[22] ),
        .I2(\abs_diff_reg[6][7]_i_10_n_0 ),
        .O(\abs_diff[6][7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[6][7]_i_4 
       (.I0(\slv_reg5_reg_n_0_[21] ),
        .I1(\slv_reg1_reg_n_0_[21] ),
        .I2(\abs_diff_reg[6][7]_i_10_n_0 ),
        .O(\abs_diff[6][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[6][7]_i_5 
       (.I0(\slv_reg5_reg_n_0_[20] ),
        .I1(\slv_reg1_reg_n_0_[20] ),
        .I2(\abs_diff_reg[6][7]_i_10_n_0 ),
        .O(\abs_diff[6][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[6][7]_i_6 
       (.I0(\slv_reg5_reg_n_0_[23] ),
        .I1(\slv_reg1_reg_n_0_[23] ),
        .O(\abs_diff[6][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[6][7]_i_7 
       (.I0(\slv_reg5_reg_n_0_[22] ),
        .I1(\slv_reg1_reg_n_0_[22] ),
        .O(\abs_diff[6][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[6][7]_i_8 
       (.I0(\slv_reg5_reg_n_0_[21] ),
        .I1(\slv_reg1_reg_n_0_[21] ),
        .O(\abs_diff[6][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[6][7]_i_9 
       (.I0(\slv_reg5_reg_n_0_[20] ),
        .I1(\slv_reg1_reg_n_0_[20] ),
        .O(\abs_diff[6][7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[7][3]_i_2 
       (.I0(\slv_reg5_reg_n_0_[27] ),
        .I1(\slv_reg1_reg_n_0_[27] ),
        .I2(\abs_diff_reg[7][7]_i_10_n_0 ),
        .O(\abs_diff[7][3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[7][3]_i_3 
       (.I0(\slv_reg5_reg_n_0_[26] ),
        .I1(\slv_reg1_reg_n_0_[26] ),
        .I2(\abs_diff_reg[7][7]_i_10_n_0 ),
        .O(\abs_diff[7][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[7][3]_i_4 
       (.I0(\slv_reg5_reg_n_0_[25] ),
        .I1(\slv_reg1_reg_n_0_[25] ),
        .I2(\abs_diff_reg[7][7]_i_10_n_0 ),
        .O(\abs_diff[7][3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[7][3]_i_5 
       (.I0(\slv_reg5_reg_n_0_[24] ),
        .I1(\slv_reg1_reg_n_0_[24] ),
        .I2(\abs_diff_reg[7][7]_i_10_n_0 ),
        .O(\abs_diff[7][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[7][3]_i_6 
       (.I0(\slv_reg5_reg_n_0_[27] ),
        .I1(\slv_reg1_reg_n_0_[27] ),
        .O(\abs_diff[7][3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[7][3]_i_7 
       (.I0(\slv_reg5_reg_n_0_[26] ),
        .I1(\slv_reg1_reg_n_0_[26] ),
        .O(\abs_diff[7][3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[7][3]_i_8 
       (.I0(\slv_reg5_reg_n_0_[25] ),
        .I1(\slv_reg1_reg_n_0_[25] ),
        .O(\abs_diff[7][3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[7][3]_i_9 
       (.I0(\slv_reg5_reg_n_0_[24] ),
        .I1(\slv_reg1_reg_n_0_[24] ),
        .O(\abs_diff[7][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[7][7]_i_11 
       (.I0(\slv_reg1_reg_n_0_[30] ),
        .I1(\slv_reg5_reg_n_0_[30] ),
        .I2(\slv_reg5_reg_n_0_[31] ),
        .I3(\slv_reg1_reg_n_0_[31] ),
        .O(\abs_diff[7][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[7][7]_i_12 
       (.I0(\slv_reg1_reg_n_0_[28] ),
        .I1(\slv_reg5_reg_n_0_[28] ),
        .I2(\slv_reg5_reg_n_0_[29] ),
        .I3(\slv_reg1_reg_n_0_[29] ),
        .O(\abs_diff[7][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[7][7]_i_13 
       (.I0(\slv_reg1_reg_n_0_[26] ),
        .I1(\slv_reg5_reg_n_0_[26] ),
        .I2(\slv_reg5_reg_n_0_[27] ),
        .I3(\slv_reg1_reg_n_0_[27] ),
        .O(\abs_diff[7][7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[7][7]_i_14 
       (.I0(\slv_reg1_reg_n_0_[24] ),
        .I1(\slv_reg5_reg_n_0_[24] ),
        .I2(\slv_reg5_reg_n_0_[25] ),
        .I3(\slv_reg1_reg_n_0_[25] ),
        .O(\abs_diff[7][7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[7][7]_i_15 
       (.I0(\slv_reg1_reg_n_0_[30] ),
        .I1(\slv_reg5_reg_n_0_[30] ),
        .I2(\slv_reg1_reg_n_0_[31] ),
        .I3(\slv_reg5_reg_n_0_[31] ),
        .O(\abs_diff[7][7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[7][7]_i_16 
       (.I0(\slv_reg1_reg_n_0_[28] ),
        .I1(\slv_reg5_reg_n_0_[28] ),
        .I2(\slv_reg1_reg_n_0_[29] ),
        .I3(\slv_reg5_reg_n_0_[29] ),
        .O(\abs_diff[7][7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[7][7]_i_17 
       (.I0(\slv_reg1_reg_n_0_[26] ),
        .I1(\slv_reg5_reg_n_0_[26] ),
        .I2(\slv_reg1_reg_n_0_[27] ),
        .I3(\slv_reg5_reg_n_0_[27] ),
        .O(\abs_diff[7][7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[7][7]_i_18 
       (.I0(\slv_reg1_reg_n_0_[24] ),
        .I1(\slv_reg5_reg_n_0_[24] ),
        .I2(\slv_reg1_reg_n_0_[25] ),
        .I3(\slv_reg5_reg_n_0_[25] ),
        .O(\abs_diff[7][7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[7][7]_i_2 
       (.I0(\slv_reg5_reg_n_0_[31] ),
        .I1(\slv_reg1_reg_n_0_[31] ),
        .I2(\abs_diff_reg[7][7]_i_10_n_0 ),
        .O(\abs_diff[7][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[7][7]_i_3 
       (.I0(\slv_reg5_reg_n_0_[30] ),
        .I1(\slv_reg1_reg_n_0_[30] ),
        .I2(\abs_diff_reg[7][7]_i_10_n_0 ),
        .O(\abs_diff[7][7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[7][7]_i_4 
       (.I0(\slv_reg5_reg_n_0_[29] ),
        .I1(\slv_reg1_reg_n_0_[29] ),
        .I2(\abs_diff_reg[7][7]_i_10_n_0 ),
        .O(\abs_diff[7][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[7][7]_i_5 
       (.I0(\slv_reg5_reg_n_0_[28] ),
        .I1(\slv_reg1_reg_n_0_[28] ),
        .I2(\abs_diff_reg[7][7]_i_10_n_0 ),
        .O(\abs_diff[7][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[7][7]_i_6 
       (.I0(\slv_reg5_reg_n_0_[31] ),
        .I1(\slv_reg1_reg_n_0_[31] ),
        .O(\abs_diff[7][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[7][7]_i_7 
       (.I0(\slv_reg5_reg_n_0_[30] ),
        .I1(\slv_reg1_reg_n_0_[30] ),
        .O(\abs_diff[7][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[7][7]_i_8 
       (.I0(\slv_reg5_reg_n_0_[29] ),
        .I1(\slv_reg1_reg_n_0_[29] ),
        .O(\abs_diff[7][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[7][7]_i_9 
       (.I0(\slv_reg5_reg_n_0_[28] ),
        .I1(\slv_reg1_reg_n_0_[28] ),
        .O(\abs_diff[7][7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[8][3]_i_2 
       (.I0(\slv_reg6_reg_n_0_[3] ),
        .I1(\slv_reg2_reg_n_0_[3] ),
        .I2(\abs_diff_reg[8][7]_i_10_n_0 ),
        .O(\abs_diff[8][3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[8][3]_i_3 
       (.I0(\slv_reg6_reg_n_0_[2] ),
        .I1(\slv_reg2_reg_n_0_[2] ),
        .I2(\abs_diff_reg[8][7]_i_10_n_0 ),
        .O(\abs_diff[8][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[8][3]_i_4 
       (.I0(\slv_reg6_reg_n_0_[1] ),
        .I1(\slv_reg2_reg_n_0_[1] ),
        .I2(\abs_diff_reg[8][7]_i_10_n_0 ),
        .O(\abs_diff[8][3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[8][3]_i_5 
       (.I0(\slv_reg6_reg_n_0_[0] ),
        .I1(\slv_reg2_reg_n_0_[0] ),
        .I2(\abs_diff_reg[8][7]_i_10_n_0 ),
        .O(\abs_diff[8][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[8][3]_i_6 
       (.I0(\slv_reg6_reg_n_0_[3] ),
        .I1(\slv_reg2_reg_n_0_[3] ),
        .O(\abs_diff[8][3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[8][3]_i_7 
       (.I0(\slv_reg6_reg_n_0_[2] ),
        .I1(\slv_reg2_reg_n_0_[2] ),
        .O(\abs_diff[8][3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[8][3]_i_8 
       (.I0(\slv_reg6_reg_n_0_[1] ),
        .I1(\slv_reg2_reg_n_0_[1] ),
        .O(\abs_diff[8][3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[8][3]_i_9 
       (.I0(\slv_reg6_reg_n_0_[0] ),
        .I1(\slv_reg2_reg_n_0_[0] ),
        .O(\abs_diff[8][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[8][7]_i_11 
       (.I0(\slv_reg2_reg_n_0_[6] ),
        .I1(\slv_reg6_reg_n_0_[6] ),
        .I2(\slv_reg6_reg_n_0_[7] ),
        .I3(\slv_reg2_reg_n_0_[7] ),
        .O(\abs_diff[8][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[8][7]_i_12 
       (.I0(\slv_reg2_reg_n_0_[4] ),
        .I1(\slv_reg6_reg_n_0_[4] ),
        .I2(\slv_reg6_reg_n_0_[5] ),
        .I3(\slv_reg2_reg_n_0_[5] ),
        .O(\abs_diff[8][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[8][7]_i_13 
       (.I0(\slv_reg2_reg_n_0_[2] ),
        .I1(\slv_reg6_reg_n_0_[2] ),
        .I2(\slv_reg6_reg_n_0_[3] ),
        .I3(\slv_reg2_reg_n_0_[3] ),
        .O(\abs_diff[8][7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[8][7]_i_14 
       (.I0(\slv_reg2_reg_n_0_[0] ),
        .I1(\slv_reg6_reg_n_0_[0] ),
        .I2(\slv_reg6_reg_n_0_[1] ),
        .I3(\slv_reg2_reg_n_0_[1] ),
        .O(\abs_diff[8][7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[8][7]_i_15 
       (.I0(\slv_reg2_reg_n_0_[6] ),
        .I1(\slv_reg6_reg_n_0_[6] ),
        .I2(\slv_reg2_reg_n_0_[7] ),
        .I3(\slv_reg6_reg_n_0_[7] ),
        .O(\abs_diff[8][7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[8][7]_i_16 
       (.I0(\slv_reg2_reg_n_0_[4] ),
        .I1(\slv_reg6_reg_n_0_[4] ),
        .I2(\slv_reg2_reg_n_0_[5] ),
        .I3(\slv_reg6_reg_n_0_[5] ),
        .O(\abs_diff[8][7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[8][7]_i_17 
       (.I0(\slv_reg2_reg_n_0_[2] ),
        .I1(\slv_reg6_reg_n_0_[2] ),
        .I2(\slv_reg2_reg_n_0_[3] ),
        .I3(\slv_reg6_reg_n_0_[3] ),
        .O(\abs_diff[8][7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[8][7]_i_18 
       (.I0(\slv_reg2_reg_n_0_[0] ),
        .I1(\slv_reg6_reg_n_0_[0] ),
        .I2(\slv_reg2_reg_n_0_[1] ),
        .I3(\slv_reg6_reg_n_0_[1] ),
        .O(\abs_diff[8][7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[8][7]_i_2 
       (.I0(\slv_reg6_reg_n_0_[7] ),
        .I1(\slv_reg2_reg_n_0_[7] ),
        .I2(\abs_diff_reg[8][7]_i_10_n_0 ),
        .O(\abs_diff[8][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[8][7]_i_3 
       (.I0(\slv_reg6_reg_n_0_[6] ),
        .I1(\slv_reg2_reg_n_0_[6] ),
        .I2(\abs_diff_reg[8][7]_i_10_n_0 ),
        .O(\abs_diff[8][7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[8][7]_i_4 
       (.I0(\slv_reg6_reg_n_0_[5] ),
        .I1(\slv_reg2_reg_n_0_[5] ),
        .I2(\abs_diff_reg[8][7]_i_10_n_0 ),
        .O(\abs_diff[8][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[8][7]_i_5 
       (.I0(\slv_reg6_reg_n_0_[4] ),
        .I1(\slv_reg2_reg_n_0_[4] ),
        .I2(\abs_diff_reg[8][7]_i_10_n_0 ),
        .O(\abs_diff[8][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[8][7]_i_6 
       (.I0(\slv_reg6_reg_n_0_[7] ),
        .I1(\slv_reg2_reg_n_0_[7] ),
        .O(\abs_diff[8][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[8][7]_i_7 
       (.I0(\slv_reg6_reg_n_0_[6] ),
        .I1(\slv_reg2_reg_n_0_[6] ),
        .O(\abs_diff[8][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[8][7]_i_8 
       (.I0(\slv_reg6_reg_n_0_[5] ),
        .I1(\slv_reg2_reg_n_0_[5] ),
        .O(\abs_diff[8][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[8][7]_i_9 
       (.I0(\slv_reg6_reg_n_0_[4] ),
        .I1(\slv_reg2_reg_n_0_[4] ),
        .O(\abs_diff[8][7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[9][3]_i_2 
       (.I0(\slv_reg6_reg_n_0_[11] ),
        .I1(\slv_reg2_reg_n_0_[11] ),
        .I2(\abs_diff_reg[9][7]_i_10_n_0 ),
        .O(\abs_diff[9][3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[9][3]_i_3 
       (.I0(\slv_reg6_reg_n_0_[10] ),
        .I1(\slv_reg2_reg_n_0_[10] ),
        .I2(\abs_diff_reg[9][7]_i_10_n_0 ),
        .O(\abs_diff[9][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[9][3]_i_4 
       (.I0(\slv_reg6_reg_n_0_[9] ),
        .I1(\slv_reg2_reg_n_0_[9] ),
        .I2(\abs_diff_reg[9][7]_i_10_n_0 ),
        .O(\abs_diff[9][3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[9][3]_i_5 
       (.I0(\slv_reg6_reg_n_0_[8] ),
        .I1(\slv_reg2_reg_n_0_[8] ),
        .I2(\abs_diff_reg[9][7]_i_10_n_0 ),
        .O(\abs_diff[9][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[9][3]_i_6 
       (.I0(\slv_reg6_reg_n_0_[11] ),
        .I1(\slv_reg2_reg_n_0_[11] ),
        .O(\abs_diff[9][3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[9][3]_i_7 
       (.I0(\slv_reg6_reg_n_0_[10] ),
        .I1(\slv_reg2_reg_n_0_[10] ),
        .O(\abs_diff[9][3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[9][3]_i_8 
       (.I0(\slv_reg6_reg_n_0_[9] ),
        .I1(\slv_reg2_reg_n_0_[9] ),
        .O(\abs_diff[9][3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[9][3]_i_9 
       (.I0(\slv_reg6_reg_n_0_[8] ),
        .I1(\slv_reg2_reg_n_0_[8] ),
        .O(\abs_diff[9][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[9][7]_i_11 
       (.I0(\slv_reg2_reg_n_0_[14] ),
        .I1(\slv_reg6_reg_n_0_[14] ),
        .I2(\slv_reg6_reg_n_0_[15] ),
        .I3(\slv_reg2_reg_n_0_[15] ),
        .O(\abs_diff[9][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[9][7]_i_12 
       (.I0(\slv_reg2_reg_n_0_[12] ),
        .I1(\slv_reg6_reg_n_0_[12] ),
        .I2(\slv_reg6_reg_n_0_[13] ),
        .I3(\slv_reg2_reg_n_0_[13] ),
        .O(\abs_diff[9][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[9][7]_i_13 
       (.I0(\slv_reg2_reg_n_0_[10] ),
        .I1(\slv_reg6_reg_n_0_[10] ),
        .I2(\slv_reg6_reg_n_0_[11] ),
        .I3(\slv_reg2_reg_n_0_[11] ),
        .O(\abs_diff[9][7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \abs_diff[9][7]_i_14 
       (.I0(\slv_reg2_reg_n_0_[8] ),
        .I1(\slv_reg6_reg_n_0_[8] ),
        .I2(\slv_reg6_reg_n_0_[9] ),
        .I3(\slv_reg2_reg_n_0_[9] ),
        .O(\abs_diff[9][7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[9][7]_i_15 
       (.I0(\slv_reg2_reg_n_0_[14] ),
        .I1(\slv_reg6_reg_n_0_[14] ),
        .I2(\slv_reg2_reg_n_0_[15] ),
        .I3(\slv_reg6_reg_n_0_[15] ),
        .O(\abs_diff[9][7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[9][7]_i_16 
       (.I0(\slv_reg2_reg_n_0_[12] ),
        .I1(\slv_reg6_reg_n_0_[12] ),
        .I2(\slv_reg2_reg_n_0_[13] ),
        .I3(\slv_reg6_reg_n_0_[13] ),
        .O(\abs_diff[9][7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[9][7]_i_17 
       (.I0(\slv_reg2_reg_n_0_[10] ),
        .I1(\slv_reg6_reg_n_0_[10] ),
        .I2(\slv_reg2_reg_n_0_[11] ),
        .I3(\slv_reg6_reg_n_0_[11] ),
        .O(\abs_diff[9][7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \abs_diff[9][7]_i_18 
       (.I0(\slv_reg2_reg_n_0_[8] ),
        .I1(\slv_reg6_reg_n_0_[8] ),
        .I2(\slv_reg2_reg_n_0_[9] ),
        .I3(\slv_reg6_reg_n_0_[9] ),
        .O(\abs_diff[9][7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[9][7]_i_2 
       (.I0(\slv_reg6_reg_n_0_[15] ),
        .I1(\slv_reg2_reg_n_0_[15] ),
        .I2(\abs_diff_reg[9][7]_i_10_n_0 ),
        .O(\abs_diff[9][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[9][7]_i_3 
       (.I0(\slv_reg6_reg_n_0_[14] ),
        .I1(\slv_reg2_reg_n_0_[14] ),
        .I2(\abs_diff_reg[9][7]_i_10_n_0 ),
        .O(\abs_diff[9][7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[9][7]_i_4 
       (.I0(\slv_reg6_reg_n_0_[13] ),
        .I1(\slv_reg2_reg_n_0_[13] ),
        .I2(\abs_diff_reg[9][7]_i_10_n_0 ),
        .O(\abs_diff[9][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \abs_diff[9][7]_i_5 
       (.I0(\slv_reg6_reg_n_0_[12] ),
        .I1(\slv_reg2_reg_n_0_[12] ),
        .I2(\abs_diff_reg[9][7]_i_10_n_0 ),
        .O(\abs_diff[9][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[9][7]_i_6 
       (.I0(\slv_reg6_reg_n_0_[15] ),
        .I1(\slv_reg2_reg_n_0_[15] ),
        .O(\abs_diff[9][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[9][7]_i_7 
       (.I0(\slv_reg6_reg_n_0_[14] ),
        .I1(\slv_reg2_reg_n_0_[14] ),
        .O(\abs_diff[9][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[9][7]_i_8 
       (.I0(\slv_reg6_reg_n_0_[13] ),
        .I1(\slv_reg2_reg_n_0_[13] ),
        .O(\abs_diff[9][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abs_diff[9][7]_i_9 
       (.I0(\slv_reg6_reg_n_0_[12] ),
        .I1(\slv_reg2_reg_n_0_[12] ),
        .O(\abs_diff[9][7]_i_9_n_0 ));
  FDRE \abs_diff_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[0][3]_i_1_n_7 ),
        .Q(\abs_diff_reg[0]_14 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[0][3]_i_1_n_6 ),
        .Q(\abs_diff_reg[0]_14 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[0][3]_i_1_n_5 ),
        .Q(\abs_diff_reg[0]_14 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[0][3]_i_1_n_4 ),
        .Q(\abs_diff_reg[0]_14 [3]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[0][3]_i_1 
       (.CI(1'b0),
        .CO({\abs_diff_reg[0][3]_i_1_n_0 ,\abs_diff_reg[0][3]_i_1_n_1 ,\abs_diff_reg[0][3]_i_1_n_2 ,\abs_diff_reg[0][3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\abs_diff[0][3]_i_2_n_0 ,\abs_diff[0][3]_i_3_n_0 ,\abs_diff[0][3]_i_4_n_0 ,\abs_diff[0][3]_i_5_n_0 }),
        .O({\abs_diff_reg[0][3]_i_1_n_4 ,\abs_diff_reg[0][3]_i_1_n_5 ,\abs_diff_reg[0][3]_i_1_n_6 ,\abs_diff_reg[0][3]_i_1_n_7 }),
        .S({\abs_diff[0][3]_i_6_n_0 ,\abs_diff[0][3]_i_7_n_0 ,\abs_diff[0][3]_i_8_n_0 ,\abs_diff[0][3]_i_9_n_0 }));
  FDRE \abs_diff_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[0][7]_i_1_n_7 ),
        .Q(\abs_diff_reg[0]_14 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[0][7]_i_1_n_6 ),
        .Q(\abs_diff_reg[0]_14 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[0][7]_i_1_n_5 ),
        .Q(\abs_diff_reg[0]_14 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[0][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[0][7]_i_1_n_4 ),
        .Q(\abs_diff_reg[0]_14 [7]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[0][7]_i_1 
       (.CI(\abs_diff_reg[0][3]_i_1_n_0 ),
        .CO({\abs_diff_reg[0][7]_i_1_n_0 ,\abs_diff_reg[0][7]_i_1_n_1 ,\abs_diff_reg[0][7]_i_1_n_2 ,\abs_diff_reg[0][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[0][7]_i_2_n_0 ,\abs_diff[0][7]_i_3_n_0 ,\abs_diff[0][7]_i_4_n_0 ,\abs_diff[0][7]_i_5_n_0 }),
        .O({\abs_diff_reg[0][7]_i_1_n_4 ,\abs_diff_reg[0][7]_i_1_n_5 ,\abs_diff_reg[0][7]_i_1_n_6 ,\abs_diff_reg[0][7]_i_1_n_7 }),
        .S({\abs_diff[0][7]_i_6_n_0 ,\abs_diff[0][7]_i_7_n_0 ,\abs_diff[0][7]_i_8_n_0 ,\abs_diff[0][7]_i_9_n_0 }));
  CARRY4 \abs_diff_reg[0][7]_i_10 
       (.CI(1'b0),
        .CO({\abs_diff_reg[0][7]_i_10_n_0 ,\abs_diff_reg[0][7]_i_10_n_1 ,\abs_diff_reg[0][7]_i_10_n_2 ,\abs_diff_reg[0][7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[0][7]_i_11_n_0 ,\abs_diff[0][7]_i_12_n_0 ,\abs_diff[0][7]_i_13_n_0 ,\abs_diff[0][7]_i_14_n_0 }),
        .O(\NLW_abs_diff_reg[0][7]_i_10_O_UNCONNECTED [3:0]),
        .S({\abs_diff[0][7]_i_15_n_0 ,\abs_diff[0][7]_i_16_n_0 ,\abs_diff[0][7]_i_17_n_0 ,\abs_diff[0][7]_i_18_n_0 }));
  FDRE \abs_diff_reg[0][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[0][8]_i_1_n_7 ),
        .Q(\abs_diff_reg[0]_14 [8]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[0][8]_i_1 
       (.CI(\abs_diff_reg[0][7]_i_1_n_0 ),
        .CO(\NLW_abs_diff_reg[0][8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_abs_diff_reg[0][8]_i_1_O_UNCONNECTED [3:1],\abs_diff_reg[0][8]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \abs_diff_reg[10][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[10][3]_i_1_n_7 ),
        .Q(\abs_diff_reg[10]_12 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[10][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[10][3]_i_1_n_6 ),
        .Q(\abs_diff_reg[10]_12 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[10][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[10][3]_i_1_n_5 ),
        .Q(\abs_diff_reg[10]_12 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[10][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[10][3]_i_1_n_4 ),
        .Q(\abs_diff_reg[10]_12 [3]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[10][3]_i_1 
       (.CI(1'b0),
        .CO({\abs_diff_reg[10][3]_i_1_n_0 ,\abs_diff_reg[10][3]_i_1_n_1 ,\abs_diff_reg[10][3]_i_1_n_2 ,\abs_diff_reg[10][3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\abs_diff[10][3]_i_2_n_0 ,\abs_diff[10][3]_i_3_n_0 ,\abs_diff[10][3]_i_4_n_0 ,\abs_diff[10][3]_i_5_n_0 }),
        .O({\abs_diff_reg[10][3]_i_1_n_4 ,\abs_diff_reg[10][3]_i_1_n_5 ,\abs_diff_reg[10][3]_i_1_n_6 ,\abs_diff_reg[10][3]_i_1_n_7 }),
        .S({\abs_diff[10][3]_i_6_n_0 ,\abs_diff[10][3]_i_7_n_0 ,\abs_diff[10][3]_i_8_n_0 ,\abs_diff[10][3]_i_9_n_0 }));
  FDRE \abs_diff_reg[10][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[10][7]_i_1_n_7 ),
        .Q(\abs_diff_reg[10]_12 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[10][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[10][7]_i_1_n_6 ),
        .Q(\abs_diff_reg[10]_12 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[10][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[10][7]_i_1_n_5 ),
        .Q(\abs_diff_reg[10]_12 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[10][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[10][7]_i_1_n_4 ),
        .Q(\abs_diff_reg[10]_12 [7]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[10][7]_i_1 
       (.CI(\abs_diff_reg[10][3]_i_1_n_0 ),
        .CO({\abs_diff_reg[10][7]_i_1_n_0 ,\abs_diff_reg[10][7]_i_1_n_1 ,\abs_diff_reg[10][7]_i_1_n_2 ,\abs_diff_reg[10][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[10][7]_i_2_n_0 ,\abs_diff[10][7]_i_3_n_0 ,\abs_diff[10][7]_i_4_n_0 ,\abs_diff[10][7]_i_5_n_0 }),
        .O({\abs_diff_reg[10][7]_i_1_n_4 ,\abs_diff_reg[10][7]_i_1_n_5 ,\abs_diff_reg[10][7]_i_1_n_6 ,\abs_diff_reg[10][7]_i_1_n_7 }),
        .S({\abs_diff[10][7]_i_6_n_0 ,\abs_diff[10][7]_i_7_n_0 ,\abs_diff[10][7]_i_8_n_0 ,\abs_diff[10][7]_i_9_n_0 }));
  CARRY4 \abs_diff_reg[10][7]_i_10 
       (.CI(1'b0),
        .CO({\abs_diff_reg[10][7]_i_10_n_0 ,\abs_diff_reg[10][7]_i_10_n_1 ,\abs_diff_reg[10][7]_i_10_n_2 ,\abs_diff_reg[10][7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[10][7]_i_11_n_0 ,\abs_diff[10][7]_i_12_n_0 ,\abs_diff[10][7]_i_13_n_0 ,\abs_diff[10][7]_i_14_n_0 }),
        .O(\NLW_abs_diff_reg[10][7]_i_10_O_UNCONNECTED [3:0]),
        .S({\abs_diff[10][7]_i_15_n_0 ,\abs_diff[10][7]_i_16_n_0 ,\abs_diff[10][7]_i_17_n_0 ,\abs_diff[10][7]_i_18_n_0 }));
  FDRE \abs_diff_reg[10][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[10][8]_i_1_n_7 ),
        .Q(\abs_diff_reg[10]_12 [8]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[10][8]_i_1 
       (.CI(\abs_diff_reg[10][7]_i_1_n_0 ),
        .CO(\NLW_abs_diff_reg[10][8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_abs_diff_reg[10][8]_i_1_O_UNCONNECTED [3:1],\abs_diff_reg[10][8]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \abs_diff_reg[11][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[11][3]_i_1_n_7 ),
        .Q(\abs_diff_reg[11]_10 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[11][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[11][3]_i_1_n_6 ),
        .Q(\abs_diff_reg[11]_10 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[11][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[11][3]_i_1_n_5 ),
        .Q(\abs_diff_reg[11]_10 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[11][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[11][3]_i_1_n_4 ),
        .Q(\abs_diff_reg[11]_10 [3]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[11][3]_i_1 
       (.CI(1'b0),
        .CO({\abs_diff_reg[11][3]_i_1_n_0 ,\abs_diff_reg[11][3]_i_1_n_1 ,\abs_diff_reg[11][3]_i_1_n_2 ,\abs_diff_reg[11][3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\abs_diff[11][3]_i_2_n_0 ,\abs_diff[11][3]_i_3_n_0 ,\abs_diff[11][3]_i_4_n_0 ,\abs_diff[11][3]_i_5_n_0 }),
        .O({\abs_diff_reg[11][3]_i_1_n_4 ,\abs_diff_reg[11][3]_i_1_n_5 ,\abs_diff_reg[11][3]_i_1_n_6 ,\abs_diff_reg[11][3]_i_1_n_7 }),
        .S({\abs_diff[11][3]_i_6_n_0 ,\abs_diff[11][3]_i_7_n_0 ,\abs_diff[11][3]_i_8_n_0 ,\abs_diff[11][3]_i_9_n_0 }));
  FDRE \abs_diff_reg[11][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[11][7]_i_1_n_7 ),
        .Q(\abs_diff_reg[11]_10 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[11][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[11][7]_i_1_n_6 ),
        .Q(\abs_diff_reg[11]_10 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[11][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[11][7]_i_1_n_5 ),
        .Q(\abs_diff_reg[11]_10 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[11][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[11][7]_i_1_n_4 ),
        .Q(\abs_diff_reg[11]_10 [7]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[11][7]_i_1 
       (.CI(\abs_diff_reg[11][3]_i_1_n_0 ),
        .CO({\abs_diff_reg[11][7]_i_1_n_0 ,\abs_diff_reg[11][7]_i_1_n_1 ,\abs_diff_reg[11][7]_i_1_n_2 ,\abs_diff_reg[11][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[11][7]_i_2_n_0 ,\abs_diff[11][7]_i_3_n_0 ,\abs_diff[11][7]_i_4_n_0 ,\abs_diff[11][7]_i_5_n_0 }),
        .O({\abs_diff_reg[11][7]_i_1_n_4 ,\abs_diff_reg[11][7]_i_1_n_5 ,\abs_diff_reg[11][7]_i_1_n_6 ,\abs_diff_reg[11][7]_i_1_n_7 }),
        .S({\abs_diff[11][7]_i_6_n_0 ,\abs_diff[11][7]_i_7_n_0 ,\abs_diff[11][7]_i_8_n_0 ,\abs_diff[11][7]_i_9_n_0 }));
  CARRY4 \abs_diff_reg[11][7]_i_10 
       (.CI(1'b0),
        .CO({\abs_diff_reg[11][7]_i_10_n_0 ,\abs_diff_reg[11][7]_i_10_n_1 ,\abs_diff_reg[11][7]_i_10_n_2 ,\abs_diff_reg[11][7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[11][7]_i_11_n_0 ,\abs_diff[11][7]_i_12_n_0 ,\abs_diff[11][7]_i_13_n_0 ,\abs_diff[11][7]_i_14_n_0 }),
        .O(\NLW_abs_diff_reg[11][7]_i_10_O_UNCONNECTED [3:0]),
        .S({\abs_diff[11][7]_i_15_n_0 ,\abs_diff[11][7]_i_16_n_0 ,\abs_diff[11][7]_i_17_n_0 ,\abs_diff[11][7]_i_18_n_0 }));
  FDRE \abs_diff_reg[11][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[11][8]_i_1_n_7 ),
        .Q(\abs_diff_reg[11]_10 [8]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[11][8]_i_1 
       (.CI(\abs_diff_reg[11][7]_i_1_n_0 ),
        .CO(\NLW_abs_diff_reg[11][8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_abs_diff_reg[11][8]_i_1_O_UNCONNECTED [3:1],\abs_diff_reg[11][8]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \abs_diff_reg[12][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[12][3]_i_1_n_7 ),
        .Q(\abs_diff_reg[12]_13 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[12][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[12][3]_i_1_n_6 ),
        .Q(\abs_diff_reg[12]_13 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[12][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[12][3]_i_1_n_5 ),
        .Q(\abs_diff_reg[12]_13 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[12][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[12][3]_i_1_n_4 ),
        .Q(\abs_diff_reg[12]_13 [3]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[12][3]_i_1 
       (.CI(1'b0),
        .CO({\abs_diff_reg[12][3]_i_1_n_0 ,\abs_diff_reg[12][3]_i_1_n_1 ,\abs_diff_reg[12][3]_i_1_n_2 ,\abs_diff_reg[12][3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\abs_diff[12][3]_i_2_n_0 ,\abs_diff[12][3]_i_3_n_0 ,\abs_diff[12][3]_i_4_n_0 ,\abs_diff[12][3]_i_5_n_0 }),
        .O({\abs_diff_reg[12][3]_i_1_n_4 ,\abs_diff_reg[12][3]_i_1_n_5 ,\abs_diff_reg[12][3]_i_1_n_6 ,\abs_diff_reg[12][3]_i_1_n_7 }),
        .S({\abs_diff[12][3]_i_6_n_0 ,\abs_diff[12][3]_i_7_n_0 ,\abs_diff[12][3]_i_8_n_0 ,\abs_diff[12][3]_i_9_n_0 }));
  FDRE \abs_diff_reg[12][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[12][7]_i_1_n_7 ),
        .Q(\abs_diff_reg[12]_13 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[12][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[12][7]_i_1_n_6 ),
        .Q(\abs_diff_reg[12]_13 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[12][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[12][7]_i_1_n_5 ),
        .Q(\abs_diff_reg[12]_13 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[12][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[12][7]_i_1_n_4 ),
        .Q(\abs_diff_reg[12]_13 [7]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[12][7]_i_1 
       (.CI(\abs_diff_reg[12][3]_i_1_n_0 ),
        .CO({\abs_diff_reg[12][7]_i_1_n_0 ,\abs_diff_reg[12][7]_i_1_n_1 ,\abs_diff_reg[12][7]_i_1_n_2 ,\abs_diff_reg[12][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[12][7]_i_2_n_0 ,\abs_diff[12][7]_i_3_n_0 ,\abs_diff[12][7]_i_4_n_0 ,\abs_diff[12][7]_i_5_n_0 }),
        .O({\abs_diff_reg[12][7]_i_1_n_4 ,\abs_diff_reg[12][7]_i_1_n_5 ,\abs_diff_reg[12][7]_i_1_n_6 ,\abs_diff_reg[12][7]_i_1_n_7 }),
        .S({\abs_diff[12][7]_i_6_n_0 ,\abs_diff[12][7]_i_7_n_0 ,\abs_diff[12][7]_i_8_n_0 ,\abs_diff[12][7]_i_9_n_0 }));
  CARRY4 \abs_diff_reg[12][7]_i_10 
       (.CI(1'b0),
        .CO({\abs_diff_reg[12][7]_i_10_n_0 ,\abs_diff_reg[12][7]_i_10_n_1 ,\abs_diff_reg[12][7]_i_10_n_2 ,\abs_diff_reg[12][7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[12][7]_i_11_n_0 ,\abs_diff[12][7]_i_12_n_0 ,\abs_diff[12][7]_i_13_n_0 ,\abs_diff[12][7]_i_14_n_0 }),
        .O(\NLW_abs_diff_reg[12][7]_i_10_O_UNCONNECTED [3:0]),
        .S({\abs_diff[12][7]_i_15_n_0 ,\abs_diff[12][7]_i_16_n_0 ,\abs_diff[12][7]_i_17_n_0 ,\abs_diff[12][7]_i_18_n_0 }));
  FDRE \abs_diff_reg[12][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[12][8]_i_1_n_7 ),
        .Q(\abs_diff_reg[12]_13 [8]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[12][8]_i_1 
       (.CI(\abs_diff_reg[12][7]_i_1_n_0 ),
        .CO(\NLW_abs_diff_reg[12][8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_abs_diff_reg[12][8]_i_1_O_UNCONNECTED [3:1],\abs_diff_reg[12][8]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \abs_diff_reg[13][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[13][3]_i_1_n_7 ),
        .Q(\abs_diff_reg[13]_8 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[13][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[13][3]_i_1_n_6 ),
        .Q(\abs_diff_reg[13]_8 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[13][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[13][3]_i_1_n_5 ),
        .Q(\abs_diff_reg[13]_8 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[13][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[13][3]_i_1_n_4 ),
        .Q(\abs_diff_reg[13]_8 [3]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[13][3]_i_1 
       (.CI(1'b0),
        .CO({\abs_diff_reg[13][3]_i_1_n_0 ,\abs_diff_reg[13][3]_i_1_n_1 ,\abs_diff_reg[13][3]_i_1_n_2 ,\abs_diff_reg[13][3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\abs_diff[13][3]_i_2_n_0 ,\abs_diff[13][3]_i_3_n_0 ,\abs_diff[13][3]_i_4_n_0 ,\abs_diff[13][3]_i_5_n_0 }),
        .O({\abs_diff_reg[13][3]_i_1_n_4 ,\abs_diff_reg[13][3]_i_1_n_5 ,\abs_diff_reg[13][3]_i_1_n_6 ,\abs_diff_reg[13][3]_i_1_n_7 }),
        .S({\abs_diff[13][3]_i_6_n_0 ,\abs_diff[13][3]_i_7_n_0 ,\abs_diff[13][3]_i_8_n_0 ,\abs_diff[13][3]_i_9_n_0 }));
  FDRE \abs_diff_reg[13][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[13][7]_i_1_n_7 ),
        .Q(\abs_diff_reg[13]_8 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[13][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[13][7]_i_1_n_6 ),
        .Q(\abs_diff_reg[13]_8 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[13][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[13][7]_i_1_n_5 ),
        .Q(\abs_diff_reg[13]_8 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[13][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[13][7]_i_1_n_4 ),
        .Q(\abs_diff_reg[13]_8 [7]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[13][7]_i_1 
       (.CI(\abs_diff_reg[13][3]_i_1_n_0 ),
        .CO({\abs_diff_reg[13][7]_i_1_n_0 ,\abs_diff_reg[13][7]_i_1_n_1 ,\abs_diff_reg[13][7]_i_1_n_2 ,\abs_diff_reg[13][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[13][7]_i_2_n_0 ,\abs_diff[13][7]_i_3_n_0 ,\abs_diff[13][7]_i_4_n_0 ,\abs_diff[13][7]_i_5_n_0 }),
        .O({\abs_diff_reg[13][7]_i_1_n_4 ,\abs_diff_reg[13][7]_i_1_n_5 ,\abs_diff_reg[13][7]_i_1_n_6 ,\abs_diff_reg[13][7]_i_1_n_7 }),
        .S({\abs_diff[13][7]_i_6_n_0 ,\abs_diff[13][7]_i_7_n_0 ,\abs_diff[13][7]_i_8_n_0 ,\abs_diff[13][7]_i_9_n_0 }));
  CARRY4 \abs_diff_reg[13][7]_i_10 
       (.CI(1'b0),
        .CO({\abs_diff_reg[13][7]_i_10_n_0 ,\abs_diff_reg[13][7]_i_10_n_1 ,\abs_diff_reg[13][7]_i_10_n_2 ,\abs_diff_reg[13][7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[13][7]_i_11_n_0 ,\abs_diff[13][7]_i_12_n_0 ,\abs_diff[13][7]_i_13_n_0 ,\abs_diff[13][7]_i_14_n_0 }),
        .O(\NLW_abs_diff_reg[13][7]_i_10_O_UNCONNECTED [3:0]),
        .S({\abs_diff[13][7]_i_15_n_0 ,\abs_diff[13][7]_i_16_n_0 ,\abs_diff[13][7]_i_17_n_0 ,\abs_diff[13][7]_i_18_n_0 }));
  FDRE \abs_diff_reg[13][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[13][8]_i_1_n_7 ),
        .Q(\abs_diff_reg[13]_8 [8]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[13][8]_i_1 
       (.CI(\abs_diff_reg[13][7]_i_1_n_0 ),
        .CO(\NLW_abs_diff_reg[13][8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_abs_diff_reg[13][8]_i_1_O_UNCONNECTED [3:1],\abs_diff_reg[13][8]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \abs_diff_reg[14][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[14][3]_i_1_n_7 ),
        .Q(\abs_diff_reg[14]_9 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[14][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[14][3]_i_1_n_6 ),
        .Q(\abs_diff_reg[14]_9 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[14][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[14][3]_i_1_n_5 ),
        .Q(\abs_diff_reg[14]_9 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[14][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[14][3]_i_1_n_4 ),
        .Q(\abs_diff_reg[14]_9 [3]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[14][3]_i_1 
       (.CI(1'b0),
        .CO({\abs_diff_reg[14][3]_i_1_n_0 ,\abs_diff_reg[14][3]_i_1_n_1 ,\abs_diff_reg[14][3]_i_1_n_2 ,\abs_diff_reg[14][3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\abs_diff[14][3]_i_2_n_0 ,\abs_diff[14][3]_i_3_n_0 ,\abs_diff[14][3]_i_4_n_0 ,\abs_diff[14][3]_i_5_n_0 }),
        .O({\abs_diff_reg[14][3]_i_1_n_4 ,\abs_diff_reg[14][3]_i_1_n_5 ,\abs_diff_reg[14][3]_i_1_n_6 ,\abs_diff_reg[14][3]_i_1_n_7 }),
        .S({\abs_diff[14][3]_i_6_n_0 ,\abs_diff[14][3]_i_7_n_0 ,\abs_diff[14][3]_i_8_n_0 ,\abs_diff[14][3]_i_9_n_0 }));
  FDRE \abs_diff_reg[14][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[14][7]_i_1_n_7 ),
        .Q(\abs_diff_reg[14]_9 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[14][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[14][7]_i_1_n_6 ),
        .Q(\abs_diff_reg[14]_9 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[14][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[14][7]_i_1_n_5 ),
        .Q(\abs_diff_reg[14]_9 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[14][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[14][7]_i_1_n_4 ),
        .Q(\abs_diff_reg[14]_9 [7]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[14][7]_i_1 
       (.CI(\abs_diff_reg[14][3]_i_1_n_0 ),
        .CO({\abs_diff_reg[14][7]_i_1_n_0 ,\abs_diff_reg[14][7]_i_1_n_1 ,\abs_diff_reg[14][7]_i_1_n_2 ,\abs_diff_reg[14][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[14][7]_i_2_n_0 ,\abs_diff[14][7]_i_3_n_0 ,\abs_diff[14][7]_i_4_n_0 ,\abs_diff[14][7]_i_5_n_0 }),
        .O({\abs_diff_reg[14][7]_i_1_n_4 ,\abs_diff_reg[14][7]_i_1_n_5 ,\abs_diff_reg[14][7]_i_1_n_6 ,\abs_diff_reg[14][7]_i_1_n_7 }),
        .S({\abs_diff[14][7]_i_6_n_0 ,\abs_diff[14][7]_i_7_n_0 ,\abs_diff[14][7]_i_8_n_0 ,\abs_diff[14][7]_i_9_n_0 }));
  CARRY4 \abs_diff_reg[14][7]_i_10 
       (.CI(1'b0),
        .CO({\abs_diff_reg[14][7]_i_10_n_0 ,\abs_diff_reg[14][7]_i_10_n_1 ,\abs_diff_reg[14][7]_i_10_n_2 ,\abs_diff_reg[14][7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[14][7]_i_11_n_0 ,\abs_diff[14][7]_i_12_n_0 ,\abs_diff[14][7]_i_13_n_0 ,\abs_diff[14][7]_i_14_n_0 }),
        .O(\NLW_abs_diff_reg[14][7]_i_10_O_UNCONNECTED [3:0]),
        .S({\abs_diff[14][7]_i_15_n_0 ,\abs_diff[14][7]_i_16_n_0 ,\abs_diff[14][7]_i_17_n_0 ,\abs_diff[14][7]_i_18_n_0 }));
  FDRE \abs_diff_reg[14][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[14][8]_i_1_n_7 ),
        .Q(\abs_diff_reg[14]_9 [8]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[14][8]_i_1 
       (.CI(\abs_diff_reg[14][7]_i_1_n_0 ),
        .CO(\NLW_abs_diff_reg[14][8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_abs_diff_reg[14][8]_i_1_O_UNCONNECTED [3:1],\abs_diff_reg[14][8]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \abs_diff_reg[15][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[15][3]_i_1_n_7 ),
        .Q(\abs_diff_reg[15]_7 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[15][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[15][3]_i_1_n_6 ),
        .Q(\abs_diff_reg[15]_7 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[15][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[15][3]_i_1_n_5 ),
        .Q(\abs_diff_reg[15]_7 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[15][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[15][3]_i_1_n_4 ),
        .Q(\abs_diff_reg[15]_7 [3]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[15][3]_i_1 
       (.CI(1'b0),
        .CO({\abs_diff_reg[15][3]_i_1_n_0 ,\abs_diff_reg[15][3]_i_1_n_1 ,\abs_diff_reg[15][3]_i_1_n_2 ,\abs_diff_reg[15][3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\abs_diff[15][3]_i_2_n_0 ,\abs_diff[15][3]_i_3_n_0 ,\abs_diff[15][3]_i_4_n_0 ,\abs_diff[15][3]_i_5_n_0 }),
        .O({\abs_diff_reg[15][3]_i_1_n_4 ,\abs_diff_reg[15][3]_i_1_n_5 ,\abs_diff_reg[15][3]_i_1_n_6 ,\abs_diff_reg[15][3]_i_1_n_7 }),
        .S({\abs_diff[15][3]_i_6_n_0 ,\abs_diff[15][3]_i_7_n_0 ,\abs_diff[15][3]_i_8_n_0 ,\abs_diff[15][3]_i_9_n_0 }));
  FDRE \abs_diff_reg[15][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[15][7]_i_1_n_7 ),
        .Q(\abs_diff_reg[15]_7 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[15][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[15][7]_i_1_n_6 ),
        .Q(\abs_diff_reg[15]_7 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[15][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[15][7]_i_1_n_5 ),
        .Q(\abs_diff_reg[15]_7 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[15][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[15][7]_i_1_n_4 ),
        .Q(\abs_diff_reg[15]_7 [7]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[15][7]_i_1 
       (.CI(\abs_diff_reg[15][3]_i_1_n_0 ),
        .CO({\abs_diff_reg[15][7]_i_1_n_0 ,\abs_diff_reg[15][7]_i_1_n_1 ,\abs_diff_reg[15][7]_i_1_n_2 ,\abs_diff_reg[15][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[15][7]_i_2_n_0 ,\abs_diff[15][7]_i_3_n_0 ,\abs_diff[15][7]_i_4_n_0 ,\abs_diff[15][7]_i_5_n_0 }),
        .O({\abs_diff_reg[15][7]_i_1_n_4 ,\abs_diff_reg[15][7]_i_1_n_5 ,\abs_diff_reg[15][7]_i_1_n_6 ,\abs_diff_reg[15][7]_i_1_n_7 }),
        .S({\abs_diff[15][7]_i_6_n_0 ,\abs_diff[15][7]_i_7_n_0 ,\abs_diff[15][7]_i_8_n_0 ,\abs_diff[15][7]_i_9_n_0 }));
  CARRY4 \abs_diff_reg[15][7]_i_10 
       (.CI(1'b0),
        .CO({\abs_diff_reg[15][7]_i_10_n_0 ,\abs_diff_reg[15][7]_i_10_n_1 ,\abs_diff_reg[15][7]_i_10_n_2 ,\abs_diff_reg[15][7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[15][7]_i_11_n_0 ,\abs_diff[15][7]_i_12_n_0 ,\abs_diff[15][7]_i_13_n_0 ,\abs_diff[15][7]_i_14_n_0 }),
        .O(\NLW_abs_diff_reg[15][7]_i_10_O_UNCONNECTED [3:0]),
        .S({\abs_diff[15][7]_i_15_n_0 ,\abs_diff[15][7]_i_16_n_0 ,\abs_diff[15][7]_i_17_n_0 ,\abs_diff[15][7]_i_18_n_0 }));
  FDRE \abs_diff_reg[15][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[15][8]_i_1_n_7 ),
        .Q(\abs_diff_reg[15]_7 [8]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[15][8]_i_1 
       (.CI(\abs_diff_reg[15][7]_i_1_n_0 ),
        .CO(\NLW_abs_diff_reg[15][8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_abs_diff_reg[15][8]_i_1_O_UNCONNECTED [3:1],\abs_diff_reg[15][8]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \abs_diff_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[1][3]_i_1_n_7 ),
        .Q(\abs_diff_reg[1]_4 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[1][3]_i_1_n_6 ),
        .Q(\abs_diff_reg[1]_4 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[1][3]_i_1_n_5 ),
        .Q(\abs_diff_reg[1]_4 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[1][3]_i_1_n_4 ),
        .Q(\abs_diff_reg[1]_4 [3]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[1][3]_i_1 
       (.CI(1'b0),
        .CO({\abs_diff_reg[1][3]_i_1_n_0 ,\abs_diff_reg[1][3]_i_1_n_1 ,\abs_diff_reg[1][3]_i_1_n_2 ,\abs_diff_reg[1][3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\abs_diff[1][3]_i_2_n_0 ,\abs_diff[1][3]_i_3_n_0 ,\abs_diff[1][3]_i_4_n_0 ,\abs_diff[1][3]_i_5_n_0 }),
        .O({\abs_diff_reg[1][3]_i_1_n_4 ,\abs_diff_reg[1][3]_i_1_n_5 ,\abs_diff_reg[1][3]_i_1_n_6 ,\abs_diff_reg[1][3]_i_1_n_7 }),
        .S({\abs_diff[1][3]_i_6_n_0 ,\abs_diff[1][3]_i_7_n_0 ,\abs_diff[1][3]_i_8_n_0 ,\abs_diff[1][3]_i_9_n_0 }));
  FDRE \abs_diff_reg[1][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[1][7]_i_1_n_7 ),
        .Q(\abs_diff_reg[1]_4 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[1][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[1][7]_i_1_n_6 ),
        .Q(\abs_diff_reg[1]_4 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[1][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[1][7]_i_1_n_5 ),
        .Q(\abs_diff_reg[1]_4 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[1][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[1][7]_i_1_n_4 ),
        .Q(\abs_diff_reg[1]_4 [7]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[1][7]_i_1 
       (.CI(\abs_diff_reg[1][3]_i_1_n_0 ),
        .CO({\abs_diff_reg[1][7]_i_1_n_0 ,\abs_diff_reg[1][7]_i_1_n_1 ,\abs_diff_reg[1][7]_i_1_n_2 ,\abs_diff_reg[1][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[1][7]_i_2_n_0 ,\abs_diff[1][7]_i_3_n_0 ,\abs_diff[1][7]_i_4_n_0 ,\abs_diff[1][7]_i_5_n_0 }),
        .O({\abs_diff_reg[1][7]_i_1_n_4 ,\abs_diff_reg[1][7]_i_1_n_5 ,\abs_diff_reg[1][7]_i_1_n_6 ,\abs_diff_reg[1][7]_i_1_n_7 }),
        .S({\abs_diff[1][7]_i_6_n_0 ,\abs_diff[1][7]_i_7_n_0 ,\abs_diff[1][7]_i_8_n_0 ,\abs_diff[1][7]_i_9_n_0 }));
  CARRY4 \abs_diff_reg[1][7]_i_10 
       (.CI(1'b0),
        .CO({\abs_diff_reg[1][7]_i_10_n_0 ,\abs_diff_reg[1][7]_i_10_n_1 ,\abs_diff_reg[1][7]_i_10_n_2 ,\abs_diff_reg[1][7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[1][7]_i_11_n_0 ,\abs_diff[1][7]_i_12_n_0 ,\abs_diff[1][7]_i_13_n_0 ,\abs_diff[1][7]_i_14_n_0 }),
        .O(\NLW_abs_diff_reg[1][7]_i_10_O_UNCONNECTED [3:0]),
        .S({\abs_diff[1][7]_i_15_n_0 ,\abs_diff[1][7]_i_16_n_0 ,\abs_diff[1][7]_i_17_n_0 ,\abs_diff[1][7]_i_18_n_0 }));
  FDRE \abs_diff_reg[1][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[1][8]_i_1_n_7 ),
        .Q(\abs_diff_reg[1]_4 [8]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[1][8]_i_1 
       (.CI(\abs_diff_reg[1][7]_i_1_n_0 ),
        .CO(\NLW_abs_diff_reg[1][8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_abs_diff_reg[1][8]_i_1_O_UNCONNECTED [3:1],\abs_diff_reg[1][8]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \abs_diff_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[2][3]_i_1_n_7 ),
        .Q(\abs_diff_reg[2]_5 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[2][3]_i_1_n_6 ),
        .Q(\abs_diff_reg[2]_5 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[2][3]_i_1_n_5 ),
        .Q(\abs_diff_reg[2]_5 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[2][3]_i_1_n_4 ),
        .Q(\abs_diff_reg[2]_5 [3]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[2][3]_i_1 
       (.CI(1'b0),
        .CO({\abs_diff_reg[2][3]_i_1_n_0 ,\abs_diff_reg[2][3]_i_1_n_1 ,\abs_diff_reg[2][3]_i_1_n_2 ,\abs_diff_reg[2][3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\abs_diff[2][3]_i_2_n_0 ,\abs_diff[2][3]_i_3_n_0 ,\abs_diff[2][3]_i_4_n_0 ,\abs_diff[2][3]_i_5_n_0 }),
        .O({\abs_diff_reg[2][3]_i_1_n_4 ,\abs_diff_reg[2][3]_i_1_n_5 ,\abs_diff_reg[2][3]_i_1_n_6 ,\abs_diff_reg[2][3]_i_1_n_7 }),
        .S({\abs_diff[2][3]_i_6_n_0 ,\abs_diff[2][3]_i_7_n_0 ,\abs_diff[2][3]_i_8_n_0 ,\abs_diff[2][3]_i_9_n_0 }));
  FDRE \abs_diff_reg[2][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[2][7]_i_1_n_7 ),
        .Q(\abs_diff_reg[2]_5 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[2][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[2][7]_i_1_n_6 ),
        .Q(\abs_diff_reg[2]_5 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[2][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[2][7]_i_1_n_5 ),
        .Q(\abs_diff_reg[2]_5 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[2][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[2][7]_i_1_n_4 ),
        .Q(\abs_diff_reg[2]_5 [7]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[2][7]_i_1 
       (.CI(\abs_diff_reg[2][3]_i_1_n_0 ),
        .CO({\abs_diff_reg[2][7]_i_1_n_0 ,\abs_diff_reg[2][7]_i_1_n_1 ,\abs_diff_reg[2][7]_i_1_n_2 ,\abs_diff_reg[2][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[2][7]_i_2_n_0 ,\abs_diff[2][7]_i_3_n_0 ,\abs_diff[2][7]_i_4_n_0 ,\abs_diff[2][7]_i_5_n_0 }),
        .O({\abs_diff_reg[2][7]_i_1_n_4 ,\abs_diff_reg[2][7]_i_1_n_5 ,\abs_diff_reg[2][7]_i_1_n_6 ,\abs_diff_reg[2][7]_i_1_n_7 }),
        .S({\abs_diff[2][7]_i_6_n_0 ,\abs_diff[2][7]_i_7_n_0 ,\abs_diff[2][7]_i_8_n_0 ,\abs_diff[2][7]_i_9_n_0 }));
  CARRY4 \abs_diff_reg[2][7]_i_10 
       (.CI(1'b0),
        .CO({\abs_diff_reg[2][7]_i_10_n_0 ,\abs_diff_reg[2][7]_i_10_n_1 ,\abs_diff_reg[2][7]_i_10_n_2 ,\abs_diff_reg[2][7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[2][7]_i_11_n_0 ,\abs_diff[2][7]_i_12_n_0 ,\abs_diff[2][7]_i_13_n_0 ,\abs_diff[2][7]_i_14_n_0 }),
        .O(\NLW_abs_diff_reg[2][7]_i_10_O_UNCONNECTED [3:0]),
        .S({\abs_diff[2][7]_i_15_n_0 ,\abs_diff[2][7]_i_16_n_0 ,\abs_diff[2][7]_i_17_n_0 ,\abs_diff[2][7]_i_18_n_0 }));
  FDRE \abs_diff_reg[2][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[2][8]_i_1_n_7 ),
        .Q(\abs_diff_reg[2]_5 [8]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[2][8]_i_1 
       (.CI(\abs_diff_reg[2][7]_i_1_n_0 ),
        .CO(\NLW_abs_diff_reg[2][8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_abs_diff_reg[2][8]_i_1_O_UNCONNECTED [3:1],\abs_diff_reg[2][8]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \abs_diff_reg[3][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[3][3]_i_1_n_7 ),
        .Q(\abs_diff_reg[3]_3 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[3][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[3][3]_i_1_n_6 ),
        .Q(\abs_diff_reg[3]_3 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[3][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[3][3]_i_1_n_5 ),
        .Q(\abs_diff_reg[3]_3 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[3][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[3][3]_i_1_n_4 ),
        .Q(\abs_diff_reg[3]_3 [3]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[3][3]_i_1 
       (.CI(1'b0),
        .CO({\abs_diff_reg[3][3]_i_1_n_0 ,\abs_diff_reg[3][3]_i_1_n_1 ,\abs_diff_reg[3][3]_i_1_n_2 ,\abs_diff_reg[3][3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\abs_diff[3][3]_i_2_n_0 ,\abs_diff[3][3]_i_3_n_0 ,\abs_diff[3][3]_i_4_n_0 ,\abs_diff[3][3]_i_5_n_0 }),
        .O({\abs_diff_reg[3][3]_i_1_n_4 ,\abs_diff_reg[3][3]_i_1_n_5 ,\abs_diff_reg[3][3]_i_1_n_6 ,\abs_diff_reg[3][3]_i_1_n_7 }),
        .S({\abs_diff[3][3]_i_6_n_0 ,\abs_diff[3][3]_i_7_n_0 ,\abs_diff[3][3]_i_8_n_0 ,\abs_diff[3][3]_i_9_n_0 }));
  FDRE \abs_diff_reg[3][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[3][7]_i_1_n_7 ),
        .Q(\abs_diff_reg[3]_3 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[3][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[3][7]_i_1_n_6 ),
        .Q(\abs_diff_reg[3]_3 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[3][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[3][7]_i_1_n_5 ),
        .Q(\abs_diff_reg[3]_3 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[3][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[3][7]_i_1_n_4 ),
        .Q(\abs_diff_reg[3]_3 [7]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[3][7]_i_1 
       (.CI(\abs_diff_reg[3][3]_i_1_n_0 ),
        .CO({\abs_diff_reg[3][7]_i_1_n_0 ,\abs_diff_reg[3][7]_i_1_n_1 ,\abs_diff_reg[3][7]_i_1_n_2 ,\abs_diff_reg[3][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[3][7]_i_2_n_0 ,\abs_diff[3][7]_i_3_n_0 ,\abs_diff[3][7]_i_4_n_0 ,\abs_diff[3][7]_i_5_n_0 }),
        .O({\abs_diff_reg[3][7]_i_1_n_4 ,\abs_diff_reg[3][7]_i_1_n_5 ,\abs_diff_reg[3][7]_i_1_n_6 ,\abs_diff_reg[3][7]_i_1_n_7 }),
        .S({\abs_diff[3][7]_i_6_n_0 ,\abs_diff[3][7]_i_7_n_0 ,\abs_diff[3][7]_i_8_n_0 ,\abs_diff[3][7]_i_9_n_0 }));
  CARRY4 \abs_diff_reg[3][7]_i_10 
       (.CI(1'b0),
        .CO({\abs_diff_reg[3][7]_i_10_n_0 ,\abs_diff_reg[3][7]_i_10_n_1 ,\abs_diff_reg[3][7]_i_10_n_2 ,\abs_diff_reg[3][7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[3][7]_i_11_n_0 ,\abs_diff[3][7]_i_12_n_0 ,\abs_diff[3][7]_i_13_n_0 ,\abs_diff[3][7]_i_14_n_0 }),
        .O(\NLW_abs_diff_reg[3][7]_i_10_O_UNCONNECTED [3:0]),
        .S({\abs_diff[3][7]_i_15_n_0 ,\abs_diff[3][7]_i_16_n_0 ,\abs_diff[3][7]_i_17_n_0 ,\abs_diff[3][7]_i_18_n_0 }));
  FDRE \abs_diff_reg[3][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[3][8]_i_1_n_7 ),
        .Q(\abs_diff_reg[3]_3 [8]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[3][8]_i_1 
       (.CI(\abs_diff_reg[3][7]_i_1_n_0 ),
        .CO(\NLW_abs_diff_reg[3][8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_abs_diff_reg[3][8]_i_1_O_UNCONNECTED [3:1],\abs_diff_reg[3][8]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \abs_diff_reg[4][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[4][3]_i_1_n_7 ),
        .Q(\abs_diff_reg[4]_6 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[4][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[4][3]_i_1_n_6 ),
        .Q(\abs_diff_reg[4]_6 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[4][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[4][3]_i_1_n_5 ),
        .Q(\abs_diff_reg[4]_6 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[4][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[4][3]_i_1_n_4 ),
        .Q(\abs_diff_reg[4]_6 [3]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[4][3]_i_1 
       (.CI(1'b0),
        .CO({\abs_diff_reg[4][3]_i_1_n_0 ,\abs_diff_reg[4][3]_i_1_n_1 ,\abs_diff_reg[4][3]_i_1_n_2 ,\abs_diff_reg[4][3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\abs_diff[4][3]_i_2_n_0 ,\abs_diff[4][3]_i_3_n_0 ,\abs_diff[4][3]_i_4_n_0 ,\abs_diff[4][3]_i_5_n_0 }),
        .O({\abs_diff_reg[4][3]_i_1_n_4 ,\abs_diff_reg[4][3]_i_1_n_5 ,\abs_diff_reg[4][3]_i_1_n_6 ,\abs_diff_reg[4][3]_i_1_n_7 }),
        .S({\abs_diff[4][3]_i_6_n_0 ,\abs_diff[4][3]_i_7_n_0 ,\abs_diff[4][3]_i_8_n_0 ,\abs_diff[4][3]_i_9_n_0 }));
  FDRE \abs_diff_reg[4][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[4][7]_i_1_n_7 ),
        .Q(\abs_diff_reg[4]_6 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[4][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[4][7]_i_1_n_6 ),
        .Q(\abs_diff_reg[4]_6 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[4][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[4][7]_i_1_n_5 ),
        .Q(\abs_diff_reg[4]_6 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[4][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[4][7]_i_1_n_4 ),
        .Q(\abs_diff_reg[4]_6 [7]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[4][7]_i_1 
       (.CI(\abs_diff_reg[4][3]_i_1_n_0 ),
        .CO({\abs_diff_reg[4][7]_i_1_n_0 ,\abs_diff_reg[4][7]_i_1_n_1 ,\abs_diff_reg[4][7]_i_1_n_2 ,\abs_diff_reg[4][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[4][7]_i_2_n_0 ,\abs_diff[4][7]_i_3_n_0 ,\abs_diff[4][7]_i_4_n_0 ,\abs_diff[4][7]_i_5_n_0 }),
        .O({\abs_diff_reg[4][7]_i_1_n_4 ,\abs_diff_reg[4][7]_i_1_n_5 ,\abs_diff_reg[4][7]_i_1_n_6 ,\abs_diff_reg[4][7]_i_1_n_7 }),
        .S({\abs_diff[4][7]_i_6_n_0 ,\abs_diff[4][7]_i_7_n_0 ,\abs_diff[4][7]_i_8_n_0 ,\abs_diff[4][7]_i_9_n_0 }));
  CARRY4 \abs_diff_reg[4][7]_i_10 
       (.CI(1'b0),
        .CO({\abs_diff_reg[4][7]_i_10_n_0 ,\abs_diff_reg[4][7]_i_10_n_1 ,\abs_diff_reg[4][7]_i_10_n_2 ,\abs_diff_reg[4][7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[4][7]_i_11_n_0 ,\abs_diff[4][7]_i_12_n_0 ,\abs_diff[4][7]_i_13_n_0 ,\abs_diff[4][7]_i_14_n_0 }),
        .O(\NLW_abs_diff_reg[4][7]_i_10_O_UNCONNECTED [3:0]),
        .S({\abs_diff[4][7]_i_15_n_0 ,\abs_diff[4][7]_i_16_n_0 ,\abs_diff[4][7]_i_17_n_0 ,\abs_diff[4][7]_i_18_n_0 }));
  FDRE \abs_diff_reg[4][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[4][8]_i_1_n_7 ),
        .Q(\abs_diff_reg[4]_6 [8]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[4][8]_i_1 
       (.CI(\abs_diff_reg[4][7]_i_1_n_0 ),
        .CO(\NLW_abs_diff_reg[4][8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_abs_diff_reg[4][8]_i_1_O_UNCONNECTED [3:1],\abs_diff_reg[4][8]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \abs_diff_reg[5][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[5][3]_i_1_n_7 ),
        .Q(\abs_diff_reg[5]_1 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[5][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[5][3]_i_1_n_6 ),
        .Q(\abs_diff_reg[5]_1 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[5][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[5][3]_i_1_n_5 ),
        .Q(\abs_diff_reg[5]_1 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[5][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[5][3]_i_1_n_4 ),
        .Q(\abs_diff_reg[5]_1 [3]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[5][3]_i_1 
       (.CI(1'b0),
        .CO({\abs_diff_reg[5][3]_i_1_n_0 ,\abs_diff_reg[5][3]_i_1_n_1 ,\abs_diff_reg[5][3]_i_1_n_2 ,\abs_diff_reg[5][3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\abs_diff[5][3]_i_2_n_0 ,\abs_diff[5][3]_i_3_n_0 ,\abs_diff[5][3]_i_4_n_0 ,\abs_diff[5][3]_i_5_n_0 }),
        .O({\abs_diff_reg[5][3]_i_1_n_4 ,\abs_diff_reg[5][3]_i_1_n_5 ,\abs_diff_reg[5][3]_i_1_n_6 ,\abs_diff_reg[5][3]_i_1_n_7 }),
        .S({\abs_diff[5][3]_i_6_n_0 ,\abs_diff[5][3]_i_7_n_0 ,\abs_diff[5][3]_i_8_n_0 ,\abs_diff[5][3]_i_9_n_0 }));
  FDRE \abs_diff_reg[5][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[5][7]_i_1_n_7 ),
        .Q(\abs_diff_reg[5]_1 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[5][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[5][7]_i_1_n_6 ),
        .Q(\abs_diff_reg[5]_1 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[5][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[5][7]_i_1_n_5 ),
        .Q(\abs_diff_reg[5]_1 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[5][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[5][7]_i_1_n_4 ),
        .Q(\abs_diff_reg[5]_1 [7]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[5][7]_i_1 
       (.CI(\abs_diff_reg[5][3]_i_1_n_0 ),
        .CO({\abs_diff_reg[5][7]_i_1_n_0 ,\abs_diff_reg[5][7]_i_1_n_1 ,\abs_diff_reg[5][7]_i_1_n_2 ,\abs_diff_reg[5][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[5][7]_i_2_n_0 ,\abs_diff[5][7]_i_3_n_0 ,\abs_diff[5][7]_i_4_n_0 ,\abs_diff[5][7]_i_5_n_0 }),
        .O({\abs_diff_reg[5][7]_i_1_n_4 ,\abs_diff_reg[5][7]_i_1_n_5 ,\abs_diff_reg[5][7]_i_1_n_6 ,\abs_diff_reg[5][7]_i_1_n_7 }),
        .S({\abs_diff[5][7]_i_6_n_0 ,\abs_diff[5][7]_i_7_n_0 ,\abs_diff[5][7]_i_8_n_0 ,\abs_diff[5][7]_i_9_n_0 }));
  CARRY4 \abs_diff_reg[5][7]_i_10 
       (.CI(1'b0),
        .CO({\abs_diff_reg[5][7]_i_10_n_0 ,\abs_diff_reg[5][7]_i_10_n_1 ,\abs_diff_reg[5][7]_i_10_n_2 ,\abs_diff_reg[5][7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[5][7]_i_11_n_0 ,\abs_diff[5][7]_i_12_n_0 ,\abs_diff[5][7]_i_13_n_0 ,\abs_diff[5][7]_i_14_n_0 }),
        .O(\NLW_abs_diff_reg[5][7]_i_10_O_UNCONNECTED [3:0]),
        .S({\abs_diff[5][7]_i_15_n_0 ,\abs_diff[5][7]_i_16_n_0 ,\abs_diff[5][7]_i_17_n_0 ,\abs_diff[5][7]_i_18_n_0 }));
  FDRE \abs_diff_reg[5][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[5][8]_i_1_n_7 ),
        .Q(\abs_diff_reg[5]_1 [8]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[5][8]_i_1 
       (.CI(\abs_diff_reg[5][7]_i_1_n_0 ),
        .CO(\NLW_abs_diff_reg[5][8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_abs_diff_reg[5][8]_i_1_O_UNCONNECTED [3:1],\abs_diff_reg[5][8]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \abs_diff_reg[6][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[6][3]_i_1_n_7 ),
        .Q(\abs_diff_reg[6]_2 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[6][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[6][3]_i_1_n_6 ),
        .Q(\abs_diff_reg[6]_2 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[6][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[6][3]_i_1_n_5 ),
        .Q(\abs_diff_reg[6]_2 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[6][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[6][3]_i_1_n_4 ),
        .Q(\abs_diff_reg[6]_2 [3]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[6][3]_i_1 
       (.CI(1'b0),
        .CO({\abs_diff_reg[6][3]_i_1_n_0 ,\abs_diff_reg[6][3]_i_1_n_1 ,\abs_diff_reg[6][3]_i_1_n_2 ,\abs_diff_reg[6][3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\abs_diff[6][3]_i_2_n_0 ,\abs_diff[6][3]_i_3_n_0 ,\abs_diff[6][3]_i_4_n_0 ,\abs_diff[6][3]_i_5_n_0 }),
        .O({\abs_diff_reg[6][3]_i_1_n_4 ,\abs_diff_reg[6][3]_i_1_n_5 ,\abs_diff_reg[6][3]_i_1_n_6 ,\abs_diff_reg[6][3]_i_1_n_7 }),
        .S({\abs_diff[6][3]_i_6_n_0 ,\abs_diff[6][3]_i_7_n_0 ,\abs_diff[6][3]_i_8_n_0 ,\abs_diff[6][3]_i_9_n_0 }));
  FDRE \abs_diff_reg[6][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[6][7]_i_1_n_7 ),
        .Q(\abs_diff_reg[6]_2 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[6][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[6][7]_i_1_n_6 ),
        .Q(\abs_diff_reg[6]_2 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[6][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[6][7]_i_1_n_5 ),
        .Q(\abs_diff_reg[6]_2 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[6][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[6][7]_i_1_n_4 ),
        .Q(\abs_diff_reg[6]_2 [7]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[6][7]_i_1 
       (.CI(\abs_diff_reg[6][3]_i_1_n_0 ),
        .CO({\abs_diff_reg[6][7]_i_1_n_0 ,\abs_diff_reg[6][7]_i_1_n_1 ,\abs_diff_reg[6][7]_i_1_n_2 ,\abs_diff_reg[6][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[6][7]_i_2_n_0 ,\abs_diff[6][7]_i_3_n_0 ,\abs_diff[6][7]_i_4_n_0 ,\abs_diff[6][7]_i_5_n_0 }),
        .O({\abs_diff_reg[6][7]_i_1_n_4 ,\abs_diff_reg[6][7]_i_1_n_5 ,\abs_diff_reg[6][7]_i_1_n_6 ,\abs_diff_reg[6][7]_i_1_n_7 }),
        .S({\abs_diff[6][7]_i_6_n_0 ,\abs_diff[6][7]_i_7_n_0 ,\abs_diff[6][7]_i_8_n_0 ,\abs_diff[6][7]_i_9_n_0 }));
  CARRY4 \abs_diff_reg[6][7]_i_10 
       (.CI(1'b0),
        .CO({\abs_diff_reg[6][7]_i_10_n_0 ,\abs_diff_reg[6][7]_i_10_n_1 ,\abs_diff_reg[6][7]_i_10_n_2 ,\abs_diff_reg[6][7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[6][7]_i_11_n_0 ,\abs_diff[6][7]_i_12_n_0 ,\abs_diff[6][7]_i_13_n_0 ,\abs_diff[6][7]_i_14_n_0 }),
        .O(\NLW_abs_diff_reg[6][7]_i_10_O_UNCONNECTED [3:0]),
        .S({\abs_diff[6][7]_i_15_n_0 ,\abs_diff[6][7]_i_16_n_0 ,\abs_diff[6][7]_i_17_n_0 ,\abs_diff[6][7]_i_18_n_0 }));
  FDRE \abs_diff_reg[6][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[6][8]_i_1_n_7 ),
        .Q(\abs_diff_reg[6]_2 [8]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[6][8]_i_1 
       (.CI(\abs_diff_reg[6][7]_i_1_n_0 ),
        .CO(\NLW_abs_diff_reg[6][8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_abs_diff_reg[6][8]_i_1_O_UNCONNECTED [3:1],\abs_diff_reg[6][8]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \abs_diff_reg[7][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[7][3]_i_1_n_7 ),
        .Q(\abs_diff_reg[7]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[7][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[7][3]_i_1_n_6 ),
        .Q(\abs_diff_reg[7]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[7][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[7][3]_i_1_n_5 ),
        .Q(\abs_diff_reg[7]_0 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[7][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[7][3]_i_1_n_4 ),
        .Q(\abs_diff_reg[7]_0 [3]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[7][3]_i_1 
       (.CI(1'b0),
        .CO({\abs_diff_reg[7][3]_i_1_n_0 ,\abs_diff_reg[7][3]_i_1_n_1 ,\abs_diff_reg[7][3]_i_1_n_2 ,\abs_diff_reg[7][3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\abs_diff[7][3]_i_2_n_0 ,\abs_diff[7][3]_i_3_n_0 ,\abs_diff[7][3]_i_4_n_0 ,\abs_diff[7][3]_i_5_n_0 }),
        .O({\abs_diff_reg[7][3]_i_1_n_4 ,\abs_diff_reg[7][3]_i_1_n_5 ,\abs_diff_reg[7][3]_i_1_n_6 ,\abs_diff_reg[7][3]_i_1_n_7 }),
        .S({\abs_diff[7][3]_i_6_n_0 ,\abs_diff[7][3]_i_7_n_0 ,\abs_diff[7][3]_i_8_n_0 ,\abs_diff[7][3]_i_9_n_0 }));
  FDRE \abs_diff_reg[7][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[7][7]_i_1_n_7 ),
        .Q(\abs_diff_reg[7]_0 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[7][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[7][7]_i_1_n_6 ),
        .Q(\abs_diff_reg[7]_0 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[7][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[7][7]_i_1_n_5 ),
        .Q(\abs_diff_reg[7]_0 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[7][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[7][7]_i_1_n_4 ),
        .Q(\abs_diff_reg[7]_0 [7]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[7][7]_i_1 
       (.CI(\abs_diff_reg[7][3]_i_1_n_0 ),
        .CO({\abs_diff_reg[7][7]_i_1_n_0 ,\abs_diff_reg[7][7]_i_1_n_1 ,\abs_diff_reg[7][7]_i_1_n_2 ,\abs_diff_reg[7][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[7][7]_i_2_n_0 ,\abs_diff[7][7]_i_3_n_0 ,\abs_diff[7][7]_i_4_n_0 ,\abs_diff[7][7]_i_5_n_0 }),
        .O({\abs_diff_reg[7][7]_i_1_n_4 ,\abs_diff_reg[7][7]_i_1_n_5 ,\abs_diff_reg[7][7]_i_1_n_6 ,\abs_diff_reg[7][7]_i_1_n_7 }),
        .S({\abs_diff[7][7]_i_6_n_0 ,\abs_diff[7][7]_i_7_n_0 ,\abs_diff[7][7]_i_8_n_0 ,\abs_diff[7][7]_i_9_n_0 }));
  CARRY4 \abs_diff_reg[7][7]_i_10 
       (.CI(1'b0),
        .CO({\abs_diff_reg[7][7]_i_10_n_0 ,\abs_diff_reg[7][7]_i_10_n_1 ,\abs_diff_reg[7][7]_i_10_n_2 ,\abs_diff_reg[7][7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[7][7]_i_11_n_0 ,\abs_diff[7][7]_i_12_n_0 ,\abs_diff[7][7]_i_13_n_0 ,\abs_diff[7][7]_i_14_n_0 }),
        .O(\NLW_abs_diff_reg[7][7]_i_10_O_UNCONNECTED [3:0]),
        .S({\abs_diff[7][7]_i_15_n_0 ,\abs_diff[7][7]_i_16_n_0 ,\abs_diff[7][7]_i_17_n_0 ,\abs_diff[7][7]_i_18_n_0 }));
  FDRE \abs_diff_reg[7][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[7][8]_i_1_n_7 ),
        .Q(\abs_diff_reg[7]_0 [8]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[7][8]_i_1 
       (.CI(\abs_diff_reg[7][7]_i_1_n_0 ),
        .CO(\NLW_abs_diff_reg[7][8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_abs_diff_reg[7][8]_i_1_O_UNCONNECTED [3:1],\abs_diff_reg[7][8]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \abs_diff_reg[8][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[8][3]_i_1_n_7 ),
        .Q(\abs_diff_reg[8]_15 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[8][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[8][3]_i_1_n_6 ),
        .Q(\abs_diff_reg[8]_15 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[8][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[8][3]_i_1_n_5 ),
        .Q(\abs_diff_reg[8]_15 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[8][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[8][3]_i_1_n_4 ),
        .Q(\abs_diff_reg[8]_15 [3]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[8][3]_i_1 
       (.CI(1'b0),
        .CO({\abs_diff_reg[8][3]_i_1_n_0 ,\abs_diff_reg[8][3]_i_1_n_1 ,\abs_diff_reg[8][3]_i_1_n_2 ,\abs_diff_reg[8][3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\abs_diff[8][3]_i_2_n_0 ,\abs_diff[8][3]_i_3_n_0 ,\abs_diff[8][3]_i_4_n_0 ,\abs_diff[8][3]_i_5_n_0 }),
        .O({\abs_diff_reg[8][3]_i_1_n_4 ,\abs_diff_reg[8][3]_i_1_n_5 ,\abs_diff_reg[8][3]_i_1_n_6 ,\abs_diff_reg[8][3]_i_1_n_7 }),
        .S({\abs_diff[8][3]_i_6_n_0 ,\abs_diff[8][3]_i_7_n_0 ,\abs_diff[8][3]_i_8_n_0 ,\abs_diff[8][3]_i_9_n_0 }));
  FDRE \abs_diff_reg[8][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[8][7]_i_1_n_7 ),
        .Q(\abs_diff_reg[8]_15 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[8][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[8][7]_i_1_n_6 ),
        .Q(\abs_diff_reg[8]_15 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[8][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[8][7]_i_1_n_5 ),
        .Q(\abs_diff_reg[8]_15 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[8][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[8][7]_i_1_n_4 ),
        .Q(\abs_diff_reg[8]_15 [7]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[8][7]_i_1 
       (.CI(\abs_diff_reg[8][3]_i_1_n_0 ),
        .CO({\abs_diff_reg[8][7]_i_1_n_0 ,\abs_diff_reg[8][7]_i_1_n_1 ,\abs_diff_reg[8][7]_i_1_n_2 ,\abs_diff_reg[8][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[8][7]_i_2_n_0 ,\abs_diff[8][7]_i_3_n_0 ,\abs_diff[8][7]_i_4_n_0 ,\abs_diff[8][7]_i_5_n_0 }),
        .O({\abs_diff_reg[8][7]_i_1_n_4 ,\abs_diff_reg[8][7]_i_1_n_5 ,\abs_diff_reg[8][7]_i_1_n_6 ,\abs_diff_reg[8][7]_i_1_n_7 }),
        .S({\abs_diff[8][7]_i_6_n_0 ,\abs_diff[8][7]_i_7_n_0 ,\abs_diff[8][7]_i_8_n_0 ,\abs_diff[8][7]_i_9_n_0 }));
  CARRY4 \abs_diff_reg[8][7]_i_10 
       (.CI(1'b0),
        .CO({\abs_diff_reg[8][7]_i_10_n_0 ,\abs_diff_reg[8][7]_i_10_n_1 ,\abs_diff_reg[8][7]_i_10_n_2 ,\abs_diff_reg[8][7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[8][7]_i_11_n_0 ,\abs_diff[8][7]_i_12_n_0 ,\abs_diff[8][7]_i_13_n_0 ,\abs_diff[8][7]_i_14_n_0 }),
        .O(\NLW_abs_diff_reg[8][7]_i_10_O_UNCONNECTED [3:0]),
        .S({\abs_diff[8][7]_i_15_n_0 ,\abs_diff[8][7]_i_16_n_0 ,\abs_diff[8][7]_i_17_n_0 ,\abs_diff[8][7]_i_18_n_0 }));
  FDRE \abs_diff_reg[8][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[8][8]_i_1_n_7 ),
        .Q(\abs_diff_reg[8]_15 [8]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[8][8]_i_1 
       (.CI(\abs_diff_reg[8][7]_i_1_n_0 ),
        .CO(\NLW_abs_diff_reg[8][8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_abs_diff_reg[8][8]_i_1_O_UNCONNECTED [3:1],\abs_diff_reg[8][8]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \abs_diff_reg[9][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[9][3]_i_1_n_7 ),
        .Q(\abs_diff_reg[9]_11 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[9][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[9][3]_i_1_n_6 ),
        .Q(\abs_diff_reg[9]_11 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[9][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[9][3]_i_1_n_5 ),
        .Q(\abs_diff_reg[9]_11 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[9][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[9][3]_i_1_n_4 ),
        .Q(\abs_diff_reg[9]_11 [3]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[9][3]_i_1 
       (.CI(1'b0),
        .CO({\abs_diff_reg[9][3]_i_1_n_0 ,\abs_diff_reg[9][3]_i_1_n_1 ,\abs_diff_reg[9][3]_i_1_n_2 ,\abs_diff_reg[9][3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\abs_diff[9][3]_i_2_n_0 ,\abs_diff[9][3]_i_3_n_0 ,\abs_diff[9][3]_i_4_n_0 ,\abs_diff[9][3]_i_5_n_0 }),
        .O({\abs_diff_reg[9][3]_i_1_n_4 ,\abs_diff_reg[9][3]_i_1_n_5 ,\abs_diff_reg[9][3]_i_1_n_6 ,\abs_diff_reg[9][3]_i_1_n_7 }),
        .S({\abs_diff[9][3]_i_6_n_0 ,\abs_diff[9][3]_i_7_n_0 ,\abs_diff[9][3]_i_8_n_0 ,\abs_diff[9][3]_i_9_n_0 }));
  FDRE \abs_diff_reg[9][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[9][7]_i_1_n_7 ),
        .Q(\abs_diff_reg[9]_11 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[9][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[9][7]_i_1_n_6 ),
        .Q(\abs_diff_reg[9]_11 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[9][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[9][7]_i_1_n_5 ),
        .Q(\abs_diff_reg[9]_11 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \abs_diff_reg[9][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[9][7]_i_1_n_4 ),
        .Q(\abs_diff_reg[9]_11 [7]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[9][7]_i_1 
       (.CI(\abs_diff_reg[9][3]_i_1_n_0 ),
        .CO({\abs_diff_reg[9][7]_i_1_n_0 ,\abs_diff_reg[9][7]_i_1_n_1 ,\abs_diff_reg[9][7]_i_1_n_2 ,\abs_diff_reg[9][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[9][7]_i_2_n_0 ,\abs_diff[9][7]_i_3_n_0 ,\abs_diff[9][7]_i_4_n_0 ,\abs_diff[9][7]_i_5_n_0 }),
        .O({\abs_diff_reg[9][7]_i_1_n_4 ,\abs_diff_reg[9][7]_i_1_n_5 ,\abs_diff_reg[9][7]_i_1_n_6 ,\abs_diff_reg[9][7]_i_1_n_7 }),
        .S({\abs_diff[9][7]_i_6_n_0 ,\abs_diff[9][7]_i_7_n_0 ,\abs_diff[9][7]_i_8_n_0 ,\abs_diff[9][7]_i_9_n_0 }));
  CARRY4 \abs_diff_reg[9][7]_i_10 
       (.CI(1'b0),
        .CO({\abs_diff_reg[9][7]_i_10_n_0 ,\abs_diff_reg[9][7]_i_10_n_1 ,\abs_diff_reg[9][7]_i_10_n_2 ,\abs_diff_reg[9][7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_diff[9][7]_i_11_n_0 ,\abs_diff[9][7]_i_12_n_0 ,\abs_diff[9][7]_i_13_n_0 ,\abs_diff[9][7]_i_14_n_0 }),
        .O(\NLW_abs_diff_reg[9][7]_i_10_O_UNCONNECTED [3:0]),
        .S({\abs_diff[9][7]_i_15_n_0 ,\abs_diff[9][7]_i_16_n_0 ,\abs_diff[9][7]_i_17_n_0 ,\abs_diff[9][7]_i_18_n_0 }));
  FDRE \abs_diff_reg[9][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\abs_diff_reg[9][8]_i_1_n_7 ),
        .Q(\abs_diff_reg[9]_11 [8]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \abs_diff_reg[9][8]_i_1 
       (.CI(\abs_diff_reg[9][7]_i_1_n_0 ),
        .CO(\NLW_abs_diff_reg[9][8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_abs_diff_reg[9][8]_i_1_O_UNCONNECTED [3:1],\abs_diff_reg[9][8]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
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
        .CE(axi_awready_i_2_n_0),
        .D(s00_axi_awaddr[0]),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready_i_2_n_0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready_i_2_n_0),
        .D(s00_axi_awaddr[2]),
        .Q(p_0_in[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready_i_2_n_0),
        .D(s00_axi_awaddr[3]),
        .Q(p_0_in[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(s00_axi_awready),
        .R(axi_awready_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_reg_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_4 
       (.I0(\slv_reg3_reg_n_0_[0] ),
        .I1(\slv_reg2_reg_n_0_[0] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[0] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[0] ),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_5 
       (.I0(\slv_reg7_reg_n_0_[0] ),
        .I1(\slv_reg6_reg_n_0_[0] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[0] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[0] ),
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
       (.I0(\slv_reg3_reg_n_0_[10] ),
        .I1(\slv_reg2_reg_n_0_[10] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[10] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[10] ),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_5 
       (.I0(\slv_reg7_reg_n_0_[10] ),
        .I1(\slv_reg6_reg_n_0_[10] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[10] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[10] ),
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
       (.I0(\slv_reg3_reg_n_0_[11] ),
        .I1(\slv_reg2_reg_n_0_[11] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[11] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[11] ),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_5 
       (.I0(\slv_reg7_reg_n_0_[11] ),
        .I1(\slv_reg6_reg_n_0_[11] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[11] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[11] ),
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
       (.I0(\slv_reg3_reg_n_0_[12] ),
        .I1(\slv_reg2_reg_n_0_[12] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[12] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[12] ),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_5 
       (.I0(\slv_reg7_reg_n_0_[12] ),
        .I1(\slv_reg6_reg_n_0_[12] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[12] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[12] ),
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
       (.I0(\slv_reg3_reg_n_0_[13] ),
        .I1(\slv_reg2_reg_n_0_[13] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[13] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[13] ),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_5 
       (.I0(\slv_reg7_reg_n_0_[13] ),
        .I1(\slv_reg6_reg_n_0_[13] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[13] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[13] ),
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
       (.I0(\slv_reg3_reg_n_0_[14] ),
        .I1(\slv_reg2_reg_n_0_[14] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[14] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[14] ),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_5 
       (.I0(\slv_reg7_reg_n_0_[14] ),
        .I1(\slv_reg6_reg_n_0_[14] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[14] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[14] ),
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
       (.I0(\slv_reg3_reg_n_0_[15] ),
        .I1(\slv_reg2_reg_n_0_[15] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[15] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[15] ),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_5 
       (.I0(\slv_reg7_reg_n_0_[15] ),
        .I1(\slv_reg6_reg_n_0_[15] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[15] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[15] ),
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
       (.I0(\slv_reg3_reg_n_0_[1] ),
        .I1(\slv_reg2_reg_n_0_[1] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[1] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[1] ),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_5 
       (.I0(\slv_reg7_reg_n_0_[1] ),
        .I1(\slv_reg6_reg_n_0_[1] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[1] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[1] ),
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
       (.I0(\slv_reg3_reg_n_0_[2] ),
        .I1(\slv_reg2_reg_n_0_[2] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[2] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[2] ),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_5 
       (.I0(\slv_reg7_reg_n_0_[2] ),
        .I1(\slv_reg6_reg_n_0_[2] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[2] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[2] ),
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
    \axi_rdata[31]_i_5 
       (.I0(\slv_reg3_reg_n_0_[31] ),
        .I1(\slv_reg2_reg_n_0_[31] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[31] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[31] ),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_6 
       (.I0(\slv_reg7_reg_n_0_[31] ),
        .I1(\slv_reg6_reg_n_0_[31] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[31] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[31] ),
        .O(\axi_rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_7 
       (.I0(slv_reg11[31]),
        .I1(slv_reg10[31]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[31]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[31] ),
        .O(\axi_rdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_8 
       (.I0(slv_reg15[31]),
        .I1(slv_reg14[31]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[31]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[31]),
        .O(\axi_rdata[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_4 
       (.I0(\slv_reg3_reg_n_0_[3] ),
        .I1(\slv_reg2_reg_n_0_[3] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[3] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[3] ),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_5 
       (.I0(\slv_reg7_reg_n_0_[3] ),
        .I1(\slv_reg6_reg_n_0_[3] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[3] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[3] ),
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
       (.I0(\slv_reg3_reg_n_0_[4] ),
        .I1(\slv_reg2_reg_n_0_[4] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[4] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_5 
       (.I0(\slv_reg7_reg_n_0_[4] ),
        .I1(\slv_reg6_reg_n_0_[4] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[4] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[4] ),
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
       (.I0(\slv_reg3_reg_n_0_[5] ),
        .I1(\slv_reg2_reg_n_0_[5] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[5] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[5] ),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_5 
       (.I0(\slv_reg7_reg_n_0_[5] ),
        .I1(\slv_reg6_reg_n_0_[5] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[5] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[5] ),
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
       (.I0(\slv_reg3_reg_n_0_[6] ),
        .I1(\slv_reg2_reg_n_0_[6] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[6] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[6] ),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_5 
       (.I0(\slv_reg7_reg_n_0_[6] ),
        .I1(\slv_reg6_reg_n_0_[6] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[6] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[6] ),
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
       (.I0(\slv_reg3_reg_n_0_[7] ),
        .I1(\slv_reg2_reg_n_0_[7] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[7] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[7] ),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_5 
       (.I0(\slv_reg7_reg_n_0_[7] ),
        .I1(\slv_reg6_reg_n_0_[7] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[7] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[7] ),
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
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_4 
       (.I0(\slv_reg3_reg_n_0_[8] ),
        .I1(\slv_reg2_reg_n_0_[8] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[8] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[8] ),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_5 
       (.I0(\slv_reg7_reg_n_0_[8] ),
        .I1(\slv_reg6_reg_n_0_[8] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[8] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[8] ),
        .O(\axi_rdata[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_6 
       (.I0(slv_reg11[8]),
        .I1(slv_reg10[8]),
        .I2(axi_araddr[3]),
        .I3(slv_reg9[8]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg8_reg_n_0_[8] ),
        .O(\axi_rdata[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_7 
       (.I0(slv_reg15[8]),
        .I1(slv_reg14[8]),
        .I2(axi_araddr[3]),
        .I3(slv_reg13[8]),
        .I4(axi_araddr[2]),
        .I5(slv_reg12[8]),
        .O(\axi_rdata[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_4 
       (.I0(\slv_reg3_reg_n_0_[9] ),
        .I1(\slv_reg2_reg_n_0_[9] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[9] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[9] ),
        .O(\axi_rdata[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_5 
       (.I0(\slv_reg7_reg_n_0_[9] ),
        .I1(\slv_reg6_reg_n_0_[9] ),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[9] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[9] ),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[31]_i_2 
       (.I0(\axi_rdata_reg[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[31]_i_4_n_0 ),
        .O(reg_data_out[31]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[31]_i_3 
       (.I0(\axi_rdata[31]_i_5_n_0 ),
        .I1(\axi_rdata[31]_i_6_n_0 ),
        .O(\axi_rdata_reg[31]_i_3_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[31]_i_4 
       (.I0(\axi_rdata[31]_i_7_n_0 ),
        .I1(\axi_rdata[31]_i_8_n_0 ),
        .O(\axi_rdata_reg[31]_i_4_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
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
        .CE(E),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata_reg[8]_i_2_n_0 ),
        .I1(\axi_rdata_reg[8]_i_3_n_0 ),
        .O(reg_data_out[8]),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[8]_i_2 
       (.I0(\axi_rdata[8]_i_4_n_0 ),
        .I1(\axi_rdata[8]_i_5_n_0 ),
        .O(\axi_rdata_reg[8]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[8]_i_3 
       (.I0(\axi_rdata[8]_i_6_n_0 ),
        .I1(\axi_rdata[8]_i_7_n_0 ),
        .O(\axi_rdata_reg[8]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
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
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \slv_reg0[15]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \slv_reg0[23]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \slv_reg0[31]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .I3(s00_axi_wready),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \slv_reg0[7]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
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
        .Q(\slv_reg0_reg_n_0_[1] ),
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
        .Q(\slv_reg0_reg_n_0_[2] ),
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
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg10[15]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[1]),
        .O(\slv_reg10[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg10[23]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[1]),
        .O(\slv_reg10[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg10[31]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[1]),
        .O(\slv_reg10[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg10[7]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[1]),
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
    .INIT(64'h0000400000000000)) 
    \slv_reg11[15]_i_1 
       (.I0(p_0_in[2]),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg11[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \slv_reg11[23]_i_1 
       (.I0(p_0_in[2]),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg11[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \slv_reg11[31]_i_1 
       (.I0(p_0_in[2]),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg11[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \slv_reg11[7]_i_1 
       (.I0(p_0_in[2]),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
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
    .INIT(64'h0000040000000000)) 
    \slv_reg12[15]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[2]),
        .O(\slv_reg12[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg12[23]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[2]),
        .O(\slv_reg12[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg12[31]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[2]),
        .O(\slv_reg12[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg12[7]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[2]),
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
    .INIT(64'h0000400000000000)) 
    \slv_reg13[15]_i_1 
       (.I0(p_0_in[1]),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg13[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \slv_reg13[23]_i_1 
       (.I0(p_0_in[1]),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg13[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \slv_reg13[31]_i_1 
       (.I0(p_0_in[1]),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg13[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \slv_reg13[7]_i_1 
       (.I0(p_0_in[1]),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
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
    .INIT(64'h0000400000000000)) 
    \slv_reg14[15]_i_1 
       (.I0(p_0_in[0]),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[1]),
        .O(\slv_reg14[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \slv_reg14[23]_i_1 
       (.I0(p_0_in[0]),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[1]),
        .O(\slv_reg14[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \slv_reg14[31]_i_1 
       (.I0(p_0_in[0]),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[1]),
        .O(\slv_reg14[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \slv_reg14[7]_i_1 
       (.I0(p_0_in[0]),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[1]),
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
    .INIT(64'h0000800000000000)) 
    \slv_reg15[15]_i_1 
       (.I0(p_0_in[2]),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg15[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[23]_i_1 
       (.I0(p_0_in[2]),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg15[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[31]_i_1 
       (.I0(p_0_in[2]),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg15[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[7]_i_1 
       (.I0(p_0_in[2]),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
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
    .INIT(64'h0000010000000000)) 
    \slv_reg1[15]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(s00_axi_wstrb[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \slv_reg1[23]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(s00_axi_wstrb[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \slv_reg1[31]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(s00_axi_wstrb[3]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \slv_reg1[7]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(s00_axi_wstrb[0]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
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
        .Q(\slv_reg1_reg_n_0_[1] ),
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
        .Q(\slv_reg1_reg_n_0_[2] ),
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
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \slv_reg2[15]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(s00_axi_wstrb[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \slv_reg2[23]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(s00_axi_wstrb[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \slv_reg2[31]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(s00_axi_wstrb[3]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \slv_reg2[7]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(s00_axi_wstrb[0]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg2_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg2_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg2_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg2_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg2_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg2_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg2_reg_n_0_[15] ),
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
        .Q(\slv_reg2_reg_n_0_[1] ),
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
        .Q(\slv_reg2_reg_n_0_[2] ),
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
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg2_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg2_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg2_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg2_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg2_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg2_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg3[15]_i_1 
       (.I0(p_0_in[3]),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg3[23]_i_1 
       (.I0(p_0_in[3]),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg3[31]_i_1 
       (.I0(p_0_in[3]),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg3[7]_i_1 
       (.I0(p_0_in[3]),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg3_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg3_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg3_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg3_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg3_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg3_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg3_reg_n_0_[15] ),
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
        .Q(\slv_reg3_reg_n_0_[1] ),
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
        .Q(\slv_reg3_reg_n_0_[2] ),
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
        .Q(\slv_reg3_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg3_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg3_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg3_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg3_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg3_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg3_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \slv_reg4[15]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[2]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \slv_reg4[23]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \slv_reg4[31]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[3]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[2]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \slv_reg4[7]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[0]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[2]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg4_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg4_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg4_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg4_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg4_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg4_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg4_reg_n_0_[15] ),
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
        .Q(\slv_reg4_reg_n_0_[1] ),
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
        .Q(\slv_reg4_reg_n_0_[2] ),
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
        .Q(\slv_reg4_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg4_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg4_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg4_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg4_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg4_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg4_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg5[15]_i_1 
       (.I0(p_0_in[3]),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg5[23]_i_1 
       (.I0(p_0_in[3]),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg5[31]_i_1 
       (.I0(p_0_in[3]),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg5[7]_i_1 
       (.I0(p_0_in[3]),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg5_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg5_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg5_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg5_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg5_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg5_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg5_reg_n_0_[15] ),
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
        .Q(\slv_reg5_reg_n_0_[1] ),
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
        .Q(\slv_reg5_reg_n_0_[2] ),
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
        .Q(\slv_reg5_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg5_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg5_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg5_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg5_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg5_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg5_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg6[15]_i_1 
       (.I0(p_0_in[3]),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[1]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg6[23]_i_1 
       (.I0(p_0_in[3]),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[1]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg6[31]_i_1 
       (.I0(p_0_in[3]),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[1]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg6[7]_i_1 
       (.I0(p_0_in[3]),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[1]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg6_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg6_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg6_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg6_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg6_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg6_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg6_reg_n_0_[15] ),
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
        .Q(\slv_reg6_reg_n_0_[1] ),
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
        .Q(\slv_reg6_reg_n_0_[2] ),
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
        .Q(\slv_reg6_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg6_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg6_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg6_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg6_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg6_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg6_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \slv_reg7[15]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \slv_reg7[23]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \slv_reg7[31]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \slv_reg7[7]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg7_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg7_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg7_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg7_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg7_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg7_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg7_reg_n_0_[15] ),
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
        .Q(\slv_reg7_reg_n_0_[1] ),
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
        .Q(\slv_reg7_reg_n_0_[2] ),
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
        .Q(\slv_reg7_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg7_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg7_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg7_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg7_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg7_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg7_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[10]_i_1 
       (.I0(s00_axi_wdata[10]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[11]_i_1 
       (.I0(s00_axi_wdata[11]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[12]_i_1 
       (.I0(s00_axi_wdata[12]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[13]_i_1 
       (.I0(s00_axi_wdata[13]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[14]_i_1 
       (.I0(s00_axi_wdata[14]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8888888888888)) 
    \slv_reg8[15]_i_1 
       (.I0(slv_reg8),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(\slv_reg8[31]_i_4_n_0 ),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg8[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[15]_i_2 
       (.I0(s00_axi_wdata[15]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[16]_i_1 
       (.I0(s00_axi_wdata[16]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[17]_i_1 
       (.I0(s00_axi_wdata[17]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[18]_i_1 
       (.I0(s00_axi_wdata[18]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[19]_i_1 
       (.I0(s00_axi_wdata[19]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[20]_i_1 
       (.I0(s00_axi_wdata[20]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[21]_i_1 
       (.I0(s00_axi_wdata[21]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[22]_i_1 
       (.I0(s00_axi_wdata[22]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8888888888888)) 
    \slv_reg8[23]_i_1 
       (.I0(slv_reg8),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(\slv_reg8[31]_i_4_n_0 ),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg8[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[23]_i_2 
       (.I0(s00_axi_wdata[23]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[24]_i_1 
       (.I0(s00_axi_wdata[24]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[25]_i_1 
       (.I0(s00_axi_wdata[25]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[26]_i_1 
       (.I0(s00_axi_wdata[26]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[27]_i_1 
       (.I0(s00_axi_wdata[27]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[28]_i_1 
       (.I0(s00_axi_wdata[28]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[29]_i_1 
       (.I0(s00_axi_wdata[29]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[2]_i_1 
       (.I0(s00_axi_wdata[2]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[30]_i_1 
       (.I0(s00_axi_wdata[30]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8888888888888)) 
    \slv_reg8[31]_i_1 
       (.I0(slv_reg8),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(\slv_reg8[31]_i_4_n_0 ),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[3]),
        .I5(p_0_in[3]),
        .O(\slv_reg8[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[31]_i_2 
       (.I0(s00_axi_wdata[31]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \slv_reg8[31]_i_3 
       (.I0(\slv_reg9[12]_i_3_n_0 ),
        .I1(\slv_reg9[12]_i_4_n_0 ),
        .I2(\slv_reg9[12]_i_5_n_0 ),
        .I3(\slv_reg9[12]_i_6_n_0 ),
        .O(slv_reg8));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \slv_reg8[31]_i_4 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .O(\slv_reg8[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[3]_i_1 
       (.I0(s00_axi_wdata[3]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[4]_i_1 
       (.I0(s00_axi_wdata[4]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[5]_i_1 
       (.I0(s00_axi_wdata[5]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[6]_i_1 
       (.I0(s00_axi_wdata[6]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8888888888888)) 
    \slv_reg8[7]_i_1 
       (.I0(slv_reg8),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(\slv_reg8[31]_i_4_n_0 ),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg8[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[7]_i_2 
       (.I0(s00_axi_wdata[7]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[8]_i_1 
       (.I0(s00_axi_wdata[8]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg8[9]_i_1 
       (.I0(s00_axi_wdata[9]),
        .I1(s00_axi_wready),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\slv_reg8[9]_i_1_n_0 ));
  FDRE \slv_reg8_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(\slv_reg8[0]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(\slv_reg8[10]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(\slv_reg8[11]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(\slv_reg8[12]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(\slv_reg8[13]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(\slv_reg8[14]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(\slv_reg8[15]_i_2_n_0 ),
        .Q(\slv_reg8_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(\slv_reg8[16]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(\slv_reg8[17]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(\slv_reg8[18]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(\slv_reg8[19]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(\slv_reg8[1]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(\slv_reg8[20]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(\slv_reg8[21]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(\slv_reg8[22]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(\slv_reg8[23]_i_2_n_0 ),
        .Q(\slv_reg8_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(\slv_reg8[24]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(\slv_reg8[25]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(\slv_reg8[26]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(\slv_reg8[27]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(\slv_reg8[28]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(\slv_reg8[29]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(\slv_reg8[2]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(\slv_reg8[30]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(\slv_reg8[31]_i_2_n_0 ),
        .Q(\slv_reg8_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(\slv_reg8[3]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(\slv_reg8[4]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(\slv_reg8[5]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(\slv_reg8[6]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(\slv_reg8[7]_i_2_n_0 ),
        .Q(\slv_reg8_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(\slv_reg8[8]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(\slv_reg8[9]_i_1_n_0 ),
        .Q(\slv_reg8_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg9[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg9_reg[3]_i_2_n_7 ),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awready),
        .I5(s00_axi_wready),
        .O(\slv_reg9[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg9[10]_i_1 
       (.I0(s00_axi_wdata[10]),
        .I1(\slv_reg9_reg[11]_i_2_n_5 ),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awready),
        .I5(s00_axi_wready),
        .O(\slv_reg9[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg9[11]_i_1 
       (.I0(s00_axi_wdata[11]),
        .I1(\slv_reg9_reg[11]_i_2_n_4 ),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awready),
        .I5(s00_axi_wready),
        .O(\slv_reg9[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \slv_reg9[11]_i_10 
       (.I0(\slv_reg9[11]_i_6_n_0 ),
        .I1(\slv_reg9[11]_i_14_n_0 ),
        .I2(\slv_reg9_reg[11]_i_11_n_7 ),
        .I3(\slv_reg9_reg[11]_i_17_n_4 ),
        .I4(\slv_reg9_reg[11]_i_16_n_4 ),
        .I5(\slv_reg9_reg[11]_i_15_n_4 ),
        .O(\slv_reg9[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \slv_reg9[11]_i_12 
       (.I0(\slv_reg9_reg[12]_i_16_n_1 ),
        .I1(\slv_reg9_reg[12]_i_14_n_5 ),
        .I2(\slv_reg9_reg[12]_i_15_n_1 ),
        .O(\slv_reg9[11]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \slv_reg9[11]_i_13 
       (.I0(\slv_reg9_reg[12]_i_16_n_6 ),
        .I1(\slv_reg9_reg[12]_i_14_n_6 ),
        .I2(\slv_reg9_reg[12]_i_15_n_6 ),
        .O(\slv_reg9[11]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \slv_reg9[11]_i_14 
       (.I0(\slv_reg9_reg[12]_i_16_n_7 ),
        .I1(\slv_reg9_reg[12]_i_14_n_7 ),
        .I2(\slv_reg9_reg[12]_i_15_n_7 ),
        .O(\slv_reg9[11]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \slv_reg9[11]_i_19 
       (.I0(\slv_reg9_reg[11]_i_15_n_4 ),
        .I1(\slv_reg9_reg[11]_i_17_n_4 ),
        .I2(\slv_reg9_reg[11]_i_16_n_4 ),
        .O(\slv_reg9[11]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_20 
       (.I0(\slv_reg9_reg[12]_i_14_n_6 ),
        .I1(\slv_reg9_reg[12]_i_15_n_6 ),
        .I2(\slv_reg9_reg[12]_i_16_n_6 ),
        .O(\slv_reg9[11]_i_20_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_21 
       (.I0(\abs_diff_reg[15]_7 [7]),
        .I1(\abs_diff_reg[13]_8 [7]),
        .I2(\abs_diff_reg[14]_9 [7]),
        .O(\slv_reg9[11]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_22 
       (.I0(\abs_diff_reg[15]_7 [8]),
        .I1(\abs_diff_reg[13]_8 [8]),
        .I2(\abs_diff_reg[14]_9 [8]),
        .O(\slv_reg9[11]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_23 
       (.I0(\slv_reg9[11]_i_21_n_0 ),
        .I1(\abs_diff_reg[13]_8 [8]),
        .I2(\abs_diff_reg[15]_7 [8]),
        .I3(\abs_diff_reg[14]_9 [8]),
        .O(\slv_reg9[11]_i_23_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_24 
       (.I0(\abs_diff_reg[1]_4 [6]),
        .I1(\abs_diff_reg[2]_5 [6]),
        .I2(\abs_diff_reg[4]_6 [6]),
        .O(\slv_reg9[11]_i_24_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_25 
       (.I0(\abs_diff_reg[1]_4 [5]),
        .I1(\abs_diff_reg[2]_5 [5]),
        .I2(\abs_diff_reg[4]_6 [5]),
        .O(\slv_reg9[11]_i_25_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_26 
       (.I0(\abs_diff_reg[1]_4 [4]),
        .I1(\abs_diff_reg[2]_5 [4]),
        .I2(\abs_diff_reg[4]_6 [4]),
        .O(\slv_reg9[11]_i_26_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_27 
       (.I0(\abs_diff_reg[1]_4 [3]),
        .I1(\abs_diff_reg[2]_5 [3]),
        .I2(\abs_diff_reg[4]_6 [3]),
        .O(\slv_reg9[11]_i_27_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_28 
       (.I0(\abs_diff_reg[1]_4 [7]),
        .I1(\abs_diff_reg[2]_5 [7]),
        .I2(\abs_diff_reg[4]_6 [7]),
        .I3(\slv_reg9[11]_i_24_n_0 ),
        .O(\slv_reg9[11]_i_28_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_29 
       (.I0(\abs_diff_reg[1]_4 [6]),
        .I1(\abs_diff_reg[2]_5 [6]),
        .I2(\abs_diff_reg[4]_6 [6]),
        .I3(\slv_reg9[11]_i_25_n_0 ),
        .O(\slv_reg9[11]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \slv_reg9[11]_i_3 
       (.I0(\slv_reg9_reg[11]_i_11_n_1 ),
        .I1(\slv_reg9[11]_i_12_n_0 ),
        .I2(\slv_reg9_reg[12]_i_16_n_6 ),
        .I3(\slv_reg9_reg[12]_i_15_n_6 ),
        .I4(\slv_reg9_reg[12]_i_14_n_6 ),
        .O(\slv_reg9[11]_i_3_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_30 
       (.I0(\abs_diff_reg[1]_4 [5]),
        .I1(\abs_diff_reg[2]_5 [5]),
        .I2(\abs_diff_reg[4]_6 [5]),
        .I3(\slv_reg9[11]_i_26_n_0 ),
        .O(\slv_reg9[11]_i_30_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_31 
       (.I0(\abs_diff_reg[1]_4 [4]),
        .I1(\abs_diff_reg[2]_5 [4]),
        .I2(\abs_diff_reg[4]_6 [4]),
        .I3(\slv_reg9[11]_i_27_n_0 ),
        .O(\slv_reg9[11]_i_31_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_32 
       (.I0(\abs_diff_reg[5]_1 [6]),
        .I1(\abs_diff_reg[6]_2 [6]),
        .I2(\abs_diff_reg[3]_3 [6]),
        .O(\slv_reg9[11]_i_32_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_33 
       (.I0(\abs_diff_reg[5]_1 [5]),
        .I1(\abs_diff_reg[6]_2 [5]),
        .I2(\abs_diff_reg[3]_3 [5]),
        .O(\slv_reg9[11]_i_33_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_34 
       (.I0(\abs_diff_reg[5]_1 [4]),
        .I1(\abs_diff_reg[6]_2 [4]),
        .I2(\abs_diff_reg[3]_3 [4]),
        .O(\slv_reg9[11]_i_34_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_35 
       (.I0(\abs_diff_reg[5]_1 [3]),
        .I1(\abs_diff_reg[6]_2 [3]),
        .I2(\abs_diff_reg[3]_3 [3]),
        .O(\slv_reg9[11]_i_35_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_36 
       (.I0(\abs_diff_reg[5]_1 [7]),
        .I1(\abs_diff_reg[6]_2 [7]),
        .I2(\abs_diff_reg[3]_3 [7]),
        .I3(\slv_reg9[11]_i_32_n_0 ),
        .O(\slv_reg9[11]_i_36_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_37 
       (.I0(\abs_diff_reg[5]_1 [6]),
        .I1(\abs_diff_reg[6]_2 [6]),
        .I2(\abs_diff_reg[3]_3 [6]),
        .I3(\slv_reg9[11]_i_33_n_0 ),
        .O(\slv_reg9[11]_i_37_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_38 
       (.I0(\abs_diff_reg[5]_1 [5]),
        .I1(\abs_diff_reg[6]_2 [5]),
        .I2(\abs_diff_reg[3]_3 [5]),
        .I3(\slv_reg9[11]_i_34_n_0 ),
        .O(\slv_reg9[11]_i_38_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_39 
       (.I0(\abs_diff_reg[5]_1 [4]),
        .I1(\abs_diff_reg[6]_2 [4]),
        .I2(\abs_diff_reg[3]_3 [4]),
        .I3(\slv_reg9[11]_i_35_n_0 ),
        .O(\slv_reg9[11]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \slv_reg9[11]_i_4 
       (.I0(\slv_reg9_reg[11]_i_11_n_6 ),
        .I1(\slv_reg9[11]_i_13_n_0 ),
        .I2(\slv_reg9_reg[12]_i_16_n_7 ),
        .I3(\slv_reg9_reg[12]_i_15_n_7 ),
        .I4(\slv_reg9_reg[12]_i_14_n_7 ),
        .O(\slv_reg9[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_40 
       (.I0(\slv_reg9_reg[12]_i_34_n_5 ),
        .I1(\slv_reg9_reg[12]_i_35_n_5 ),
        .I2(\abs_diff_reg[7]_0 [6]),
        .O(\slv_reg9[11]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_41 
       (.I0(\slv_reg9_reg[12]_i_34_n_6 ),
        .I1(\slv_reg9_reg[12]_i_35_n_6 ),
        .I2(\abs_diff_reg[7]_0 [5]),
        .O(\slv_reg9[11]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_42 
       (.I0(\slv_reg9_reg[12]_i_34_n_7 ),
        .I1(\slv_reg9_reg[12]_i_35_n_7 ),
        .I2(\abs_diff_reg[7]_0 [4]),
        .O(\slv_reg9[11]_i_42_n_0 ));
  (* HLUTNM = "lutpair39" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_43 
       (.I0(\slv_reg9_reg[11]_i_56_n_4 ),
        .I1(\slv_reg9_reg[11]_i_57_n_4 ),
        .I2(\abs_diff_reg[7]_0 [3]),
        .O(\slv_reg9[11]_i_43_n_0 ));
  (* HLUTNM = "lutpair40" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_44 
       (.I0(\slv_reg9_reg[12]_i_34_n_4 ),
        .I1(\slv_reg9_reg[12]_i_35_n_4 ),
        .I2(\abs_diff_reg[7]_0 [7]),
        .I3(\slv_reg9[11]_i_40_n_0 ),
        .O(\slv_reg9[11]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_45 
       (.I0(\slv_reg9_reg[12]_i_34_n_5 ),
        .I1(\slv_reg9_reg[12]_i_35_n_5 ),
        .I2(\abs_diff_reg[7]_0 [6]),
        .I3(\slv_reg9[11]_i_41_n_0 ),
        .O(\slv_reg9[11]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_46 
       (.I0(\slv_reg9_reg[12]_i_34_n_6 ),
        .I1(\slv_reg9_reg[12]_i_35_n_6 ),
        .I2(\abs_diff_reg[7]_0 [5]),
        .I3(\slv_reg9[11]_i_42_n_0 ),
        .O(\slv_reg9[11]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_47 
       (.I0(\slv_reg9_reg[12]_i_34_n_7 ),
        .I1(\slv_reg9_reg[12]_i_35_n_7 ),
        .I2(\abs_diff_reg[7]_0 [4]),
        .I3(\slv_reg9[11]_i_43_n_0 ),
        .O(\slv_reg9[11]_i_47_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_48 
       (.I0(\abs_diff_reg[15]_7 [6]),
        .I1(\abs_diff_reg[13]_8 [6]),
        .I2(\abs_diff_reg[14]_9 [6]),
        .O(\slv_reg9[11]_i_48_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_49 
       (.I0(\abs_diff_reg[15]_7 [5]),
        .I1(\abs_diff_reg[13]_8 [5]),
        .I2(\abs_diff_reg[14]_9 [5]),
        .O(\slv_reg9[11]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \slv_reg9[11]_i_5 
       (.I0(\slv_reg9_reg[11]_i_11_n_7 ),
        .I1(\slv_reg9[11]_i_14_n_0 ),
        .I2(\slv_reg9_reg[11]_i_15_n_4 ),
        .I3(\slv_reg9_reg[11]_i_16_n_4 ),
        .I4(\slv_reg9_reg[11]_i_17_n_4 ),
        .O(\slv_reg9[11]_i_5_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_50 
       (.I0(\abs_diff_reg[15]_7 [4]),
        .I1(\abs_diff_reg[13]_8 [4]),
        .I2(\abs_diff_reg[14]_9 [4]),
        .O(\slv_reg9[11]_i_50_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_51 
       (.I0(\abs_diff_reg[15]_7 [3]),
        .I1(\abs_diff_reg[13]_8 [3]),
        .I2(\abs_diff_reg[14]_9 [3]),
        .O(\slv_reg9[11]_i_51_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_52 
       (.I0(\abs_diff_reg[15]_7 [7]),
        .I1(\abs_diff_reg[13]_8 [7]),
        .I2(\abs_diff_reg[14]_9 [7]),
        .I3(\slv_reg9[11]_i_48_n_0 ),
        .O(\slv_reg9[11]_i_52_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_53 
       (.I0(\abs_diff_reg[15]_7 [6]),
        .I1(\abs_diff_reg[13]_8 [6]),
        .I2(\abs_diff_reg[14]_9 [6]),
        .I3(\slv_reg9[11]_i_49_n_0 ),
        .O(\slv_reg9[11]_i_53_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_54 
       (.I0(\abs_diff_reg[15]_7 [5]),
        .I1(\abs_diff_reg[13]_8 [5]),
        .I2(\abs_diff_reg[14]_9 [5]),
        .I3(\slv_reg9[11]_i_50_n_0 ),
        .O(\slv_reg9[11]_i_54_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_55 
       (.I0(\abs_diff_reg[15]_7 [4]),
        .I1(\abs_diff_reg[13]_8 [4]),
        .I2(\abs_diff_reg[14]_9 [4]),
        .I3(\slv_reg9[11]_i_51_n_0 ),
        .O(\slv_reg9[11]_i_55_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_58 
       (.I0(\abs_diff_reg[11]_10 [2]),
        .I1(\abs_diff_reg[9]_11 [2]),
        .I2(\abs_diff_reg[10]_12 [2]),
        .O(\slv_reg9[11]_i_58_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_59 
       (.I0(\abs_diff_reg[11]_10 [1]),
        .I1(\abs_diff_reg[9]_11 [1]),
        .I2(\abs_diff_reg[10]_12 [1]),
        .O(\slv_reg9[11]_i_59_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \slv_reg9[11]_i_6 
       (.I0(\slv_reg9_reg[11]_i_18_n_4 ),
        .I1(\slv_reg9[11]_i_19_n_0 ),
        .I2(\slv_reg9_reg[11]_i_15_n_5 ),
        .I3(\slv_reg9_reg[11]_i_16_n_5 ),
        .I4(\slv_reg9_reg[11]_i_17_n_5 ),
        .O(\slv_reg9[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_60 
       (.I0(\abs_diff_reg[11]_10 [0]),
        .I1(\abs_diff_reg[9]_11 [0]),
        .I2(\abs_diff_reg[10]_12 [0]),
        .O(\slv_reg9[11]_i_60_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_61 
       (.I0(\abs_diff_reg[11]_10 [3]),
        .I1(\abs_diff_reg[9]_11 [3]),
        .I2(\abs_diff_reg[10]_12 [3]),
        .I3(\slv_reg9[11]_i_58_n_0 ),
        .O(\slv_reg9[11]_i_61_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_62 
       (.I0(\abs_diff_reg[11]_10 [2]),
        .I1(\abs_diff_reg[9]_11 [2]),
        .I2(\abs_diff_reg[10]_12 [2]),
        .I3(\slv_reg9[11]_i_59_n_0 ),
        .O(\slv_reg9[11]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_63 
       (.I0(\abs_diff_reg[11]_10 [1]),
        .I1(\abs_diff_reg[9]_11 [1]),
        .I2(\abs_diff_reg[10]_12 [1]),
        .I3(\slv_reg9[11]_i_60_n_0 ),
        .O(\slv_reg9[11]_i_63_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \slv_reg9[11]_i_64 
       (.I0(\abs_diff_reg[11]_10 [0]),
        .I1(\abs_diff_reg[9]_11 [0]),
        .I2(\abs_diff_reg[10]_12 [0]),
        .O(\slv_reg9[11]_i_64_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_65 
       (.I0(\abs_diff_reg[12]_13 [2]),
        .I1(\abs_diff_reg[0]_14 [2]),
        .I2(\abs_diff_reg[8]_15 [2]),
        .O(\slv_reg9[11]_i_65_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_66 
       (.I0(\abs_diff_reg[12]_13 [1]),
        .I1(\abs_diff_reg[0]_14 [1]),
        .I2(\abs_diff_reg[8]_15 [1]),
        .O(\slv_reg9[11]_i_66_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[11]_i_67 
       (.I0(\abs_diff_reg[12]_13 [0]),
        .I1(\abs_diff_reg[0]_14 [0]),
        .I2(\abs_diff_reg[8]_15 [0]),
        .O(\slv_reg9[11]_i_67_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_68 
       (.I0(\abs_diff_reg[12]_13 [3]),
        .I1(\abs_diff_reg[0]_14 [3]),
        .I2(\abs_diff_reg[8]_15 [3]),
        .I3(\slv_reg9[11]_i_65_n_0 ),
        .O(\slv_reg9[11]_i_68_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_69 
       (.I0(\abs_diff_reg[12]_13 [2]),
        .I1(\abs_diff_reg[0]_14 [2]),
        .I2(\abs_diff_reg[8]_15 [2]),
        .I3(\slv_reg9[11]_i_66_n_0 ),
        .O(\slv_reg9[11]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hE187871E871E1E78)) 
    \slv_reg9[11]_i_7 
       (.I0(\slv_reg9[11]_i_20_n_0 ),
        .I1(\slv_reg9_reg[11]_i_11_n_1 ),
        .I2(\slv_reg9_reg[12]_i_14_n_4 ),
        .I3(\slv_reg9_reg[12]_i_14_n_5 ),
        .I4(\slv_reg9_reg[12]_i_15_n_1 ),
        .I5(\slv_reg9_reg[12]_i_16_n_1 ),
        .O(\slv_reg9[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[11]_i_70 
       (.I0(\abs_diff_reg[12]_13 [1]),
        .I1(\abs_diff_reg[0]_14 [1]),
        .I2(\abs_diff_reg[8]_15 [1]),
        .I3(\slv_reg9[11]_i_67_n_0 ),
        .O(\slv_reg9[11]_i_70_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \slv_reg9[11]_i_71 
       (.I0(\abs_diff_reg[12]_13 [0]),
        .I1(\abs_diff_reg[0]_14 [0]),
        .I2(\abs_diff_reg[8]_15 [0]),
        .O(\slv_reg9[11]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \slv_reg9[11]_i_8 
       (.I0(\slv_reg9[11]_i_4_n_0 ),
        .I1(\slv_reg9[11]_i_12_n_0 ),
        .I2(\slv_reg9_reg[11]_i_11_n_1 ),
        .I3(\slv_reg9_reg[12]_i_14_n_6 ),
        .I4(\slv_reg9_reg[12]_i_15_n_6 ),
        .I5(\slv_reg9_reg[12]_i_16_n_6 ),
        .O(\slv_reg9[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \slv_reg9[11]_i_9 
       (.I0(\slv_reg9[11]_i_5_n_0 ),
        .I1(\slv_reg9[11]_i_13_n_0 ),
        .I2(\slv_reg9_reg[11]_i_11_n_6 ),
        .I3(\slv_reg9_reg[12]_i_14_n_7 ),
        .I4(\slv_reg9_reg[12]_i_15_n_7 ),
        .I5(\slv_reg9_reg[12]_i_16_n_7 ),
        .O(\slv_reg9[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    \slv_reg9[12]_i_1 
       (.I0(\slv_reg9[12]_i_3_n_0 ),
        .I1(\slv_reg9[12]_i_4_n_0 ),
        .I2(\slv_reg9[12]_i_5_n_0 ),
        .I3(\slv_reg9[12]_i_6_n_0 ),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(\slv_reg9[12]_i_7_n_0 ),
        .O(\slv_reg9[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg9[12]_i_10 
       (.I0(\slv_reg8_reg_n_0_[26] ),
        .I1(\slv_reg8_reg_n_0_[27] ),
        .I2(\slv_reg8_reg_n_0_[24] ),
        .I3(\slv_reg8_reg_n_0_[25] ),
        .O(\slv_reg9[12]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \slv_reg9[12]_i_11 
       (.I0(\slv_reg8_reg_n_0_[2] ),
        .I1(\slv_reg8_reg_n_0_[3] ),
        .I2(\slv_reg8_reg_n_0_[0] ),
        .I3(\slv_reg8_reg_n_0_[1] ),
        .O(\slv_reg9[12]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg9[12]_i_12 
       (.I0(\slv_reg8_reg_n_0_[10] ),
        .I1(\slv_reg8_reg_n_0_[11] ),
        .I2(\slv_reg8_reg_n_0_[8] ),
        .I3(\slv_reg8_reg_n_0_[9] ),
        .O(\slv_reg9[12]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h17FFE800)) 
    \slv_reg9[12]_i_13 
       (.I0(\slv_reg9_reg[12]_i_14_n_5 ),
        .I1(\slv_reg9_reg[12]_i_15_n_1 ),
        .I2(\slv_reg9_reg[12]_i_16_n_1 ),
        .I3(\slv_reg9_reg[12]_i_14_n_4 ),
        .I4(\slv_reg9_reg[12]_i_17_n_3 ),
        .O(\slv_reg9[12]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg9[12]_i_2 
       (.I0(s00_axi_wdata[12]),
        .I1(\slv_reg9_reg[12]_i_8_n_7 ),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awready),
        .I5(s00_axi_wready),
        .O(\slv_reg9[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[12]_i_20 
       (.I0(\slv_reg9_reg[12]_i_32_n_7 ),
        .I1(\slv_reg9_reg[12]_i_33_n_7 ),
        .I2(\abs_diff_reg[7]_0 [8]),
        .O(\slv_reg9[12]_i_20_n_0 ));
  (* HLUTNM = "lutpair40" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[12]_i_21 
       (.I0(\slv_reg9_reg[12]_i_34_n_4 ),
        .I1(\slv_reg9_reg[12]_i_35_n_4 ),
        .I2(\abs_diff_reg[7]_0 [7]),
        .O(\slv_reg9[12]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \slv_reg9[12]_i_24 
       (.I0(\abs_diff_reg[7]_0 [8]),
        .I1(\slv_reg9_reg[12]_i_33_n_7 ),
        .I2(\slv_reg9_reg[12]_i_32_n_7 ),
        .I3(\slv_reg9_reg[12]_1 ),
        .I4(O),
        .O(\slv_reg9[12]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[12]_i_25 
       (.I0(\slv_reg9[12]_i_21_n_0 ),
        .I1(\slv_reg9_reg[12]_i_33_n_7 ),
        .I2(\slv_reg9_reg[12]_i_32_n_7 ),
        .I3(\abs_diff_reg[7]_0 [8]),
        .O(\slv_reg9[12]_i_25_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[12]_i_26 
       (.I0(\abs_diff_reg[5]_1 [7]),
        .I1(\abs_diff_reg[6]_2 [7]),
        .I2(\abs_diff_reg[3]_3 [7]),
        .O(\slv_reg9[12]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[12]_i_27 
       (.I0(\abs_diff_reg[5]_1 [8]),
        .I1(\abs_diff_reg[6]_2 [8]),
        .I2(\abs_diff_reg[3]_3 [8]),
        .O(\slv_reg9[12]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[12]_i_28 
       (.I0(\slv_reg9[12]_i_26_n_0 ),
        .I1(\abs_diff_reg[6]_2 [8]),
        .I2(\abs_diff_reg[5]_1 [8]),
        .I3(\abs_diff_reg[3]_3 [8]),
        .O(\slv_reg9[12]_i_28_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[12]_i_29 
       (.I0(\abs_diff_reg[1]_4 [7]),
        .I1(\abs_diff_reg[2]_5 [7]),
        .I2(\abs_diff_reg[4]_6 [7]),
        .O(\slv_reg9[12]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \slv_reg9[12]_i_3 
       (.I0(\slv_reg8_reg_n_0_[21] ),
        .I1(\slv_reg8_reg_n_0_[20] ),
        .I2(\slv_reg8_reg_n_0_[23] ),
        .I3(\slv_reg8_reg_n_0_[22] ),
        .I4(\slv_reg9[12]_i_9_n_0 ),
        .O(\slv_reg9[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[12]_i_30 
       (.I0(\abs_diff_reg[1]_4 [8]),
        .I1(\abs_diff_reg[2]_5 [8]),
        .I2(\abs_diff_reg[4]_6 [8]),
        .O(\slv_reg9[12]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[12]_i_31 
       (.I0(\slv_reg9[12]_i_29_n_0 ),
        .I1(\abs_diff_reg[2]_5 [8]),
        .I2(\abs_diff_reg[1]_4 [8]),
        .I3(\abs_diff_reg[4]_6 [8]),
        .O(\slv_reg9[12]_i_31_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[12]_i_36 
       (.I0(\abs_diff_reg[11]_10 [7]),
        .I1(\abs_diff_reg[9]_11 [7]),
        .I2(\abs_diff_reg[10]_12 [7]),
        .O(\slv_reg9[12]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[12]_i_37 
       (.I0(\abs_diff_reg[11]_10 [8]),
        .I1(\abs_diff_reg[9]_11 [8]),
        .I2(\abs_diff_reg[10]_12 [8]),
        .O(\slv_reg9[12]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[12]_i_38 
       (.I0(\slv_reg9[12]_i_36_n_0 ),
        .I1(\abs_diff_reg[9]_11 [8]),
        .I2(\abs_diff_reg[11]_10 [8]),
        .I3(\abs_diff_reg[10]_12 [8]),
        .O(\slv_reg9[12]_i_38_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[12]_i_39 
       (.I0(\abs_diff_reg[12]_13 [7]),
        .I1(\abs_diff_reg[0]_14 [7]),
        .I2(\abs_diff_reg[8]_15 [7]),
        .O(\slv_reg9[12]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \slv_reg9[12]_i_4 
       (.I0(\slv_reg8_reg_n_0_[29] ),
        .I1(\slv_reg8_reg_n_0_[28] ),
        .I2(\slv_reg8_reg_n_0_[30] ),
        .I3(\slv_reg8_reg_n_0_[31] ),
        .I4(\slv_reg9[12]_i_10_n_0 ),
        .O(\slv_reg9[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[12]_i_40 
       (.I0(\abs_diff_reg[12]_13 [8]),
        .I1(\abs_diff_reg[0]_14 [8]),
        .I2(\abs_diff_reg[8]_15 [8]),
        .O(\slv_reg9[12]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[12]_i_41 
       (.I0(\slv_reg9[12]_i_39_n_0 ),
        .I1(\abs_diff_reg[0]_14 [8]),
        .I2(\abs_diff_reg[12]_13 [8]),
        .I3(\abs_diff_reg[8]_15 [8]),
        .O(\slv_reg9[12]_i_41_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[12]_i_42 
       (.I0(\abs_diff_reg[11]_10 [6]),
        .I1(\abs_diff_reg[9]_11 [6]),
        .I2(\abs_diff_reg[10]_12 [6]),
        .O(\slv_reg9[12]_i_42_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[12]_i_43 
       (.I0(\abs_diff_reg[11]_10 [5]),
        .I1(\abs_diff_reg[9]_11 [5]),
        .I2(\abs_diff_reg[10]_12 [5]),
        .O(\slv_reg9[12]_i_43_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[12]_i_44 
       (.I0(\abs_diff_reg[11]_10 [4]),
        .I1(\abs_diff_reg[9]_11 [4]),
        .I2(\abs_diff_reg[10]_12 [4]),
        .O(\slv_reg9[12]_i_44_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[12]_i_45 
       (.I0(\abs_diff_reg[11]_10 [3]),
        .I1(\abs_diff_reg[9]_11 [3]),
        .I2(\abs_diff_reg[10]_12 [3]),
        .O(\slv_reg9[12]_i_45_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[12]_i_46 
       (.I0(\abs_diff_reg[11]_10 [7]),
        .I1(\abs_diff_reg[9]_11 [7]),
        .I2(\abs_diff_reg[10]_12 [7]),
        .I3(\slv_reg9[12]_i_42_n_0 ),
        .O(\slv_reg9[12]_i_46_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[12]_i_47 
       (.I0(\abs_diff_reg[11]_10 [6]),
        .I1(\abs_diff_reg[9]_11 [6]),
        .I2(\abs_diff_reg[10]_12 [6]),
        .I3(\slv_reg9[12]_i_43_n_0 ),
        .O(\slv_reg9[12]_i_47_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[12]_i_48 
       (.I0(\abs_diff_reg[11]_10 [5]),
        .I1(\abs_diff_reg[9]_11 [5]),
        .I2(\abs_diff_reg[10]_12 [5]),
        .I3(\slv_reg9[12]_i_44_n_0 ),
        .O(\slv_reg9[12]_i_48_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[12]_i_49 
       (.I0(\abs_diff_reg[11]_10 [4]),
        .I1(\abs_diff_reg[9]_11 [4]),
        .I2(\abs_diff_reg[10]_12 [4]),
        .I3(\slv_reg9[12]_i_45_n_0 ),
        .O(\slv_reg9[12]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \slv_reg9[12]_i_5 
       (.I0(\slv_reg8_reg_n_0_[5] ),
        .I1(\slv_reg8_reg_n_0_[4] ),
        .I2(\slv_reg8_reg_n_0_[7] ),
        .I3(\slv_reg8_reg_n_0_[6] ),
        .I4(\slv_reg9[12]_i_11_n_0 ),
        .O(\slv_reg9[12]_i_5_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[12]_i_50 
       (.I0(\abs_diff_reg[12]_13 [6]),
        .I1(\abs_diff_reg[0]_14 [6]),
        .I2(\abs_diff_reg[8]_15 [6]),
        .O(\slv_reg9[12]_i_50_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[12]_i_51 
       (.I0(\abs_diff_reg[12]_13 [5]),
        .I1(\abs_diff_reg[0]_14 [5]),
        .I2(\abs_diff_reg[8]_15 [5]),
        .O(\slv_reg9[12]_i_51_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[12]_i_52 
       (.I0(\abs_diff_reg[12]_13 [4]),
        .I1(\abs_diff_reg[0]_14 [4]),
        .I2(\abs_diff_reg[8]_15 [4]),
        .O(\slv_reg9[12]_i_52_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[12]_i_53 
       (.I0(\abs_diff_reg[12]_13 [3]),
        .I1(\abs_diff_reg[0]_14 [3]),
        .I2(\abs_diff_reg[8]_15 [3]),
        .O(\slv_reg9[12]_i_53_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[12]_i_54 
       (.I0(\abs_diff_reg[12]_13 [7]),
        .I1(\abs_diff_reg[0]_14 [7]),
        .I2(\abs_diff_reg[8]_15 [7]),
        .I3(\slv_reg9[12]_i_50_n_0 ),
        .O(\slv_reg9[12]_i_54_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[12]_i_55 
       (.I0(\abs_diff_reg[12]_13 [6]),
        .I1(\abs_diff_reg[0]_14 [6]),
        .I2(\abs_diff_reg[8]_15 [6]),
        .I3(\slv_reg9[12]_i_51_n_0 ),
        .O(\slv_reg9[12]_i_55_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[12]_i_56 
       (.I0(\abs_diff_reg[12]_13 [5]),
        .I1(\abs_diff_reg[0]_14 [5]),
        .I2(\abs_diff_reg[8]_15 [5]),
        .I3(\slv_reg9[12]_i_52_n_0 ),
        .O(\slv_reg9[12]_i_56_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[12]_i_57 
       (.I0(\abs_diff_reg[12]_13 [4]),
        .I1(\abs_diff_reg[0]_14 [4]),
        .I2(\abs_diff_reg[8]_15 [4]),
        .I3(\slv_reg9[12]_i_53_n_0 ),
        .O(\slv_reg9[12]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \slv_reg9[12]_i_6 
       (.I0(\slv_reg8_reg_n_0_[13] ),
        .I1(\slv_reg8_reg_n_0_[12] ),
        .I2(\slv_reg8_reg_n_0_[15] ),
        .I3(\slv_reg8_reg_n_0_[14] ),
        .I4(\slv_reg9[12]_i_12_n_0 ),
        .O(\slv_reg9[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \slv_reg9[12]_i_7 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg9[12]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg9[12]_i_9 
       (.I0(\slv_reg8_reg_n_0_[18] ),
        .I1(\slv_reg8_reg_n_0_[19] ),
        .I2(\slv_reg8_reg_n_0_[16] ),
        .I3(\slv_reg8_reg_n_0_[17] ),
        .O(\slv_reg9[12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \slv_reg9[13]_i_1 
       (.I0(slv_reg9[13]),
        .I1(\slv_reg9[12]_i_1_n_0 ),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_wdata[13]),
        .I4(\slv_reg9[31]_i_1_n_0 ),
        .O(\slv_reg9[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \slv_reg9[14]_i_1 
       (.I0(slv_reg9[14]),
        .I1(\slv_reg9[12]_i_1_n_0 ),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_wdata[14]),
        .I4(\slv_reg9[31]_i_1_n_0 ),
        .O(\slv_reg9[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \slv_reg9[15]_i_1 
       (.I0(slv_reg9[15]),
        .I1(\slv_reg9[12]_i_1_n_0 ),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_wdata[15]),
        .I4(\slv_reg9[31]_i_1_n_0 ),
        .O(\slv_reg9[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg9[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg9_reg[3]_i_2_n_6 ),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awready),
        .I5(s00_axi_wready),
        .O(\slv_reg9[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \slv_reg9[23]_i_1 
       (.I0(slv_reg8),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(\slv_reg8[31]_i_4_n_0 ),
        .I3(p_0_in[3]),
        .I4(p_0_in[0]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg9[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg9[2]_i_1 
       (.I0(s00_axi_wdata[2]),
        .I1(\slv_reg9_reg[3]_i_2_n_5 ),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awready),
        .I5(s00_axi_wready),
        .O(\slv_reg9[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555755555555)) 
    \slv_reg9[31]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\slv_reg9[31]_i_3_n_0 ),
        .I2(\slv_reg9[31]_i_4_n_0 ),
        .I3(\slv_reg9[31]_i_5_n_0 ),
        .I4(\slv_reg9[31]_i_6_n_0 ),
        .I5(\slv_reg8_reg_n_0_[0] ),
        .O(\slv_reg9[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg9[31]_i_10 
       (.I0(\slv_reg8_reg_n_0_[11] ),
        .I1(\slv_reg8_reg_n_0_[12] ),
        .I2(\slv_reg8_reg_n_0_[9] ),
        .I3(\slv_reg8_reg_n_0_[10] ),
        .O(\slv_reg9[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \slv_reg9[31]_i_2 
       (.I0(slv_reg8),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(\slv_reg8[31]_i_4_n_0 ),
        .I3(p_0_in[3]),
        .I4(p_0_in[0]),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg9[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \slv_reg9[31]_i_3 
       (.I0(\slv_reg8_reg_n_0_[22] ),
        .I1(\slv_reg8_reg_n_0_[21] ),
        .I2(\slv_reg8_reg_n_0_[24] ),
        .I3(\slv_reg8_reg_n_0_[23] ),
        .I4(\slv_reg9[31]_i_7_n_0 ),
        .O(\slv_reg9[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \slv_reg9[31]_i_4 
       (.I0(\slv_reg8_reg_n_0_[30] ),
        .I1(\slv_reg8_reg_n_0_[29] ),
        .I2(\slv_reg8_reg_n_0_[31] ),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(\slv_reg9[31]_i_8_n_0 ),
        .O(\slv_reg9[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \slv_reg9[31]_i_5 
       (.I0(\slv_reg8_reg_n_0_[6] ),
        .I1(\slv_reg8_reg_n_0_[5] ),
        .I2(\slv_reg8_reg_n_0_[8] ),
        .I3(\slv_reg8_reg_n_0_[7] ),
        .I4(\slv_reg9[31]_i_9_n_0 ),
        .O(\slv_reg9[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \slv_reg9[31]_i_6 
       (.I0(\slv_reg8_reg_n_0_[14] ),
        .I1(\slv_reg8_reg_n_0_[13] ),
        .I2(\slv_reg8_reg_n_0_[16] ),
        .I3(\slv_reg8_reg_n_0_[15] ),
        .I4(\slv_reg9[31]_i_10_n_0 ),
        .O(\slv_reg9[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg9[31]_i_7 
       (.I0(\slv_reg8_reg_n_0_[19] ),
        .I1(\slv_reg8_reg_n_0_[20] ),
        .I2(\slv_reg8_reg_n_0_[17] ),
        .I3(\slv_reg8_reg_n_0_[18] ),
        .O(\slv_reg9[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg9[31]_i_8 
       (.I0(\slv_reg8_reg_n_0_[27] ),
        .I1(\slv_reg8_reg_n_0_[28] ),
        .I2(\slv_reg8_reg_n_0_[25] ),
        .I3(\slv_reg8_reg_n_0_[26] ),
        .O(\slv_reg9[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg9[31]_i_9 
       (.I0(\slv_reg8_reg_n_0_[3] ),
        .I1(\slv_reg8_reg_n_0_[4] ),
        .I2(\slv_reg8_reg_n_0_[1] ),
        .I3(\slv_reg8_reg_n_0_[2] ),
        .O(\slv_reg9[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg9[3]_i_1 
       (.I0(s00_axi_wdata[3]),
        .I1(\slv_reg9_reg[3]_i_2_n_4 ),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awready),
        .I5(s00_axi_wready),
        .O(\slv_reg9[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[3]_i_10 
       (.I0(\slv_reg9_reg[7]_i_16_n_7 ),
        .I1(\slv_reg9_reg[7]_i_17_n_7 ),
        .I2(\slv_reg9_reg[7]_i_15_n_7 ),
        .I3(\slv_reg9_reg[3]_i_6_n_7 ),
        .O(\slv_reg9[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \slv_reg9[3]_i_11 
       (.I0(\slv_reg9_reg[7]_i_15_n_5 ),
        .I1(\slv_reg9_reg[7]_i_17_n_5 ),
        .I2(\slv_reg9_reg[7]_i_16_n_5 ),
        .O(\slv_reg9[3]_i_11_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[3]_i_12 
       (.I0(\abs_diff_reg[15]_7 [2]),
        .I1(\abs_diff_reg[13]_8 [2]),
        .I2(\abs_diff_reg[14]_9 [2]),
        .O(\slv_reg9[3]_i_12_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[3]_i_13 
       (.I0(\abs_diff_reg[15]_7 [1]),
        .I1(\abs_diff_reg[13]_8 [1]),
        .I2(\abs_diff_reg[14]_9 [1]),
        .O(\slv_reg9[3]_i_13_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[3]_i_14 
       (.I0(\abs_diff_reg[15]_7 [0]),
        .I1(\abs_diff_reg[13]_8 [0]),
        .I2(\abs_diff_reg[14]_9 [0]),
        .O(\slv_reg9[3]_i_14_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[3]_i_15 
       (.I0(\abs_diff_reg[15]_7 [3]),
        .I1(\abs_diff_reg[13]_8 [3]),
        .I2(\abs_diff_reg[14]_9 [3]),
        .I3(\slv_reg9[3]_i_12_n_0 ),
        .O(\slv_reg9[3]_i_15_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[3]_i_16 
       (.I0(\abs_diff_reg[15]_7 [2]),
        .I1(\abs_diff_reg[13]_8 [2]),
        .I2(\abs_diff_reg[14]_9 [2]),
        .I3(\slv_reg9[3]_i_13_n_0 ),
        .O(\slv_reg9[3]_i_16_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[3]_i_17 
       (.I0(\abs_diff_reg[15]_7 [1]),
        .I1(\abs_diff_reg[13]_8 [1]),
        .I2(\abs_diff_reg[14]_9 [1]),
        .I3(\slv_reg9[3]_i_14_n_0 ),
        .O(\slv_reg9[3]_i_17_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \slv_reg9[3]_i_18 
       (.I0(\abs_diff_reg[15]_7 [0]),
        .I1(\abs_diff_reg[13]_8 [0]),
        .I2(\abs_diff_reg[14]_9 [0]),
        .O(\slv_reg9[3]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \slv_reg9[3]_i_3 
       (.I0(\slv_reg9_reg[3]_i_6_n_5 ),
        .I1(\slv_reg9[3]_i_11_n_0 ),
        .I2(\slv_reg9_reg[7]_i_15_n_6 ),
        .I3(\slv_reg9_reg[7]_i_16_n_6 ),
        .I4(\slv_reg9_reg[7]_i_17_n_6 ),
        .O(\slv_reg9[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \slv_reg9[3]_i_4 
       (.I0(\slv_reg9_reg[7]_i_15_n_6 ),
        .I1(\slv_reg9_reg[7]_i_16_n_6 ),
        .I2(\slv_reg9_reg[7]_i_17_n_6 ),
        .I3(\slv_reg9_reg[3]_i_6_n_5 ),
        .I4(\slv_reg9[3]_i_11_n_0 ),
        .O(\slv_reg9[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[3]_i_5 
       (.I0(\slv_reg9_reg[7]_i_16_n_6 ),
        .I1(\slv_reg9_reg[7]_i_17_n_6 ),
        .I2(\slv_reg9_reg[7]_i_15_n_6 ),
        .I3(\slv_reg9_reg[3]_i_6_n_6 ),
        .O(\slv_reg9[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \slv_reg9[3]_i_7 
       (.I0(\slv_reg9[3]_i_3_n_0 ),
        .I1(\slv_reg9[7]_i_18_n_0 ),
        .I2(\slv_reg9_reg[3]_i_6_n_4 ),
        .I3(\slv_reg9_reg[7]_i_17_n_5 ),
        .I4(\slv_reg9_reg[7]_i_16_n_5 ),
        .I5(\slv_reg9_reg[7]_i_15_n_5 ),
        .O(\slv_reg9[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    \slv_reg9[3]_i_8 
       (.I0(\slv_reg9[3]_i_11_n_0 ),
        .I1(\slv_reg9_reg[3]_i_6_n_5 ),
        .I2(\slv_reg9_reg[7]_i_15_n_6 ),
        .I3(\slv_reg9_reg[7]_i_17_n_6 ),
        .I4(\slv_reg9_reg[7]_i_16_n_6 ),
        .I5(\slv_reg9_reg[3]_i_6_n_6 ),
        .O(\slv_reg9[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h566A)) 
    \slv_reg9[3]_i_9 
       (.I0(\slv_reg9[3]_i_5_n_0 ),
        .I1(\slv_reg9_reg[7]_i_15_n_7 ),
        .I2(\slv_reg9_reg[7]_i_16_n_7 ),
        .I3(\slv_reg9_reg[7]_i_17_n_7 ),
        .O(\slv_reg9[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg9[4]_i_1 
       (.I0(s00_axi_wdata[4]),
        .I1(\slv_reg9_reg[7]_i_3_n_7 ),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awready),
        .I5(s00_axi_wready),
        .O(\slv_reg9[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg9[5]_i_1 
       (.I0(s00_axi_wdata[5]),
        .I1(\slv_reg9_reg[7]_i_3_n_6 ),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awready),
        .I5(s00_axi_wready),
        .O(\slv_reg9[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg9[6]_i_1 
       (.I0(s00_axi_wdata[6]),
        .I1(\slv_reg9_reg[7]_i_3_n_5 ),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awready),
        .I5(s00_axi_wready),
        .O(\slv_reg9[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \slv_reg9[7]_i_1 
       (.I0(slv_reg8),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(\slv_reg8[31]_i_4_n_0 ),
        .I3(p_0_in[3]),
        .I4(p_0_in[0]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg9[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \slv_reg9[7]_i_10 
       (.I0(\slv_reg9[7]_i_6_n_0 ),
        .I1(\slv_reg9[7]_i_13_n_0 ),
        .I2(\slv_reg9_reg[11]_i_18_n_6 ),
        .I3(\slv_reg9_reg[11]_i_17_n_7 ),
        .I4(\slv_reg9_reg[11]_i_16_n_7 ),
        .I5(\slv_reg9_reg[11]_i_15_n_7 ),
        .O(\slv_reg9[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \slv_reg9[7]_i_11 
       (.I0(\slv_reg9[7]_i_7_n_0 ),
        .I1(\slv_reg9[7]_i_14_n_0 ),
        .I2(\slv_reg9_reg[11]_i_18_n_7 ),
        .I3(\slv_reg9_reg[7]_i_17_n_4 ),
        .I4(\slv_reg9_reg[7]_i_16_n_4 ),
        .I5(\slv_reg9_reg[7]_i_15_n_4 ),
        .O(\slv_reg9[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \slv_reg9[7]_i_12 
       (.I0(\slv_reg9_reg[11]_i_15_n_5 ),
        .I1(\slv_reg9_reg[11]_i_17_n_5 ),
        .I2(\slv_reg9_reg[11]_i_16_n_5 ),
        .O(\slv_reg9[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \slv_reg9[7]_i_13 
       (.I0(\slv_reg9_reg[11]_i_15_n_6 ),
        .I1(\slv_reg9_reg[11]_i_17_n_6 ),
        .I2(\slv_reg9_reg[11]_i_16_n_6 ),
        .O(\slv_reg9[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \slv_reg9[7]_i_14 
       (.I0(\slv_reg9_reg[11]_i_15_n_7 ),
        .I1(\slv_reg9_reg[11]_i_17_n_7 ),
        .I2(\slv_reg9_reg[11]_i_16_n_7 ),
        .O(\slv_reg9[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \slv_reg9[7]_i_18 
       (.I0(\slv_reg9_reg[7]_i_15_n_4 ),
        .I1(\slv_reg9_reg[7]_i_17_n_4 ),
        .I2(\slv_reg9_reg[7]_i_16_n_4 ),
        .O(\slv_reg9[7]_i_18_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[7]_i_19 
       (.I0(\abs_diff_reg[1]_4 [2]),
        .I1(\abs_diff_reg[2]_5 [2]),
        .I2(\abs_diff_reg[4]_6 [2]),
        .O(\slv_reg9[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg9[7]_i_2 
       (.I0(s00_axi_wdata[7]),
        .I1(\slv_reg9_reg[7]_i_3_n_4 ),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awready),
        .I5(s00_axi_wready),
        .O(\slv_reg9[7]_i_2_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[7]_i_20 
       (.I0(\abs_diff_reg[1]_4 [1]),
        .I1(\abs_diff_reg[2]_5 [1]),
        .I2(\abs_diff_reg[4]_6 [1]),
        .O(\slv_reg9[7]_i_20_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[7]_i_21 
       (.I0(\abs_diff_reg[1]_4 [0]),
        .I1(\abs_diff_reg[2]_5 [0]),
        .I2(\abs_diff_reg[4]_6 [0]),
        .O(\slv_reg9[7]_i_21_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[7]_i_22 
       (.I0(\abs_diff_reg[1]_4 [3]),
        .I1(\abs_diff_reg[2]_5 [3]),
        .I2(\abs_diff_reg[4]_6 [3]),
        .I3(\slv_reg9[7]_i_19_n_0 ),
        .O(\slv_reg9[7]_i_22_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[7]_i_23 
       (.I0(\abs_diff_reg[1]_4 [2]),
        .I1(\abs_diff_reg[2]_5 [2]),
        .I2(\abs_diff_reg[4]_6 [2]),
        .I3(\slv_reg9[7]_i_20_n_0 ),
        .O(\slv_reg9[7]_i_23_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[7]_i_24 
       (.I0(\abs_diff_reg[1]_4 [1]),
        .I1(\abs_diff_reg[2]_5 [1]),
        .I2(\abs_diff_reg[4]_6 [1]),
        .I3(\slv_reg9[7]_i_21_n_0 ),
        .O(\slv_reg9[7]_i_24_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \slv_reg9[7]_i_25 
       (.I0(\abs_diff_reg[1]_4 [0]),
        .I1(\abs_diff_reg[2]_5 [0]),
        .I2(\abs_diff_reg[4]_6 [0]),
        .O(\slv_reg9[7]_i_25_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[7]_i_26 
       (.I0(\abs_diff_reg[5]_1 [2]),
        .I1(\abs_diff_reg[6]_2 [2]),
        .I2(\abs_diff_reg[3]_3 [2]),
        .O(\slv_reg9[7]_i_26_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[7]_i_27 
       (.I0(\abs_diff_reg[5]_1 [1]),
        .I1(\abs_diff_reg[6]_2 [1]),
        .I2(\abs_diff_reg[3]_3 [1]),
        .O(\slv_reg9[7]_i_27_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[7]_i_28 
       (.I0(\abs_diff_reg[5]_1 [0]),
        .I1(\abs_diff_reg[6]_2 [0]),
        .I2(\abs_diff_reg[3]_3 [0]),
        .O(\slv_reg9[7]_i_28_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[7]_i_29 
       (.I0(\abs_diff_reg[5]_1 [3]),
        .I1(\abs_diff_reg[6]_2 [3]),
        .I2(\abs_diff_reg[3]_3 [3]),
        .I3(\slv_reg9[7]_i_26_n_0 ),
        .O(\slv_reg9[7]_i_29_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[7]_i_30 
       (.I0(\abs_diff_reg[5]_1 [2]),
        .I1(\abs_diff_reg[6]_2 [2]),
        .I2(\abs_diff_reg[3]_3 [2]),
        .I3(\slv_reg9[7]_i_27_n_0 ),
        .O(\slv_reg9[7]_i_30_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[7]_i_31 
       (.I0(\abs_diff_reg[5]_1 [1]),
        .I1(\abs_diff_reg[6]_2 [1]),
        .I2(\abs_diff_reg[3]_3 [1]),
        .I3(\slv_reg9[7]_i_28_n_0 ),
        .O(\slv_reg9[7]_i_31_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \slv_reg9[7]_i_32 
       (.I0(\abs_diff_reg[5]_1 [0]),
        .I1(\abs_diff_reg[6]_2 [0]),
        .I2(\abs_diff_reg[3]_3 [0]),
        .O(\slv_reg9[7]_i_32_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[7]_i_33 
       (.I0(\slv_reg9_reg[11]_i_56_n_5 ),
        .I1(\slv_reg9_reg[11]_i_57_n_5 ),
        .I2(\abs_diff_reg[7]_0 [2]),
        .O(\slv_reg9[7]_i_33_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[7]_i_34 
       (.I0(\slv_reg9_reg[11]_i_56_n_6 ),
        .I1(\slv_reg9_reg[11]_i_57_n_6 ),
        .I2(\abs_diff_reg[7]_0 [1]),
        .O(\slv_reg9[7]_i_34_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \slv_reg9[7]_i_35 
       (.I0(\slv_reg9_reg[11]_i_56_n_7 ),
        .I1(\slv_reg9_reg[11]_i_57_n_7 ),
        .I2(\abs_diff_reg[7]_0 [0]),
        .O(\slv_reg9[7]_i_35_n_0 ));
  (* HLUTNM = "lutpair39" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[7]_i_36 
       (.I0(\slv_reg9_reg[11]_i_56_n_4 ),
        .I1(\slv_reg9_reg[11]_i_57_n_4 ),
        .I2(\abs_diff_reg[7]_0 [3]),
        .I3(\slv_reg9[7]_i_33_n_0 ),
        .O(\slv_reg9[7]_i_36_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[7]_i_37 
       (.I0(\slv_reg9_reg[11]_i_56_n_5 ),
        .I1(\slv_reg9_reg[11]_i_57_n_5 ),
        .I2(\abs_diff_reg[7]_0 [2]),
        .I3(\slv_reg9[7]_i_34_n_0 ),
        .O(\slv_reg9[7]_i_37_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \slv_reg9[7]_i_38 
       (.I0(\slv_reg9_reg[11]_i_56_n_6 ),
        .I1(\slv_reg9_reg[11]_i_57_n_6 ),
        .I2(\abs_diff_reg[7]_0 [1]),
        .I3(\slv_reg9[7]_i_35_n_0 ),
        .O(\slv_reg9[7]_i_38_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \slv_reg9[7]_i_39 
       (.I0(\slv_reg9_reg[11]_i_56_n_7 ),
        .I1(\slv_reg9_reg[11]_i_57_n_7 ),
        .I2(\abs_diff_reg[7]_0 [0]),
        .O(\slv_reg9[7]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \slv_reg9[7]_i_4 
       (.I0(\slv_reg9_reg[11]_i_18_n_5 ),
        .I1(\slv_reg9[7]_i_12_n_0 ),
        .I2(\slv_reg9_reg[11]_i_15_n_6 ),
        .I3(\slv_reg9_reg[11]_i_16_n_6 ),
        .I4(\slv_reg9_reg[11]_i_17_n_6 ),
        .O(\slv_reg9[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \slv_reg9[7]_i_5 
       (.I0(\slv_reg9_reg[11]_i_18_n_6 ),
        .I1(\slv_reg9[7]_i_13_n_0 ),
        .I2(\slv_reg9_reg[11]_i_15_n_7 ),
        .I3(\slv_reg9_reg[11]_i_16_n_7 ),
        .I4(\slv_reg9_reg[11]_i_17_n_7 ),
        .O(\slv_reg9[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \slv_reg9[7]_i_6 
       (.I0(\slv_reg9_reg[11]_i_18_n_7 ),
        .I1(\slv_reg9[7]_i_14_n_0 ),
        .I2(\slv_reg9_reg[7]_i_15_n_4 ),
        .I3(\slv_reg9_reg[7]_i_16_n_4 ),
        .I4(\slv_reg9_reg[7]_i_17_n_4 ),
        .O(\slv_reg9[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \slv_reg9[7]_i_7 
       (.I0(\slv_reg9_reg[3]_i_6_n_4 ),
        .I1(\slv_reg9[7]_i_18_n_0 ),
        .I2(\slv_reg9_reg[7]_i_15_n_5 ),
        .I3(\slv_reg9_reg[7]_i_16_n_5 ),
        .I4(\slv_reg9_reg[7]_i_17_n_5 ),
        .O(\slv_reg9[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \slv_reg9[7]_i_8 
       (.I0(\slv_reg9[7]_i_4_n_0 ),
        .I1(\slv_reg9[11]_i_19_n_0 ),
        .I2(\slv_reg9_reg[11]_i_18_n_4 ),
        .I3(\slv_reg9_reg[11]_i_17_n_5 ),
        .I4(\slv_reg9_reg[11]_i_16_n_5 ),
        .I5(\slv_reg9_reg[11]_i_15_n_5 ),
        .O(\slv_reg9[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \slv_reg9[7]_i_9 
       (.I0(\slv_reg9[7]_i_5_n_0 ),
        .I1(\slv_reg9[7]_i_12_n_0 ),
        .I2(\slv_reg9_reg[11]_i_18_n_5 ),
        .I3(\slv_reg9_reg[11]_i_17_n_6 ),
        .I4(\slv_reg9_reg[11]_i_16_n_6 ),
        .I5(\slv_reg9_reg[11]_i_15_n_6 ),
        .O(\slv_reg9[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg9[8]_i_1 
       (.I0(s00_axi_wdata[8]),
        .I1(\slv_reg9_reg[11]_i_2_n_7 ),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awready),
        .I5(s00_axi_wready),
        .O(\slv_reg9[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCCCCCCCCCCCCC)) 
    \slv_reg9[9]_i_1 
       (.I0(s00_axi_wdata[9]),
        .I1(\slv_reg9_reg[11]_i_2_n_6 ),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awready),
        .I5(s00_axi_wready),
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
  CARRY4 \slv_reg9_reg[11]_i_11 
       (.CI(\slv_reg9_reg[11]_i_18_n_0 ),
        .CO({\NLW_slv_reg9_reg[11]_i_11_CO_UNCONNECTED [3],\slv_reg9_reg[11]_i_11_n_1 ,\NLW_slv_reg9_reg[11]_i_11_CO_UNCONNECTED [1],\slv_reg9_reg[11]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\slv_reg9[11]_i_21_n_0 }),
        .O({\NLW_slv_reg9_reg[11]_i_11_O_UNCONNECTED [3:2],\slv_reg9_reg[11]_i_11_n_6 ,\slv_reg9_reg[11]_i_11_n_7 }),
        .S({1'b0,1'b1,\slv_reg9[11]_i_22_n_0 ,\slv_reg9[11]_i_23_n_0 }));
  CARRY4 \slv_reg9_reg[11]_i_15 
       (.CI(\slv_reg9_reg[7]_i_15_n_0 ),
        .CO({\slv_reg9_reg[11]_i_15_n_0 ,\slv_reg9_reg[11]_i_15_n_1 ,\slv_reg9_reg[11]_i_15_n_2 ,\slv_reg9_reg[11]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\slv_reg9[11]_i_24_n_0 ,\slv_reg9[11]_i_25_n_0 ,\slv_reg9[11]_i_26_n_0 ,\slv_reg9[11]_i_27_n_0 }),
        .O({\slv_reg9_reg[11]_i_15_n_4 ,\slv_reg9_reg[11]_i_15_n_5 ,\slv_reg9_reg[11]_i_15_n_6 ,\slv_reg9_reg[11]_i_15_n_7 }),
        .S({\slv_reg9[11]_i_28_n_0 ,\slv_reg9[11]_i_29_n_0 ,\slv_reg9[11]_i_30_n_0 ,\slv_reg9[11]_i_31_n_0 }));
  CARRY4 \slv_reg9_reg[11]_i_16 
       (.CI(\slv_reg9_reg[7]_i_16_n_0 ),
        .CO({\slv_reg9_reg[11]_i_16_n_0 ,\slv_reg9_reg[11]_i_16_n_1 ,\slv_reg9_reg[11]_i_16_n_2 ,\slv_reg9_reg[11]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\slv_reg9[11]_i_32_n_0 ,\slv_reg9[11]_i_33_n_0 ,\slv_reg9[11]_i_34_n_0 ,\slv_reg9[11]_i_35_n_0 }),
        .O({\slv_reg9_reg[11]_i_16_n_4 ,\slv_reg9_reg[11]_i_16_n_5 ,\slv_reg9_reg[11]_i_16_n_6 ,\slv_reg9_reg[11]_i_16_n_7 }),
        .S({\slv_reg9[11]_i_36_n_0 ,\slv_reg9[11]_i_37_n_0 ,\slv_reg9[11]_i_38_n_0 ,\slv_reg9[11]_i_39_n_0 }));
  CARRY4 \slv_reg9_reg[11]_i_17 
       (.CI(\slv_reg9_reg[7]_i_17_n_0 ),
        .CO({\slv_reg9_reg[11]_i_17_n_0 ,\slv_reg9_reg[11]_i_17_n_1 ,\slv_reg9_reg[11]_i_17_n_2 ,\slv_reg9_reg[11]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({\slv_reg9[11]_i_40_n_0 ,\slv_reg9[11]_i_41_n_0 ,\slv_reg9[11]_i_42_n_0 ,\slv_reg9[11]_i_43_n_0 }),
        .O({\slv_reg9_reg[11]_i_17_n_4 ,\slv_reg9_reg[11]_i_17_n_5 ,\slv_reg9_reg[11]_i_17_n_6 ,\slv_reg9_reg[11]_i_17_n_7 }),
        .S({\slv_reg9[11]_i_44_n_0 ,\slv_reg9[11]_i_45_n_0 ,\slv_reg9[11]_i_46_n_0 ,\slv_reg9[11]_i_47_n_0 }));
  CARRY4 \slv_reg9_reg[11]_i_18 
       (.CI(\slv_reg9_reg[3]_i_6_n_0 ),
        .CO({\slv_reg9_reg[11]_i_18_n_0 ,\slv_reg9_reg[11]_i_18_n_1 ,\slv_reg9_reg[11]_i_18_n_2 ,\slv_reg9_reg[11]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({\slv_reg9[11]_i_48_n_0 ,\slv_reg9[11]_i_49_n_0 ,\slv_reg9[11]_i_50_n_0 ,\slv_reg9[11]_i_51_n_0 }),
        .O({\slv_reg9_reg[11]_i_18_n_4 ,\slv_reg9_reg[11]_i_18_n_5 ,\slv_reg9_reg[11]_i_18_n_6 ,\slv_reg9_reg[11]_i_18_n_7 }),
        .S({\slv_reg9[11]_i_52_n_0 ,\slv_reg9[11]_i_53_n_0 ,\slv_reg9[11]_i_54_n_0 ,\slv_reg9[11]_i_55_n_0 }));
  CARRY4 \slv_reg9_reg[11]_i_2 
       (.CI(\slv_reg9_reg[7]_i_3_n_0 ),
        .CO({\slv_reg9_reg[11]_i_2_n_0 ,\slv_reg9_reg[11]_i_2_n_1 ,\slv_reg9_reg[11]_i_2_n_2 ,\slv_reg9_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\slv_reg9[11]_i_3_n_0 ,\slv_reg9[11]_i_4_n_0 ,\slv_reg9[11]_i_5_n_0 ,\slv_reg9[11]_i_6_n_0 }),
        .O({\slv_reg9_reg[11]_i_2_n_4 ,\slv_reg9_reg[11]_i_2_n_5 ,\slv_reg9_reg[11]_i_2_n_6 ,\slv_reg9_reg[11]_i_2_n_7 }),
        .S({\slv_reg9[11]_i_7_n_0 ,\slv_reg9[11]_i_8_n_0 ,\slv_reg9[11]_i_9_n_0 ,\slv_reg9[11]_i_10_n_0 }));
  CARRY4 \slv_reg9_reg[11]_i_56 
       (.CI(1'b0),
        .CO({\slv_reg9_reg[11]_i_56_n_0 ,\slv_reg9_reg[11]_i_56_n_1 ,\slv_reg9_reg[11]_i_56_n_2 ,\slv_reg9_reg[11]_i_56_n_3 }),
        .CYINIT(1'b0),
        .DI({\slv_reg9[11]_i_58_n_0 ,\slv_reg9[11]_i_59_n_0 ,\slv_reg9[11]_i_60_n_0 ,1'b0}),
        .O({\slv_reg9_reg[11]_i_56_n_4 ,\slv_reg9_reg[11]_i_56_n_5 ,\slv_reg9_reg[11]_i_56_n_6 ,\slv_reg9_reg[11]_i_56_n_7 }),
        .S({\slv_reg9[11]_i_61_n_0 ,\slv_reg9[11]_i_62_n_0 ,\slv_reg9[11]_i_63_n_0 ,\slv_reg9[11]_i_64_n_0 }));
  CARRY4 \slv_reg9_reg[11]_i_57 
       (.CI(1'b0),
        .CO({\slv_reg9_reg[11]_i_57_n_0 ,\slv_reg9_reg[11]_i_57_n_1 ,\slv_reg9_reg[11]_i_57_n_2 ,\slv_reg9_reg[11]_i_57_n_3 }),
        .CYINIT(1'b0),
        .DI({\slv_reg9[11]_i_65_n_0 ,\slv_reg9[11]_i_66_n_0 ,\slv_reg9[11]_i_67_n_0 ,1'b0}),
        .O({\slv_reg9_reg[11]_i_57_n_4 ,\slv_reg9_reg[11]_i_57_n_5 ,\slv_reg9_reg[11]_i_57_n_6 ,\slv_reg9_reg[11]_i_57_n_7 }),
        .S({\slv_reg9[11]_i_68_n_0 ,\slv_reg9[11]_i_69_n_0 ,\slv_reg9[11]_i_70_n_0 ,\slv_reg9[11]_i_71_n_0 }));
  FDRE \slv_reg9_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[12]_i_1_n_0 ),
        .D(\slv_reg9[12]_i_2_n_0 ),
        .Q(slv_reg9[12]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \slv_reg9_reg[12]_i_14 
       (.CI(\slv_reg9_reg[11]_i_17_n_0 ),
        .CO({\slv_reg9_reg[12]_i_14_n_0 ,\slv_reg9_reg[12]_i_14_n_1 ,\slv_reg9_reg[12]_i_14_n_2 ,\slv_reg9_reg[12]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({DI,\slv_reg9[12]_i_20_n_0 ,\slv_reg9[12]_i_21_n_0 }),
        .O({\slv_reg9_reg[12]_i_14_n_4 ,\slv_reg9_reg[12]_i_14_n_5 ,\slv_reg9_reg[12]_i_14_n_6 ,\slv_reg9_reg[12]_i_14_n_7 }),
        .S({S,\slv_reg9[12]_i_24_n_0 ,\slv_reg9[12]_i_25_n_0 }));
  CARRY4 \slv_reg9_reg[12]_i_15 
       (.CI(\slv_reg9_reg[11]_i_16_n_0 ),
        .CO({\NLW_slv_reg9_reg[12]_i_15_CO_UNCONNECTED [3],\slv_reg9_reg[12]_i_15_n_1 ,\NLW_slv_reg9_reg[12]_i_15_CO_UNCONNECTED [1],\slv_reg9_reg[12]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\slv_reg9[12]_i_26_n_0 }),
        .O({\NLW_slv_reg9_reg[12]_i_15_O_UNCONNECTED [3:2],\slv_reg9_reg[12]_i_15_n_6 ,\slv_reg9_reg[12]_i_15_n_7 }),
        .S({1'b0,1'b1,\slv_reg9[12]_i_27_n_0 ,\slv_reg9[12]_i_28_n_0 }));
  CARRY4 \slv_reg9_reg[12]_i_16 
       (.CI(\slv_reg9_reg[11]_i_15_n_0 ),
        .CO({\NLW_slv_reg9_reg[12]_i_16_CO_UNCONNECTED [3],\slv_reg9_reg[12]_i_16_n_1 ,\NLW_slv_reg9_reg[12]_i_16_CO_UNCONNECTED [1],\slv_reg9_reg[12]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\slv_reg9[12]_i_29_n_0 }),
        .O({\NLW_slv_reg9_reg[12]_i_16_O_UNCONNECTED [3:2],\slv_reg9_reg[12]_i_16_n_6 ,\slv_reg9_reg[12]_i_16_n_7 }),
        .S({1'b0,1'b1,\slv_reg9[12]_i_30_n_0 ,\slv_reg9[12]_i_31_n_0 }));
  CARRY4 \slv_reg9_reg[12]_i_17 
       (.CI(\slv_reg9_reg[12]_i_14_n_0 ),
        .CO({\NLW_slv_reg9_reg[12]_i_17_CO_UNCONNECTED [3:1],\slv_reg9_reg[12]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_slv_reg9_reg[12]_i_17_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \slv_reg9_reg[12]_i_32 
       (.CI(\slv_reg9_reg[12]_i_34_n_0 ),
        .CO({\NLW_slv_reg9_reg[12]_i_32_CO_UNCONNECTED [3],\slv_reg9_reg[12]_0 ,\NLW_slv_reg9_reg[12]_i_32_CO_UNCONNECTED [1],\slv_reg9_reg[12]_i_32_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\slv_reg9[12]_i_36_n_0 }),
        .O({\NLW_slv_reg9_reg[12]_i_32_O_UNCONNECTED [3:2],\slv_reg9_reg[12]_1 ,\slv_reg9_reg[12]_i_32_n_7 }),
        .S({1'b0,1'b1,\slv_reg9[12]_i_37_n_0 ,\slv_reg9[12]_i_38_n_0 }));
  CARRY4 \slv_reg9_reg[12]_i_33 
       (.CI(\slv_reg9_reg[12]_i_35_n_0 ),
        .CO({\NLW_slv_reg9_reg[12]_i_33_CO_UNCONNECTED [3],CO,\NLW_slv_reg9_reg[12]_i_33_CO_UNCONNECTED [1],\slv_reg9_reg[12]_i_33_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\slv_reg9[12]_i_39_n_0 }),
        .O({\NLW_slv_reg9_reg[12]_i_33_O_UNCONNECTED [3:2],O,\slv_reg9_reg[12]_i_33_n_7 }),
        .S({1'b0,1'b1,\slv_reg9[12]_i_40_n_0 ,\slv_reg9[12]_i_41_n_0 }));
  CARRY4 \slv_reg9_reg[12]_i_34 
       (.CI(\slv_reg9_reg[11]_i_56_n_0 ),
        .CO({\slv_reg9_reg[12]_i_34_n_0 ,\slv_reg9_reg[12]_i_34_n_1 ,\slv_reg9_reg[12]_i_34_n_2 ,\slv_reg9_reg[12]_i_34_n_3 }),
        .CYINIT(1'b0),
        .DI({\slv_reg9[12]_i_42_n_0 ,\slv_reg9[12]_i_43_n_0 ,\slv_reg9[12]_i_44_n_0 ,\slv_reg9[12]_i_45_n_0 }),
        .O({\slv_reg9_reg[12]_i_34_n_4 ,\slv_reg9_reg[12]_i_34_n_5 ,\slv_reg9_reg[12]_i_34_n_6 ,\slv_reg9_reg[12]_i_34_n_7 }),
        .S({\slv_reg9[12]_i_46_n_0 ,\slv_reg9[12]_i_47_n_0 ,\slv_reg9[12]_i_48_n_0 ,\slv_reg9[12]_i_49_n_0 }));
  CARRY4 \slv_reg9_reg[12]_i_35 
       (.CI(\slv_reg9_reg[11]_i_57_n_0 ),
        .CO({\slv_reg9_reg[12]_i_35_n_0 ,\slv_reg9_reg[12]_i_35_n_1 ,\slv_reg9_reg[12]_i_35_n_2 ,\slv_reg9_reg[12]_i_35_n_3 }),
        .CYINIT(1'b0),
        .DI({\slv_reg9[12]_i_50_n_0 ,\slv_reg9[12]_i_51_n_0 ,\slv_reg9[12]_i_52_n_0 ,\slv_reg9[12]_i_53_n_0 }),
        .O({\slv_reg9_reg[12]_i_35_n_4 ,\slv_reg9_reg[12]_i_35_n_5 ,\slv_reg9_reg[12]_i_35_n_6 ,\slv_reg9_reg[12]_i_35_n_7 }),
        .S({\slv_reg9[12]_i_54_n_0 ,\slv_reg9[12]_i_55_n_0 ,\slv_reg9[12]_i_56_n_0 ,\slv_reg9[12]_i_57_n_0 }));
  CARRY4 \slv_reg9_reg[12]_i_8 
       (.CI(\slv_reg9_reg[11]_i_2_n_0 ),
        .CO(\NLW_slv_reg9_reg[12]_i_8_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_slv_reg9_reg[12]_i_8_O_UNCONNECTED [3:1],\slv_reg9_reg[12]_i_8_n_7 }),
        .S({1'b0,1'b0,1'b0,\slv_reg9[12]_i_13_n_0 }));
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
        .D(\slv_reg8[16]_i_1_n_0 ),
        .Q(slv_reg9[16]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(\slv_reg8[17]_i_1_n_0 ),
        .Q(slv_reg9[17]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(\slv_reg8[18]_i_1_n_0 ),
        .Q(slv_reg9[18]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(\slv_reg8[19]_i_1_n_0 ),
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
        .D(\slv_reg8[20]_i_1_n_0 ),
        .Q(slv_reg9[20]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(\slv_reg8[21]_i_1_n_0 ),
        .Q(slv_reg9[21]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(\slv_reg8[22]_i_1_n_0 ),
        .Q(slv_reg9[22]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(\slv_reg8[23]_i_2_n_0 ),
        .Q(slv_reg9[23]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_2_n_0 ),
        .D(\slv_reg8[24]_i_1_n_0 ),
        .Q(slv_reg9[24]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_2_n_0 ),
        .D(\slv_reg8[25]_i_1_n_0 ),
        .Q(slv_reg9[25]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_2_n_0 ),
        .D(\slv_reg8[26]_i_1_n_0 ),
        .Q(slv_reg9[26]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_2_n_0 ),
        .D(\slv_reg8[27]_i_1_n_0 ),
        .Q(slv_reg9[27]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_2_n_0 ),
        .D(\slv_reg8[28]_i_1_n_0 ),
        .Q(slv_reg9[28]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_2_n_0 ),
        .D(\slv_reg8[29]_i_1_n_0 ),
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
        .D(\slv_reg8[30]_i_1_n_0 ),
        .Q(slv_reg9[30]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_2_n_0 ),
        .D(\slv_reg8[31]_i_2_n_0 ),
        .Q(slv_reg9[31]),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\slv_reg9[3]_i_1_n_0 ),
        .Q(slv_reg9[3]),
        .R(axi_awready_i_1_n_0));
  CARRY4 \slv_reg9_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\slv_reg9_reg[3]_i_2_n_0 ,\slv_reg9_reg[3]_i_2_n_1 ,\slv_reg9_reg[3]_i_2_n_2 ,\slv_reg9_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\slv_reg9[3]_i_3_n_0 ,\slv_reg9[3]_i_4_n_0 ,\slv_reg9[3]_i_5_n_0 ,\slv_reg9_reg[3]_i_6_n_7 }),
        .O({\slv_reg9_reg[3]_i_2_n_4 ,\slv_reg9_reg[3]_i_2_n_5 ,\slv_reg9_reg[3]_i_2_n_6 ,\slv_reg9_reg[3]_i_2_n_7 }),
        .S({\slv_reg9[3]_i_7_n_0 ,\slv_reg9[3]_i_8_n_0 ,\slv_reg9[3]_i_9_n_0 ,\slv_reg9[3]_i_10_n_0 }));
  CARRY4 \slv_reg9_reg[3]_i_6 
       (.CI(1'b0),
        .CO({\slv_reg9_reg[3]_i_6_n_0 ,\slv_reg9_reg[3]_i_6_n_1 ,\slv_reg9_reg[3]_i_6_n_2 ,\slv_reg9_reg[3]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\slv_reg9[3]_i_12_n_0 ,\slv_reg9[3]_i_13_n_0 ,\slv_reg9[3]_i_14_n_0 ,1'b0}),
        .O({\slv_reg9_reg[3]_i_6_n_4 ,\slv_reg9_reg[3]_i_6_n_5 ,\slv_reg9_reg[3]_i_6_n_6 ,\slv_reg9_reg[3]_i_6_n_7 }),
        .S({\slv_reg9[3]_i_15_n_0 ,\slv_reg9[3]_i_16_n_0 ,\slv_reg9[3]_i_17_n_0 ,\slv_reg9[3]_i_18_n_0 }));
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
  CARRY4 \slv_reg9_reg[7]_i_15 
       (.CI(1'b0),
        .CO({\slv_reg9_reg[7]_i_15_n_0 ,\slv_reg9_reg[7]_i_15_n_1 ,\slv_reg9_reg[7]_i_15_n_2 ,\slv_reg9_reg[7]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\slv_reg9[7]_i_19_n_0 ,\slv_reg9[7]_i_20_n_0 ,\slv_reg9[7]_i_21_n_0 ,1'b0}),
        .O({\slv_reg9_reg[7]_i_15_n_4 ,\slv_reg9_reg[7]_i_15_n_5 ,\slv_reg9_reg[7]_i_15_n_6 ,\slv_reg9_reg[7]_i_15_n_7 }),
        .S({\slv_reg9[7]_i_22_n_0 ,\slv_reg9[7]_i_23_n_0 ,\slv_reg9[7]_i_24_n_0 ,\slv_reg9[7]_i_25_n_0 }));
  CARRY4 \slv_reg9_reg[7]_i_16 
       (.CI(1'b0),
        .CO({\slv_reg9_reg[7]_i_16_n_0 ,\slv_reg9_reg[7]_i_16_n_1 ,\slv_reg9_reg[7]_i_16_n_2 ,\slv_reg9_reg[7]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\slv_reg9[7]_i_26_n_0 ,\slv_reg9[7]_i_27_n_0 ,\slv_reg9[7]_i_28_n_0 ,1'b0}),
        .O({\slv_reg9_reg[7]_i_16_n_4 ,\slv_reg9_reg[7]_i_16_n_5 ,\slv_reg9_reg[7]_i_16_n_6 ,\slv_reg9_reg[7]_i_16_n_7 }),
        .S({\slv_reg9[7]_i_29_n_0 ,\slv_reg9[7]_i_30_n_0 ,\slv_reg9[7]_i_31_n_0 ,\slv_reg9[7]_i_32_n_0 }));
  CARRY4 \slv_reg9_reg[7]_i_17 
       (.CI(1'b0),
        .CO({\slv_reg9_reg[7]_i_17_n_0 ,\slv_reg9_reg[7]_i_17_n_1 ,\slv_reg9_reg[7]_i_17_n_2 ,\slv_reg9_reg[7]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({\slv_reg9[7]_i_33_n_0 ,\slv_reg9[7]_i_34_n_0 ,\slv_reg9[7]_i_35_n_0 ,1'b0}),
        .O({\slv_reg9_reg[7]_i_17_n_4 ,\slv_reg9_reg[7]_i_17_n_5 ,\slv_reg9_reg[7]_i_17_n_6 ,\slv_reg9_reg[7]_i_17_n_7 }),
        .S({\slv_reg9[7]_i_36_n_0 ,\slv_reg9[7]_i_37_n_0 ,\slv_reg9[7]_i_38_n_0 ,\slv_reg9[7]_i_39_n_0 }));
  CARRY4 \slv_reg9_reg[7]_i_3 
       (.CI(\slv_reg9_reg[3]_i_2_n_0 ),
        .CO({\slv_reg9_reg[7]_i_3_n_0 ,\slv_reg9_reg[7]_i_3_n_1 ,\slv_reg9_reg[7]_i_3_n_2 ,\slv_reg9_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\slv_reg9[7]_i_4_n_0 ,\slv_reg9[7]_i_5_n_0 ,\slv_reg9[7]_i_6_n_0 ,\slv_reg9[7]_i_7_n_0 }),
        .O({\slv_reg9_reg[7]_i_3_n_4 ,\slv_reg9_reg[7]_i_3_n_5 ,\slv_reg9_reg[7]_i_3_n_6 ,\slv_reg9_reg[7]_i_3_n_7 }),
        .S({\slv_reg9[7]_i_8_n_0 ,\slv_reg9[7]_i_9_n_0 ,\slv_reg9[7]_i_10_n_0 ,\slv_reg9[7]_i_11_n_0 }));
  FDRE \slv_reg9_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[12]_i_1_n_0 ),
        .D(\slv_reg9[8]_i_1_n_0 ),
        .Q(slv_reg9[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[12]_i_1_n_0 ),
        .D(\slv_reg9[9]_i_1_n_0 ),
        .Q(slv_reg9[9]),
        .R(axi_awready_i_1_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "lab2_compute_sad_0_0,compute_sad_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "compute_sad_v1_0,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module lab2_tb_compute_sad_0_0
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
  wire inst_n_5;
  wire inst_n_6;
  wire inst_n_7;
  wire inst_n_8;
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
  wire \slv_reg9[12]_i_18_n_0 ;
  wire \slv_reg9[12]_i_19_n_0 ;
  wire \slv_reg9[12]_i_22_n_0 ;
  wire \slv_reg9[12]_i_23_n_0 ;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  lab2_tb_compute_sad_0_0_compute_sad_v1_0 inst
       (.CO(inst_n_5),
        .DI({\slv_reg9[12]_i_18_n_0 ,\slv_reg9[12]_i_19_n_0 }),
        .O(inst_n_6),
        .S({\slv_reg9[12]_i_22_n_0 ,\slv_reg9[12]_i_23_n_0 }),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg9_reg[12] (inst_n_7),
        .\slv_reg9_reg[12]_0 (inst_n_8));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg9[12]_i_18 
       (.I0(inst_n_7),
        .I1(inst_n_5),
        .O(\slv_reg9[12]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg9[12]_i_19 
       (.I0(inst_n_8),
        .I1(inst_n_6),
        .O(\slv_reg9[12]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg9[12]_i_22 
       (.I0(inst_n_7),
        .I1(inst_n_5),
        .O(\slv_reg9[12]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \slv_reg9[12]_i_23 
       (.I0(inst_n_6),
        .I1(inst_n_8),
        .I2(inst_n_7),
        .I3(inst_n_5),
        .O(\slv_reg9[12]_i_23_n_0 ));
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
