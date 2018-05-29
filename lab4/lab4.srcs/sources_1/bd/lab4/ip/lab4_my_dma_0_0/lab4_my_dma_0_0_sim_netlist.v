// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Sat Jun 10 13:51:02 2017
// Host        : DESKTOP-PEMQ38K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/COD/lab4/lab4.srcs/sources_1/bd/lab4/ip/lab4_my_dma_0_0/lab4_my_dma_0_0_sim_netlist.v
// Design      : lab4_my_dma_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "lab4_my_dma_0_0,my_dma_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "my_dma_v1_0,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module lab4_my_dma_0_0
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
    s00_axi_aresetn,
    m00_axi_awid,
    m00_axi_awaddr,
    m00_axi_awlen,
    m00_axi_awsize,
    m00_axi_awburst,
    m00_axi_awlock,
    m00_axi_awcache,
    m00_axi_awprot,
    m00_axi_awqos,
    m00_axi_awuser,
    m00_axi_awvalid,
    m00_axi_awready,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_wlast,
    m00_axi_wuser,
    m00_axi_wvalid,
    m00_axi_wready,
    m00_axi_bid,
    m00_axi_bresp,
    m00_axi_buser,
    m00_axi_bvalid,
    m00_axi_bready,
    m00_axi_arid,
    m00_axi_araddr,
    m00_axi_arlen,
    m00_axi_arsize,
    m00_axi_arburst,
    m00_axi_arlock,
    m00_axi_arcache,
    m00_axi_arprot,
    m00_axi_arqos,
    m00_axi_aruser,
    m00_axi_arvalid,
    m00_axi_arready,
    m00_axi_rid,
    m00_axi_rdata,
    m00_axi_rresp,
    m00_axi_rlast,
    m00_axi_ruser,
    m00_axi_rvalid,
    m00_axi_rready,
    m00_axi_aclk,
    m00_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST, xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *) output [0:0]m00_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [31:0]m00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *) output [7:0]m00_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *) output [2:0]m00_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *) output [1:0]m00_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output m00_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *) output [3:0]m00_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]m00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *) output [3:0]m00_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER" *) output [0:0]m00_axi_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output m00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input m00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [31:0]m00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [3:0]m00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output m00_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WUSER" *) output [0:0]m00_axi_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output m00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input m00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *) input [0:0]m00_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]m00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BUSER" *) input [0:0]m00_axi_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input m00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output m00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *) output [0:0]m00_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [31:0]m00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *) output [7:0]m00_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *) output [2:0]m00_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *) output [1:0]m00_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output m00_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *) output [3:0]m00_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]m00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *) output [3:0]m00_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER" *) output [0:0]m00_axi_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output m00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input m00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *) input [0:0]m00_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [31:0]m00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]m00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input m00_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RUSER" *) input [0:0]m00_axi_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input m00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output m00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 m00_axi_aclk CLK" *) input m00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST, xilinx.com:signal:reset:1.0 m00_axi_aresetn RST" *) input m00_axi_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire [7:2]\^m00_axi_arlen ;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire [31:0]m00_axi_awaddr;
  wire [6:0]\^m00_axi_awlen ;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire m00_axi_rready;
  wire m00_axi_rvalid;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wlast;
  wire m00_axi_wready;
  wire m00_axi_wvalid;
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

  assign m00_axi_arburst[1] = \<const0> ;
  assign m00_axi_arburst[0] = \<const1> ;
  assign m00_axi_arcache[3] = \<const0> ;
  assign m00_axi_arcache[2] = \<const0> ;
  assign m00_axi_arcache[1] = \<const1> ;
  assign m00_axi_arcache[0] = \<const0> ;
  assign m00_axi_arid[0] = \<const0> ;
  assign m00_axi_arlen[7] = \^m00_axi_arlen [7];
  assign m00_axi_arlen[6:5] = \^m00_axi_awlen [6:5];
  assign m00_axi_arlen[4] = \^m00_axi_arlen [4];
  assign m00_axi_arlen[3] = \^m00_axi_awlen [3];
  assign m00_axi_arlen[2] = \^m00_axi_arlen [2];
  assign m00_axi_arlen[1:0] = \^m00_axi_awlen [1:0];
  assign m00_axi_arlock = \<const0> ;
  assign m00_axi_arprot[2] = \<const0> ;
  assign m00_axi_arprot[1] = \<const0> ;
  assign m00_axi_arprot[0] = \<const0> ;
  assign m00_axi_arqos[3] = \<const0> ;
  assign m00_axi_arqos[2] = \<const0> ;
  assign m00_axi_arqos[1] = \<const0> ;
  assign m00_axi_arqos[0] = \<const0> ;
  assign m00_axi_arsize[2] = \<const0> ;
  assign m00_axi_arsize[1] = \<const1> ;
  assign m00_axi_arsize[0] = \<const0> ;
  assign m00_axi_aruser[0] = \<const1> ;
  assign m00_axi_awburst[1] = \<const0> ;
  assign m00_axi_awburst[0] = \<const1> ;
  assign m00_axi_awcache[3] = \<const0> ;
  assign m00_axi_awcache[2] = \<const0> ;
  assign m00_axi_awcache[1] = \<const1> ;
  assign m00_axi_awcache[0] = \<const0> ;
  assign m00_axi_awid[0] = \<const0> ;
  assign m00_axi_awlen[7] = \^m00_axi_arlen [7];
  assign m00_axi_awlen[6:5] = \^m00_axi_awlen [6:5];
  assign m00_axi_awlen[4] = \^m00_axi_arlen [4];
  assign m00_axi_awlen[3] = \^m00_axi_awlen [3];
  assign m00_axi_awlen[2] = \^m00_axi_arlen [2];
  assign m00_axi_awlen[1:0] = \^m00_axi_awlen [1:0];
  assign m00_axi_awlock = \<const0> ;
  assign m00_axi_awprot[2] = \<const0> ;
  assign m00_axi_awprot[1] = \<const0> ;
  assign m00_axi_awprot[0] = \<const0> ;
  assign m00_axi_awqos[3] = \<const0> ;
  assign m00_axi_awqos[2] = \<const0> ;
  assign m00_axi_awqos[1] = \<const0> ;
  assign m00_axi_awqos[0] = \<const0> ;
  assign m00_axi_awsize[2] = \<const0> ;
  assign m00_axi_awsize[1] = \<const1> ;
  assign m00_axi_awsize[0] = \<const0> ;
  assign m00_axi_awuser[0] = \<const1> ;
  assign m00_axi_wstrb[3] = \<const1> ;
  assign m00_axi_wstrb[2] = \<const1> ;
  assign m00_axi_wstrb[1] = \<const1> ;
  assign m00_axi_wstrb[0] = \<const1> ;
  assign m00_axi_wuser[0] = \<const0> ;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  lab4_my_dma_0_0_my_dma_v1_0 inst
       (.m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_aresetn(m00_axi_aresetn),
        .\m00_axi_arlen[2] (\^m00_axi_arlen [2]),
        .\m00_axi_arlen[4] (\^m00_axi_arlen [4]),
        .\m00_axi_arlen[7] (\^m00_axi_arlen [7]),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_arvalid(m00_axi_arvalid),
        .m00_axi_awaddr(m00_axi_awaddr),
        .m00_axi_awlen({\^m00_axi_awlen [6],\^m00_axi_awlen [3],\^m00_axi_awlen [1:0]}),
        .\m00_axi_awlen[5] (\^m00_axi_awlen [5]),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rlast(m00_axi_rlast),
        .m00_axi_rready(m00_axi_rready),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wlast(m00_axi_wlast),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wvalid(m00_axi_wvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
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
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "bram" *) 
module lab4_my_dma_0_0_bram
   (m00_axi_wdata,
    m00_axi_aclk,
    Q,
    \buffer_wr_addr_reg[9] ,
    \mst_exec_state_reg[1] ,
    \write_index_reg[6] );
  output [31:0]m00_axi_wdata;
  input m00_axi_aclk;
  input [31:0]Q;
  input [9:0]\buffer_wr_addr_reg[9] ;
  input [1:0]\mst_exec_state_reg[1] ;
  input [9:0]\write_index_reg[6] ;

  wire [31:0]Q;
  wire [9:0]buffer_addr;
  wire [9:0]\buffer_wr_addr_reg[9] ;
  wire buffer_wr_en;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_wdata;
  wire [1:0]\mst_exec_state_reg[1] ;
  wire [9:0]\write_index_reg[6] ;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(0)) 
    mem_reg
       (.ADDRARDADDR({1'b1,buffer_addr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(m00_axi_aclk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(Q),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(m00_axi_wdata),
        .DOBDO(NLW_mem_reg_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({buffer_wr_en,buffer_wr_en,buffer_wr_en,buffer_wr_en}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_1
       (.I0(\buffer_wr_addr_reg[9] [9]),
        .I1(\mst_exec_state_reg[1] [0]),
        .I2(\mst_exec_state_reg[1] [1]),
        .I3(\write_index_reg[6] [9]),
        .O(buffer_addr[9]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_10
       (.I0(\buffer_wr_addr_reg[9] [0]),
        .I1(\mst_exec_state_reg[1] [0]),
        .I2(\mst_exec_state_reg[1] [1]),
        .I3(\write_index_reg[6] [0]),
        .O(buffer_addr[0]));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_i_11
       (.I0(\mst_exec_state_reg[1] [0]),
        .I1(\mst_exec_state_reg[1] [1]),
        .O(buffer_wr_en));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_2
       (.I0(\buffer_wr_addr_reg[9] [8]),
        .I1(\mst_exec_state_reg[1] [0]),
        .I2(\mst_exec_state_reg[1] [1]),
        .I3(\write_index_reg[6] [8]),
        .O(buffer_addr[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_3
       (.I0(\buffer_wr_addr_reg[9] [7]),
        .I1(\mst_exec_state_reg[1] [0]),
        .I2(\mst_exec_state_reg[1] [1]),
        .I3(\write_index_reg[6] [7]),
        .O(buffer_addr[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_4
       (.I0(\buffer_wr_addr_reg[9] [6]),
        .I1(\mst_exec_state_reg[1] [0]),
        .I2(\mst_exec_state_reg[1] [1]),
        .I3(\write_index_reg[6] [6]),
        .O(buffer_addr[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_5
       (.I0(\buffer_wr_addr_reg[9] [5]),
        .I1(\mst_exec_state_reg[1] [0]),
        .I2(\mst_exec_state_reg[1] [1]),
        .I3(\write_index_reg[6] [5]),
        .O(buffer_addr[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_6
       (.I0(\buffer_wr_addr_reg[9] [4]),
        .I1(\mst_exec_state_reg[1] [0]),
        .I2(\mst_exec_state_reg[1] [1]),
        .I3(\write_index_reg[6] [4]),
        .O(buffer_addr[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_7
       (.I0(\buffer_wr_addr_reg[9] [3]),
        .I1(\mst_exec_state_reg[1] [0]),
        .I2(\mst_exec_state_reg[1] [1]),
        .I3(\write_index_reg[6] [3]),
        .O(buffer_addr[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_8
       (.I0(\buffer_wr_addr_reg[9] [2]),
        .I1(\mst_exec_state_reg[1] [0]),
        .I2(\mst_exec_state_reg[1] [1]),
        .I3(\write_index_reg[6] [2]),
        .O(buffer_addr[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_9
       (.I0(\buffer_wr_addr_reg[9] [1]),
        .I1(\mst_exec_state_reg[1] [0]),
        .I2(\mst_exec_state_reg[1] [1]),
        .I3(\write_index_reg[6] [1]),
        .O(buffer_addr[1]));
endmodule

(* ORIG_REF_NAME = "my_dma_v1_0" *) 
module lab4_my_dma_0_0_my_dma_v1_0
   (s00_axi_wready,
    s00_axi_awready,
    \m00_axi_arlen[7] ,
    \m00_axi_arlen[2] ,
    \m00_axi_arlen[4] ,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rvalid,
    m00_axi_wdata,
    m00_axi_bready,
    m00_axi_awaddr,
    m00_axi_araddr,
    \m00_axi_awlen[5] ,
    m00_axi_wvalid,
    m00_axi_rready,
    m00_axi_awlen,
    s00_axi_bvalid,
    m00_axi_awvalid,
    m00_axi_wlast,
    m00_axi_arvalid,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_arvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    m00_axi_aclk,
    m00_axi_rdata,
    m00_axi_wready,
    m00_axi_aresetn,
    m00_axi_rvalid,
    m00_axi_bvalid,
    s00_axi_bready,
    s00_axi_rready,
    m00_axi_awready,
    m00_axi_rlast,
    m00_axi_arready);
  output s00_axi_wready;
  output s00_axi_awready;
  output \m00_axi_arlen[7] ;
  output \m00_axi_arlen[2] ;
  output \m00_axi_arlen[4] ;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output [31:0]m00_axi_wdata;
  output m00_axi_bready;
  output [31:0]m00_axi_awaddr;
  output [31:0]m00_axi_araddr;
  output \m00_axi_awlen[5] ;
  output m00_axi_wvalid;
  output m00_axi_rready;
  output [3:0]m00_axi_awlen;
  output s00_axi_bvalid;
  output m00_axi_awvalid;
  output m00_axi_wlast;
  output m00_axi_arvalid;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_arvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input m00_axi_aclk;
  input [31:0]m00_axi_rdata;
  input m00_axi_wready;
  input m00_axi_aresetn;
  input m00_axi_rvalid;
  input m00_axi_bvalid;
  input s00_axi_bready;
  input s00_axi_rready;
  input m00_axi_awready;
  input m00_axi_rlast;
  input m00_axi_arready;

  wire [31:0]dst_addr;
  wire hw_active;
  wire hw_done;
  wire [31:0]len_copy;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire \m00_axi_arlen[2] ;
  wire \m00_axi_arlen[4] ;
  wire \m00_axi_arlen[7] ;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire [31:0]m00_axi_awaddr;
  wire [3:0]m00_axi_awlen;
  wire \m00_axi_awlen[5] ;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire m00_axi_rready;
  wire m00_axi_rvalid;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wlast;
  wire m00_axi_wready;
  wire m00_axi_wvalid;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
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
  wire [31:0]src_addr;

  lab4_my_dma_0_0_my_dma_v1_0_M00_AXI my_dma_v1_0_M00_AXI_inst
       (.Q(dst_addr),
        .hw_active(hw_active),
        .hw_done(hw_done),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_aresetn(m00_axi_aresetn),
        .\m00_axi_arlen[2] (\m00_axi_arlen[2] ),
        .\m00_axi_arlen[4] (\m00_axi_arlen[4] ),
        .\m00_axi_arlen[7] (\m00_axi_arlen[7] ),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_arvalid(m00_axi_arvalid),
        .m00_axi_awaddr(m00_axi_awaddr),
        .m00_axi_awlen(m00_axi_awlen),
        .\m00_axi_awlen[5] (\m00_axi_awlen[5] ),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rlast(m00_axi_rlast),
        .m00_axi_rready(m00_axi_rready),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wlast(m00_axi_wlast),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wvalid(m00_axi_wvalid),
        .\slv_reg2_reg[31] (src_addr),
        .\slv_reg3_reg[31] (len_copy));
  lab4_my_dma_0_0_my_dma_v1_0_S00_AXI my_dma_v1_0_S00_AXI_inst
       (.Q(dst_addr),
        .\axi_rdata_reg[31]_0 (src_addr),
        .\axi_rdata_reg[31]_1 (len_copy),
        .hw_active(hw_active),
        .hw_done(hw_done),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
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
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "my_dma_v1_0_M00_AXI" *) 
module lab4_my_dma_0_0_my_dma_v1_0_M00_AXI
   (m00_axi_wdata,
    m00_axi_bready,
    m00_axi_awvalid,
    m00_axi_wlast,
    m00_axi_wvalid,
    m00_axi_rready,
    m00_axi_arvalid,
    hw_done,
    \m00_axi_arlen[7] ,
    \m00_axi_arlen[2] ,
    \m00_axi_arlen[4] ,
    m00_axi_awlen,
    \m00_axi_awlen[5] ,
    m00_axi_awaddr,
    m00_axi_araddr,
    m00_axi_aclk,
    hw_active,
    m00_axi_wready,
    m00_axi_aresetn,
    m00_axi_rvalid,
    m00_axi_bvalid,
    Q,
    \slv_reg2_reg[31] ,
    \slv_reg3_reg[31] ,
    m00_axi_awready,
    m00_axi_rlast,
    m00_axi_arready,
    m00_axi_rdata);
  output [31:0]m00_axi_wdata;
  output m00_axi_bready;
  output m00_axi_awvalid;
  output m00_axi_wlast;
  output m00_axi_wvalid;
  output m00_axi_rready;
  output m00_axi_arvalid;
  output hw_done;
  output \m00_axi_arlen[7] ;
  output \m00_axi_arlen[2] ;
  output \m00_axi_arlen[4] ;
  output [3:0]m00_axi_awlen;
  output \m00_axi_awlen[5] ;
  output [31:0]m00_axi_awaddr;
  output [31:0]m00_axi_araddr;
  input m00_axi_aclk;
  input hw_active;
  input m00_axi_wready;
  input m00_axi_aresetn;
  input m00_axi_rvalid;
  input m00_axi_bvalid;
  input [31:0]Q;
  input [31:0]\slv_reg2_reg[31] ;
  input [31:0]\slv_reg3_reg[31] ;
  input m00_axi_awready;
  input m00_axi_rlast;
  input m00_axi_arready;
  input [31:0]m00_axi_rdata;

  wire [31:0]Q;
  wire \axi_araddr[0]_i_1_n_0 ;
  wire \axi_araddr[10]_i_1_n_0 ;
  wire \axi_araddr[11]_i_1_n_0 ;
  wire \axi_araddr[12]_i_1_n_0 ;
  wire \axi_araddr[13]_i_1_n_0 ;
  wire \axi_araddr[14]_i_1_n_0 ;
  wire \axi_araddr[15]_i_1_n_0 ;
  wire \axi_araddr[16]_i_1_n_0 ;
  wire \axi_araddr[17]_i_1_n_0 ;
  wire \axi_araddr[18]_i_1_n_0 ;
  wire \axi_araddr[19]_i_1_n_0 ;
  wire \axi_araddr[1]_i_1_n_0 ;
  wire \axi_araddr[20]_i_1_n_0 ;
  wire \axi_araddr[21]_i_1_n_0 ;
  wire \axi_araddr[22]_i_1_n_0 ;
  wire \axi_araddr[23]_i_1_n_0 ;
  wire \axi_araddr[24]_i_1_n_0 ;
  wire \axi_araddr[25]_i_1_n_0 ;
  wire \axi_araddr[26]_i_1_n_0 ;
  wire \axi_araddr[27]_i_1_n_0 ;
  wire \axi_araddr[28]_i_1_n_0 ;
  wire \axi_araddr[29]_i_1_n_0 ;
  wire \axi_araddr[2]_i_1__0_n_0 ;
  wire \axi_araddr[30]_i_1_n_0 ;
  wire \axi_araddr[31]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1__0_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire \axi_araddr[5]_i_1_n_0 ;
  wire \axi_araddr[6]_i_1_n_0 ;
  wire \axi_araddr[7]_i_1_n_0 ;
  wire \axi_araddr[8]_i_1_n_0 ;
  wire \axi_araddr[9]_i_1_n_0 ;
  wire axi_arvalid_i_1_n_0;
  wire \axi_awaddr[0]_i_1_n_0 ;
  wire \axi_awaddr[10]_i_1_n_0 ;
  wire \axi_awaddr[11]_i_1_n_0 ;
  wire \axi_awaddr[12]_i_1_n_0 ;
  wire \axi_awaddr[13]_i_1_n_0 ;
  wire \axi_awaddr[14]_i_1_n_0 ;
  wire \axi_awaddr[15]_i_1_n_0 ;
  wire \axi_awaddr[16]_i_1_n_0 ;
  wire \axi_awaddr[17]_i_1_n_0 ;
  wire \axi_awaddr[18]_i_1_n_0 ;
  wire \axi_awaddr[19]_i_1_n_0 ;
  wire \axi_awaddr[1]_i_1_n_0 ;
  wire \axi_awaddr[20]_i_1_n_0 ;
  wire \axi_awaddr[21]_i_1_n_0 ;
  wire \axi_awaddr[22]_i_1_n_0 ;
  wire \axi_awaddr[23]_i_1_n_0 ;
  wire \axi_awaddr[24]_i_1_n_0 ;
  wire \axi_awaddr[25]_i_1_n_0 ;
  wire \axi_awaddr[26]_i_1_n_0 ;
  wire \axi_awaddr[27]_i_1_n_0 ;
  wire \axi_awaddr[28]_i_1_n_0 ;
  wire \axi_awaddr[29]_i_1_n_0 ;
  wire \axi_awaddr[2]_i_1__0_n_0 ;
  wire \axi_awaddr[30]_i_1_n_0 ;
  wire \axi_awaddr[31]_i_1_n_0 ;
  wire \axi_awaddr[31]_i_2_n_0 ;
  wire \axi_awaddr[3]_i_1__0_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire \axi_awaddr[5]_i_1_n_0 ;
  wire \axi_awaddr[6]_i_1_n_0 ;
  wire \axi_awaddr[7]_i_1_n_0 ;
  wire \axi_awaddr[8]_i_1_n_0 ;
  wire \axi_awaddr[9]_i_1_n_0 ;
  wire axi_awvalid_i_1_n_0;
  wire axi_bready0;
  wire axi_rready_i_1_n_0;
  wire axi_wlast3;
  wire axi_wlast3_carry__0_i_1_n_0;
  wire axi_wlast3_carry__0_i_2_n_0;
  wire axi_wlast3_carry__0_i_3_n_0;
  wire axi_wlast3_carry__0_i_4_n_0;
  wire axi_wlast3_carry__0_n_0;
  wire axi_wlast3_carry__0_n_1;
  wire axi_wlast3_carry__0_n_2;
  wire axi_wlast3_carry__0_n_3;
  wire axi_wlast3_carry__1_i_1_n_0;
  wire axi_wlast3_carry__1_i_2_n_0;
  wire axi_wlast3_carry__1_i_3_n_0;
  wire axi_wlast3_carry__1_n_2;
  wire axi_wlast3_carry__1_n_3;
  wire axi_wlast3_carry_i_10_n_0;
  wire axi_wlast3_carry_i_11_n_0;
  wire axi_wlast3_carry_i_12_n_0;
  wire axi_wlast3_carry_i_1_n_0;
  wire axi_wlast3_carry_i_2_n_0;
  wire axi_wlast3_carry_i_3_n_0;
  wire axi_wlast3_carry_i_4_n_0;
  wire axi_wlast3_carry_i_5_n_0;
  wire axi_wlast3_carry_i_6_n_0;
  wire axi_wlast3_carry_i_7_n_0;
  wire axi_wlast3_carry_i_8_n_0;
  wire axi_wlast3_carry_n_0;
  wire axi_wlast3_carry_n_1;
  wire axi_wlast3_carry_n_2;
  wire axi_wlast3_carry_n_3;
  wire axi_wlast_i_1_n_0;
  wire axi_wvalid_i_1_n_0;
  wire [9:0]buffer_rd_addr;
  wire [0:0]buffer_rd_addr1;
  wire \buffer_rd_addr_reg[0]_i_1_n_0 ;
  wire \buffer_rd_addr_reg[1]_i_1_n_0 ;
  wire \buffer_rd_addr_reg[2]_i_1_n_0 ;
  wire \buffer_rd_addr_reg[3]_i_1_n_0 ;
  wire \buffer_rd_addr_reg[4]_i_1_n_0 ;
  wire \buffer_rd_addr_reg[5]_i_1_n_0 ;
  wire \buffer_rd_addr_reg[5]_i_2_n_0 ;
  wire \buffer_rd_addr_reg[6]_i_1_n_0 ;
  wire \buffer_rd_addr_reg[7]_i_1_n_0 ;
  wire \buffer_rd_addr_reg[8]_i_1_n_0 ;
  wire \buffer_rd_addr_reg[9]_i_1_n_0 ;
  wire \buffer_rd_addr_reg[9]_i_2_n_0 ;
  wire \buffer_rd_addr_reg[9]_i_3_n_0 ;
  wire [9:0]buffer_wr_addr;
  wire [31:0]buffer_wr_data;
  wire [5:5]burst_length;
  wire burst_read_active;
  wire burst_read_active_i_1_n_0;
  wire burst_write_active;
  wire burst_write_active_i_1_n_0;
  wire [31:0]dst_addr_reg;
  wire [31:1]dst_addr_reg0;
  wire \dst_addr_reg[0]_i_1_n_0 ;
  wire \dst_addr_reg[10]_i_1_n_0 ;
  wire \dst_addr_reg[11]_i_1_n_0 ;
  wire \dst_addr_reg[12]_i_1_n_0 ;
  wire \dst_addr_reg[12]_i_3_n_0 ;
  wire \dst_addr_reg[12]_i_4_n_0 ;
  wire \dst_addr_reg[12]_i_5_n_0 ;
  wire \dst_addr_reg[12]_i_6_n_0 ;
  wire \dst_addr_reg[13]_i_1_n_0 ;
  wire \dst_addr_reg[14]_i_1_n_0 ;
  wire \dst_addr_reg[15]_i_1_n_0 ;
  wire \dst_addr_reg[16]_i_1_n_0 ;
  wire \dst_addr_reg[16]_i_3_n_0 ;
  wire \dst_addr_reg[16]_i_4_n_0 ;
  wire \dst_addr_reg[16]_i_5_n_0 ;
  wire \dst_addr_reg[16]_i_6_n_0 ;
  wire \dst_addr_reg[17]_i_1_n_0 ;
  wire \dst_addr_reg[18]_i_1_n_0 ;
  wire \dst_addr_reg[19]_i_1_n_0 ;
  wire \dst_addr_reg[1]_i_1_n_0 ;
  wire \dst_addr_reg[20]_i_1_n_0 ;
  wire \dst_addr_reg[20]_i_3_n_0 ;
  wire \dst_addr_reg[20]_i_4_n_0 ;
  wire \dst_addr_reg[20]_i_5_n_0 ;
  wire \dst_addr_reg[20]_i_6_n_0 ;
  wire \dst_addr_reg[21]_i_1_n_0 ;
  wire \dst_addr_reg[22]_i_1_n_0 ;
  wire \dst_addr_reg[23]_i_1_n_0 ;
  wire \dst_addr_reg[24]_i_1_n_0 ;
  wire \dst_addr_reg[24]_i_3_n_0 ;
  wire \dst_addr_reg[24]_i_4_n_0 ;
  wire \dst_addr_reg[24]_i_5_n_0 ;
  wire \dst_addr_reg[24]_i_6_n_0 ;
  wire \dst_addr_reg[25]_i_1_n_0 ;
  wire \dst_addr_reg[26]_i_1_n_0 ;
  wire \dst_addr_reg[27]_i_1_n_0 ;
  wire \dst_addr_reg[28]_i_1_n_0 ;
  wire \dst_addr_reg[28]_i_3_n_0 ;
  wire \dst_addr_reg[28]_i_4_n_0 ;
  wire \dst_addr_reg[28]_i_5_n_0 ;
  wire \dst_addr_reg[28]_i_6_n_0 ;
  wire \dst_addr_reg[29]_i_1_n_0 ;
  wire \dst_addr_reg[2]_i_1_n_0 ;
  wire \dst_addr_reg[30]_i_1_n_0 ;
  wire \dst_addr_reg[31]_i_2_n_0 ;
  wire \dst_addr_reg[31]_i_3_n_0 ;
  wire \dst_addr_reg[31]_i_5_n_0 ;
  wire \dst_addr_reg[31]_i_6_n_0 ;
  wire \dst_addr_reg[31]_i_7_n_0 ;
  wire \dst_addr_reg[3]_i_1_n_0 ;
  wire \dst_addr_reg[4]_i_1_n_0 ;
  wire \dst_addr_reg[4]_i_3_n_0 ;
  wire \dst_addr_reg[4]_i_4_n_0 ;
  wire \dst_addr_reg[4]_i_5_n_0 ;
  wire \dst_addr_reg[4]_i_6_n_0 ;
  wire \dst_addr_reg[5]_i_1_n_0 ;
  wire \dst_addr_reg[6]_i_1_n_0 ;
  wire \dst_addr_reg[7]_i_1_n_0 ;
  wire \dst_addr_reg[8]_i_1_n_0 ;
  wire \dst_addr_reg[8]_i_3_n_0 ;
  wire \dst_addr_reg[8]_i_4_n_0 ;
  wire \dst_addr_reg[8]_i_5_n_0 ;
  wire \dst_addr_reg[8]_i_6_n_0 ;
  wire \dst_addr_reg[9]_i_1_n_0 ;
  wire \dst_addr_reg_reg[12]_i_2_n_0 ;
  wire \dst_addr_reg_reg[12]_i_2_n_1 ;
  wire \dst_addr_reg_reg[12]_i_2_n_2 ;
  wire \dst_addr_reg_reg[12]_i_2_n_3 ;
  wire \dst_addr_reg_reg[16]_i_2_n_0 ;
  wire \dst_addr_reg_reg[16]_i_2_n_1 ;
  wire \dst_addr_reg_reg[16]_i_2_n_2 ;
  wire \dst_addr_reg_reg[16]_i_2_n_3 ;
  wire \dst_addr_reg_reg[20]_i_2_n_0 ;
  wire \dst_addr_reg_reg[20]_i_2_n_1 ;
  wire \dst_addr_reg_reg[20]_i_2_n_2 ;
  wire \dst_addr_reg_reg[20]_i_2_n_3 ;
  wire \dst_addr_reg_reg[24]_i_2_n_0 ;
  wire \dst_addr_reg_reg[24]_i_2_n_1 ;
  wire \dst_addr_reg_reg[24]_i_2_n_2 ;
  wire \dst_addr_reg_reg[24]_i_2_n_3 ;
  wire \dst_addr_reg_reg[28]_i_2_n_0 ;
  wire \dst_addr_reg_reg[28]_i_2_n_1 ;
  wire \dst_addr_reg_reg[28]_i_2_n_2 ;
  wire \dst_addr_reg_reg[28]_i_2_n_3 ;
  wire \dst_addr_reg_reg[31]_i_4_n_2 ;
  wire \dst_addr_reg_reg[31]_i_4_n_3 ;
  wire \dst_addr_reg_reg[4]_i_2_n_0 ;
  wire \dst_addr_reg_reg[4]_i_2_n_1 ;
  wire \dst_addr_reg_reg[4]_i_2_n_2 ;
  wire \dst_addr_reg_reg[4]_i_2_n_3 ;
  wire \dst_addr_reg_reg[8]_i_2_n_0 ;
  wire \dst_addr_reg_reg[8]_i_2_n_1 ;
  wire \dst_addr_reg_reg[8]_i_2_n_2 ;
  wire \dst_addr_reg_reg[8]_i_2_n_3 ;
  wire hw_active;
  wire hw_done;
  wire hw_done_reg_i_1_n_0;
  wire init_txn_ff;
  wire init_txn_ff2;
  wire init_txn_ff_i_1_n_0;
  (* MARK_DEBUG *) wire init_txn_pulse;
  wire len_copy_reg;
  wire [31:2]len_copy_reg0;
  wire len_copy_reg0_carry__0_i_1_n_0;
  wire len_copy_reg0_carry__0_i_2_n_0;
  wire len_copy_reg0_carry__0_i_3_n_0;
  wire len_copy_reg0_carry__0_i_4_n_0;
  wire len_copy_reg0_carry__0_i_5_n_0;
  wire len_copy_reg0_carry__0_i_6_n_0;
  wire len_copy_reg0_carry__0_i_7_n_0;
  wire len_copy_reg0_carry__0_i_8_n_0;
  wire len_copy_reg0_carry__0_n_0;
  wire len_copy_reg0_carry__0_n_1;
  wire len_copy_reg0_carry__0_n_2;
  wire len_copy_reg0_carry__0_n_3;
  wire len_copy_reg0_carry__1_i_1_n_0;
  wire len_copy_reg0_carry__1_i_2_n_0;
  wire len_copy_reg0_carry__1_i_3_n_0;
  wire len_copy_reg0_carry__1_i_4_n_0;
  wire len_copy_reg0_carry__1_i_5_n_0;
  wire len_copy_reg0_carry__1_n_0;
  wire len_copy_reg0_carry__1_n_1;
  wire len_copy_reg0_carry__1_n_2;
  wire len_copy_reg0_carry__1_n_3;
  wire len_copy_reg0_carry__2_i_1_n_0;
  wire len_copy_reg0_carry__2_i_2_n_0;
  wire len_copy_reg0_carry__2_i_3_n_0;
  wire len_copy_reg0_carry__2_i_4_n_0;
  wire len_copy_reg0_carry__2_n_0;
  wire len_copy_reg0_carry__2_n_1;
  wire len_copy_reg0_carry__2_n_2;
  wire len_copy_reg0_carry__2_n_3;
  wire len_copy_reg0_carry__3_i_1_n_0;
  wire len_copy_reg0_carry__3_i_2_n_0;
  wire len_copy_reg0_carry__3_i_3_n_0;
  wire len_copy_reg0_carry__3_i_4_n_0;
  wire len_copy_reg0_carry__3_n_0;
  wire len_copy_reg0_carry__3_n_1;
  wire len_copy_reg0_carry__3_n_2;
  wire len_copy_reg0_carry__3_n_3;
  wire len_copy_reg0_carry__4_i_1_n_0;
  wire len_copy_reg0_carry__4_i_2_n_0;
  wire len_copy_reg0_carry__4_i_3_n_0;
  wire len_copy_reg0_carry__4_i_4_n_0;
  wire len_copy_reg0_carry__4_n_0;
  wire len_copy_reg0_carry__4_n_1;
  wire len_copy_reg0_carry__4_n_2;
  wire len_copy_reg0_carry__4_n_3;
  wire len_copy_reg0_carry__5_i_1_n_0;
  wire len_copy_reg0_carry__5_i_2_n_0;
  wire len_copy_reg0_carry__5_i_3_n_0;
  wire len_copy_reg0_carry__5_i_4_n_0;
  wire len_copy_reg0_carry__5_n_0;
  wire len_copy_reg0_carry__5_n_1;
  wire len_copy_reg0_carry__5_n_2;
  wire len_copy_reg0_carry__5_n_3;
  wire len_copy_reg0_carry__6_i_1_n_0;
  wire len_copy_reg0_carry__6_i_2_n_0;
  wire len_copy_reg0_carry__6_n_3;
  wire len_copy_reg0_carry_i_1_n_0;
  wire len_copy_reg0_carry_i_2_n_0;
  wire len_copy_reg0_carry_i_3_n_0;
  wire len_copy_reg0_carry_i_4_n_0;
  wire len_copy_reg0_carry_i_5_n_0;
  wire len_copy_reg0_carry_i_6_n_0;
  wire len_copy_reg0_carry_i_7_n_0;
  wire len_copy_reg0_carry_n_0;
  wire len_copy_reg0_carry_n_1;
  wire len_copy_reg0_carry_n_2;
  wire len_copy_reg0_carry_n_3;
  wire \len_copy_reg[0]_i_1_n_0 ;
  wire \len_copy_reg[10]_i_1_n_0 ;
  wire \len_copy_reg[11]_i_1_n_0 ;
  wire \len_copy_reg[12]_i_1_n_0 ;
  wire \len_copy_reg[13]_i_1_n_0 ;
  wire \len_copy_reg[14]_i_1_n_0 ;
  wire \len_copy_reg[15]_i_1_n_0 ;
  wire \len_copy_reg[16]_i_1_n_0 ;
  wire \len_copy_reg[17]_i_1_n_0 ;
  wire \len_copy_reg[18]_i_1_n_0 ;
  wire \len_copy_reg[19]_i_1_n_0 ;
  wire \len_copy_reg[1]_i_1_n_0 ;
  wire \len_copy_reg[20]_i_1_n_0 ;
  wire \len_copy_reg[21]_i_1_n_0 ;
  wire \len_copy_reg[22]_i_1_n_0 ;
  wire \len_copy_reg[23]_i_1_n_0 ;
  wire \len_copy_reg[24]_i_1_n_0 ;
  wire \len_copy_reg[25]_i_1_n_0 ;
  wire \len_copy_reg[26]_i_1_n_0 ;
  wire \len_copy_reg[27]_i_1_n_0 ;
  wire \len_copy_reg[28]_i_1_n_0 ;
  wire \len_copy_reg[29]_i_1_n_0 ;
  wire \len_copy_reg[2]_i_1_n_0 ;
  wire \len_copy_reg[30]_i_1_n_0 ;
  wire \len_copy_reg[31]_i_2_n_0 ;
  wire \len_copy_reg[3]_i_1_n_0 ;
  wire \len_copy_reg[4]_i_1_n_0 ;
  wire \len_copy_reg[5]_i_1_n_0 ;
  wire \len_copy_reg[6]_i_1_n_0 ;
  wire \len_copy_reg[7]_i_1_n_0 ;
  wire \len_copy_reg[8]_i_1_n_0 ;
  wire \len_copy_reg[9]_i_1_n_0 ;
  wire \len_copy_reg_reg_n_0_[0] ;
  wire \len_copy_reg_reg_n_0_[10] ;
  wire \len_copy_reg_reg_n_0_[11] ;
  wire \len_copy_reg_reg_n_0_[12] ;
  wire \len_copy_reg_reg_n_0_[13] ;
  wire \len_copy_reg_reg_n_0_[14] ;
  wire \len_copy_reg_reg_n_0_[15] ;
  wire \len_copy_reg_reg_n_0_[16] ;
  wire \len_copy_reg_reg_n_0_[17] ;
  wire \len_copy_reg_reg_n_0_[18] ;
  wire \len_copy_reg_reg_n_0_[19] ;
  wire \len_copy_reg_reg_n_0_[1] ;
  wire \len_copy_reg_reg_n_0_[20] ;
  wire \len_copy_reg_reg_n_0_[21] ;
  wire \len_copy_reg_reg_n_0_[22] ;
  wire \len_copy_reg_reg_n_0_[23] ;
  wire \len_copy_reg_reg_n_0_[24] ;
  wire \len_copy_reg_reg_n_0_[25] ;
  wire \len_copy_reg_reg_n_0_[26] ;
  wire \len_copy_reg_reg_n_0_[27] ;
  wire \len_copy_reg_reg_n_0_[28] ;
  wire \len_copy_reg_reg_n_0_[29] ;
  wire \len_copy_reg_reg_n_0_[2] ;
  wire \len_copy_reg_reg_n_0_[30] ;
  wire \len_copy_reg_reg_n_0_[31] ;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire \m00_axi_arlen[0]_INST_0_i_1_n_0 ;
  wire \m00_axi_arlen[0]_INST_0_i_2_n_0 ;
  wire \m00_axi_arlen[2] ;
  wire \m00_axi_arlen[3]_INST_0_i_1_n_0 ;
  wire \m00_axi_arlen[4] ;
  wire \m00_axi_arlen[7] ;
  wire \m00_axi_arlen[7]_INST_0_i_1_n_0 ;
  wire \m00_axi_arlen[7]_INST_0_i_2_n_0 ;
  wire \m00_axi_arlen[7]_INST_0_i_3_n_0 ;
  wire \m00_axi_arlen[7]_INST_0_i_4_n_0 ;
  wire \m00_axi_arlen[7]_INST_0_i_5_n_0 ;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire [31:0]m00_axi_awaddr;
  wire [3:0]m00_axi_awlen;
  wire \m00_axi_awlen[5] ;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire m00_axi_rready;
  wire m00_axi_rvalid;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wlast;
  wire m00_axi_wready;
  wire m00_axi_wvalid;
  wire [1:0]mst_exec_state;
  wire \mst_exec_state[0]_i_1_n_0 ;
  wire \mst_exec_state[1]_i_1_n_0 ;
  wire read_index0;
  wire read_index1;
  wire \read_index[0]_i_10_n_0 ;
  wire \read_index[0]_i_11_n_0 ;
  wire \read_index[0]_i_12_n_0 ;
  wire \read_index[0]_i_14_n_0 ;
  wire \read_index[0]_i_15_n_0 ;
  wire \read_index[0]_i_16_n_0 ;
  wire \read_index[0]_i_17_n_0 ;
  wire \read_index[0]_i_18_n_0 ;
  wire \read_index[0]_i_19_n_0 ;
  wire \read_index[0]_i_1_n_0 ;
  wire \read_index[0]_i_20_n_0 ;
  wire \read_index[0]_i_21_n_0 ;
  wire \read_index[0]_i_22_n_0 ;
  wire \read_index[0]_i_5_n_0 ;
  wire \read_index[0]_i_6_n_0 ;
  wire \read_index[0]_i_7_n_0 ;
  wire \read_index[0]_i_8_n_0 ;
  wire \read_index[12]_i_2_n_0 ;
  wire \read_index[12]_i_3_n_0 ;
  wire \read_index[12]_i_4_n_0 ;
  wire \read_index[12]_i_5_n_0 ;
  wire \read_index[16]_i_2_n_0 ;
  wire \read_index[16]_i_3_n_0 ;
  wire \read_index[16]_i_4_n_0 ;
  wire \read_index[16]_i_5_n_0 ;
  wire \read_index[20]_i_2_n_0 ;
  wire \read_index[20]_i_3_n_0 ;
  wire \read_index[20]_i_4_n_0 ;
  wire \read_index[20]_i_5_n_0 ;
  wire \read_index[24]_i_2_n_0 ;
  wire \read_index[24]_i_3_n_0 ;
  wire \read_index[24]_i_4_n_0 ;
  wire \read_index[24]_i_5_n_0 ;
  wire \read_index[28]_i_2_n_0 ;
  wire \read_index[28]_i_3_n_0 ;
  wire \read_index[28]_i_4_n_0 ;
  wire \read_index[28]_i_5_n_0 ;
  wire \read_index[4]_i_2_n_0 ;
  wire \read_index[4]_i_3_n_0 ;
  wire \read_index[4]_i_4_n_0 ;
  wire \read_index[4]_i_5_n_0 ;
  wire \read_index[8]_i_2_n_0 ;
  wire \read_index[8]_i_3_n_0 ;
  wire \read_index[8]_i_4_n_0 ;
  wire \read_index[8]_i_5_n_0 ;
  wire [9:0]read_index_reg;
  wire \read_index_reg[0]_i_13_n_0 ;
  wire \read_index_reg[0]_i_13_n_1 ;
  wire \read_index_reg[0]_i_13_n_2 ;
  wire \read_index_reg[0]_i_13_n_3 ;
  wire \read_index_reg[0]_i_3_n_0 ;
  wire \read_index_reg[0]_i_3_n_1 ;
  wire \read_index_reg[0]_i_3_n_2 ;
  wire \read_index_reg[0]_i_3_n_3 ;
  wire \read_index_reg[0]_i_3_n_4 ;
  wire \read_index_reg[0]_i_3_n_5 ;
  wire \read_index_reg[0]_i_3_n_6 ;
  wire \read_index_reg[0]_i_3_n_7 ;
  wire \read_index_reg[0]_i_4_n_2 ;
  wire \read_index_reg[0]_i_4_n_3 ;
  wire \read_index_reg[0]_i_9_n_0 ;
  wire \read_index_reg[0]_i_9_n_1 ;
  wire \read_index_reg[0]_i_9_n_2 ;
  wire \read_index_reg[0]_i_9_n_3 ;
  wire \read_index_reg[12]_i_1_n_0 ;
  wire \read_index_reg[12]_i_1_n_1 ;
  wire \read_index_reg[12]_i_1_n_2 ;
  wire \read_index_reg[12]_i_1_n_3 ;
  wire \read_index_reg[12]_i_1_n_4 ;
  wire \read_index_reg[12]_i_1_n_5 ;
  wire \read_index_reg[12]_i_1_n_6 ;
  wire \read_index_reg[12]_i_1_n_7 ;
  wire \read_index_reg[16]_i_1_n_0 ;
  wire \read_index_reg[16]_i_1_n_1 ;
  wire \read_index_reg[16]_i_1_n_2 ;
  wire \read_index_reg[16]_i_1_n_3 ;
  wire \read_index_reg[16]_i_1_n_4 ;
  wire \read_index_reg[16]_i_1_n_5 ;
  wire \read_index_reg[16]_i_1_n_6 ;
  wire \read_index_reg[16]_i_1_n_7 ;
  wire \read_index_reg[20]_i_1_n_0 ;
  wire \read_index_reg[20]_i_1_n_1 ;
  wire \read_index_reg[20]_i_1_n_2 ;
  wire \read_index_reg[20]_i_1_n_3 ;
  wire \read_index_reg[20]_i_1_n_4 ;
  wire \read_index_reg[20]_i_1_n_5 ;
  wire \read_index_reg[20]_i_1_n_6 ;
  wire \read_index_reg[20]_i_1_n_7 ;
  wire \read_index_reg[24]_i_1_n_0 ;
  wire \read_index_reg[24]_i_1_n_1 ;
  wire \read_index_reg[24]_i_1_n_2 ;
  wire \read_index_reg[24]_i_1_n_3 ;
  wire \read_index_reg[24]_i_1_n_4 ;
  wire \read_index_reg[24]_i_1_n_5 ;
  wire \read_index_reg[24]_i_1_n_6 ;
  wire \read_index_reg[24]_i_1_n_7 ;
  wire \read_index_reg[28]_i_1_n_1 ;
  wire \read_index_reg[28]_i_1_n_2 ;
  wire \read_index_reg[28]_i_1_n_3 ;
  wire \read_index_reg[28]_i_1_n_4 ;
  wire \read_index_reg[28]_i_1_n_5 ;
  wire \read_index_reg[28]_i_1_n_6 ;
  wire \read_index_reg[28]_i_1_n_7 ;
  wire \read_index_reg[4]_i_1_n_0 ;
  wire \read_index_reg[4]_i_1_n_1 ;
  wire \read_index_reg[4]_i_1_n_2 ;
  wire \read_index_reg[4]_i_1_n_3 ;
  wire \read_index_reg[4]_i_1_n_4 ;
  wire \read_index_reg[4]_i_1_n_5 ;
  wire \read_index_reg[4]_i_1_n_6 ;
  wire \read_index_reg[4]_i_1_n_7 ;
  wire \read_index_reg[8]_i_1_n_0 ;
  wire \read_index_reg[8]_i_1_n_1 ;
  wire \read_index_reg[8]_i_1_n_2 ;
  wire \read_index_reg[8]_i_1_n_3 ;
  wire \read_index_reg[8]_i_1_n_4 ;
  wire \read_index_reg[8]_i_1_n_5 ;
  wire \read_index_reg[8]_i_1_n_6 ;
  wire \read_index_reg[8]_i_1_n_7 ;
  wire [31:10]read_index_reg__0;
  wire reads_done;
  wire reads_done1;
  wire reads_done_i_10_n_0;
  wire reads_done_i_11_n_0;
  wire reads_done_i_12_n_0;
  wire reads_done_i_13_n_0;
  wire reads_done_i_14_n_0;
  wire reads_done_i_15_n_0;
  wire reads_done_i_1_n_0;
  wire reads_done_i_4_n_0;
  wire reads_done_i_5_n_0;
  wire reads_done_i_6_n_0;
  wire reads_done_i_8_n_0;
  wire reads_done_i_9_n_0;
  wire reads_done_reg_i_2_n_2;
  wire reads_done_reg_i_2_n_3;
  wire reads_done_reg_i_3_n_0;
  wire reads_done_reg_i_3_n_1;
  wire reads_done_reg_i_3_n_2;
  wire reads_done_reg_i_3_n_3;
  wire reads_done_reg_i_7_n_0;
  wire reads_done_reg_i_7_n_1;
  wire reads_done_reg_i_7_n_2;
  wire reads_done_reg_i_7_n_3;
  wire redo1_carry__0_i_1_n_0;
  wire redo1_carry__0_i_2_n_0;
  wire redo1_carry__0_i_3_n_0;
  wire redo1_carry__0_i_4_n_0;
  wire redo1_carry__0_i_5_n_0;
  wire redo1_carry__0_n_0;
  wire redo1_carry__0_n_1;
  wire redo1_carry__0_n_2;
  wire redo1_carry__0_n_3;
  wire redo1_carry__1_i_1_n_0;
  wire redo1_carry__1_i_2_n_0;
  wire redo1_carry__1_i_3_n_0;
  wire redo1_carry__1_i_4_n_0;
  wire redo1_carry__1_n_0;
  wire redo1_carry__1_n_1;
  wire redo1_carry__1_n_2;
  wire redo1_carry__1_n_3;
  wire redo1_carry__2_i_1_n_0;
  wire redo1_carry__2_i_2_n_0;
  wire redo1_carry__2_i_3_n_0;
  wire redo1_carry__2_i_4_n_0;
  wire redo1_carry__2_n_0;
  wire redo1_carry__2_n_1;
  wire redo1_carry__2_n_2;
  wire redo1_carry__2_n_3;
  wire redo1_carry_i_1_n_0;
  wire redo1_carry_i_2_n_0;
  wire redo1_carry_i_3_n_0;
  wire redo1_carry_i_4_n_0;
  wire redo1_carry_i_5_n_0;
  wire redo1_carry_i_6_n_0;
  wire redo1_carry_i_7_n_0;
  wire redo1_carry_n_0;
  wire redo1_carry_n_1;
  wire redo1_carry_n_2;
  wire redo1_carry_n_3;
  wire redo_i_1_n_0;
  wire redo_reg_n_0;
  (* MARK_DEBUG *) wire rnext;
  wire [6:0]sel0;
  wire [31:0]\slv_reg2_reg[31] ;
  wire [31:0]\slv_reg3_reg[31] ;
  wire src_addr_reg;
  wire [31:1]src_addr_reg0;
  wire \src_addr_reg[0]_i_1_n_0 ;
  wire \src_addr_reg[10]_i_1_n_0 ;
  wire \src_addr_reg[11]_i_1_n_0 ;
  wire \src_addr_reg[12]_i_1_n_0 ;
  wire \src_addr_reg[12]_i_3_n_0 ;
  wire \src_addr_reg[12]_i_4_n_0 ;
  wire \src_addr_reg[12]_i_5_n_0 ;
  wire \src_addr_reg[12]_i_6_n_0 ;
  wire \src_addr_reg[13]_i_1_n_0 ;
  wire \src_addr_reg[14]_i_1_n_0 ;
  wire \src_addr_reg[15]_i_1_n_0 ;
  wire \src_addr_reg[16]_i_1_n_0 ;
  wire \src_addr_reg[16]_i_3_n_0 ;
  wire \src_addr_reg[16]_i_4_n_0 ;
  wire \src_addr_reg[16]_i_5_n_0 ;
  wire \src_addr_reg[16]_i_6_n_0 ;
  wire \src_addr_reg[17]_i_1_n_0 ;
  wire \src_addr_reg[18]_i_1_n_0 ;
  wire \src_addr_reg[19]_i_1_n_0 ;
  wire \src_addr_reg[1]_i_1_n_0 ;
  wire \src_addr_reg[20]_i_1_n_0 ;
  wire \src_addr_reg[20]_i_3_n_0 ;
  wire \src_addr_reg[20]_i_4_n_0 ;
  wire \src_addr_reg[20]_i_5_n_0 ;
  wire \src_addr_reg[20]_i_6_n_0 ;
  wire \src_addr_reg[21]_i_1_n_0 ;
  wire \src_addr_reg[22]_i_1_n_0 ;
  wire \src_addr_reg[23]_i_1_n_0 ;
  wire \src_addr_reg[24]_i_1_n_0 ;
  wire \src_addr_reg[24]_i_3_n_0 ;
  wire \src_addr_reg[24]_i_4_n_0 ;
  wire \src_addr_reg[24]_i_5_n_0 ;
  wire \src_addr_reg[24]_i_6_n_0 ;
  wire \src_addr_reg[25]_i_1_n_0 ;
  wire \src_addr_reg[26]_i_1_n_0 ;
  wire \src_addr_reg[27]_i_1_n_0 ;
  wire \src_addr_reg[28]_i_1_n_0 ;
  wire \src_addr_reg[28]_i_3_n_0 ;
  wire \src_addr_reg[28]_i_4_n_0 ;
  wire \src_addr_reg[28]_i_5_n_0 ;
  wire \src_addr_reg[28]_i_6_n_0 ;
  wire \src_addr_reg[29]_i_1_n_0 ;
  wire \src_addr_reg[2]_i_1_n_0 ;
  wire \src_addr_reg[30]_i_1_n_0 ;
  wire \src_addr_reg[31]_i_1_n_0 ;
  wire \src_addr_reg[31]_i_3_n_0 ;
  wire \src_addr_reg[31]_i_4_n_0 ;
  wire \src_addr_reg[31]_i_5_n_0 ;
  wire \src_addr_reg[3]_i_1_n_0 ;
  wire \src_addr_reg[4]_i_1_n_0 ;
  wire \src_addr_reg[4]_i_3_n_0 ;
  wire \src_addr_reg[4]_i_4_n_0 ;
  wire \src_addr_reg[4]_i_5_n_0 ;
  wire \src_addr_reg[4]_i_6_n_0 ;
  wire \src_addr_reg[5]_i_1_n_0 ;
  wire \src_addr_reg[6]_i_1_n_0 ;
  wire \src_addr_reg[7]_i_1_n_0 ;
  wire \src_addr_reg[8]_i_1_n_0 ;
  wire \src_addr_reg[8]_i_3_n_0 ;
  wire \src_addr_reg[8]_i_4_n_0 ;
  wire \src_addr_reg[8]_i_5_n_0 ;
  wire \src_addr_reg[8]_i_6_n_0 ;
  wire \src_addr_reg[9]_i_1_n_0 ;
  wire \src_addr_reg_reg[12]_i_2_n_0 ;
  wire \src_addr_reg_reg[12]_i_2_n_1 ;
  wire \src_addr_reg_reg[12]_i_2_n_2 ;
  wire \src_addr_reg_reg[12]_i_2_n_3 ;
  wire \src_addr_reg_reg[16]_i_2_n_0 ;
  wire \src_addr_reg_reg[16]_i_2_n_1 ;
  wire \src_addr_reg_reg[16]_i_2_n_2 ;
  wire \src_addr_reg_reg[16]_i_2_n_3 ;
  wire \src_addr_reg_reg[20]_i_2_n_0 ;
  wire \src_addr_reg_reg[20]_i_2_n_1 ;
  wire \src_addr_reg_reg[20]_i_2_n_2 ;
  wire \src_addr_reg_reg[20]_i_2_n_3 ;
  wire \src_addr_reg_reg[24]_i_2_n_0 ;
  wire \src_addr_reg_reg[24]_i_2_n_1 ;
  wire \src_addr_reg_reg[24]_i_2_n_2 ;
  wire \src_addr_reg_reg[24]_i_2_n_3 ;
  wire \src_addr_reg_reg[28]_i_2_n_0 ;
  wire \src_addr_reg_reg[28]_i_2_n_1 ;
  wire \src_addr_reg_reg[28]_i_2_n_2 ;
  wire \src_addr_reg_reg[28]_i_2_n_3 ;
  wire \src_addr_reg_reg[31]_i_2_n_2 ;
  wire \src_addr_reg_reg[31]_i_2_n_3 ;
  wire \src_addr_reg_reg[4]_i_2_n_0 ;
  wire \src_addr_reg_reg[4]_i_2_n_1 ;
  wire \src_addr_reg_reg[4]_i_2_n_2 ;
  wire \src_addr_reg_reg[4]_i_2_n_3 ;
  wire \src_addr_reg_reg[8]_i_2_n_0 ;
  wire \src_addr_reg_reg[8]_i_2_n_1 ;
  wire \src_addr_reg_reg[8]_i_2_n_2 ;
  wire \src_addr_reg_reg[8]_i_2_n_3 ;
  wire \src_addr_reg_reg_n_0_[0] ;
  wire \src_addr_reg_reg_n_0_[10] ;
  wire \src_addr_reg_reg_n_0_[11] ;
  wire \src_addr_reg_reg_n_0_[12] ;
  wire \src_addr_reg_reg_n_0_[13] ;
  wire \src_addr_reg_reg_n_0_[14] ;
  wire \src_addr_reg_reg_n_0_[15] ;
  wire \src_addr_reg_reg_n_0_[16] ;
  wire \src_addr_reg_reg_n_0_[17] ;
  wire \src_addr_reg_reg_n_0_[18] ;
  wire \src_addr_reg_reg_n_0_[19] ;
  wire \src_addr_reg_reg_n_0_[1] ;
  wire \src_addr_reg_reg_n_0_[20] ;
  wire \src_addr_reg_reg_n_0_[21] ;
  wire \src_addr_reg_reg_n_0_[22] ;
  wire \src_addr_reg_reg_n_0_[23] ;
  wire \src_addr_reg_reg_n_0_[24] ;
  wire \src_addr_reg_reg_n_0_[25] ;
  wire \src_addr_reg_reg_n_0_[26] ;
  wire \src_addr_reg_reg_n_0_[27] ;
  wire \src_addr_reg_reg_n_0_[28] ;
  wire \src_addr_reg_reg_n_0_[29] ;
  wire \src_addr_reg_reg_n_0_[2] ;
  wire \src_addr_reg_reg_n_0_[30] ;
  wire \src_addr_reg_reg_n_0_[31] ;
  wire \src_addr_reg_reg_n_0_[3] ;
  wire \src_addr_reg_reg_n_0_[4] ;
  wire \src_addr_reg_reg_n_0_[5] ;
  wire \src_addr_reg_reg_n_0_[6] ;
  wire \src_addr_reg_reg_n_0_[7] ;
  wire \src_addr_reg_reg_n_0_[8] ;
  wire \src_addr_reg_reg_n_0_[9] ;
  wire start_single_burst_read;
  wire start_single_burst_read_i_1_n_0;
  wire start_single_burst_write;
  wire start_single_burst_write_i_1_n_0;
  (* MARK_DEBUG *) wire wnext;
  wire write_index0;
  wire write_index1;
  wire \write_index[0]_i_10_n_0 ;
  wire \write_index[0]_i_11_n_0 ;
  wire \write_index[0]_i_12_n_0 ;
  wire \write_index[0]_i_14_n_0 ;
  wire \write_index[0]_i_15_n_0 ;
  wire \write_index[0]_i_16_n_0 ;
  wire \write_index[0]_i_17_n_0 ;
  wire \write_index[0]_i_18_n_0 ;
  wire \write_index[0]_i_19_n_0 ;
  wire \write_index[0]_i_1_n_0 ;
  wire \write_index[0]_i_20_n_0 ;
  wire \write_index[0]_i_21_n_0 ;
  wire \write_index[0]_i_5_n_0 ;
  wire \write_index[0]_i_6_n_0 ;
  wire \write_index[0]_i_7_n_0 ;
  wire \write_index[12]_i_2_n_0 ;
  wire \write_index[12]_i_3_n_0 ;
  wire \write_index[12]_i_4_n_0 ;
  wire \write_index[12]_i_5_n_0 ;
  wire \write_index[16]_i_2_n_0 ;
  wire \write_index[16]_i_3_n_0 ;
  wire \write_index[16]_i_4_n_0 ;
  wire \write_index[16]_i_5_n_0 ;
  wire \write_index[20]_i_2_n_0 ;
  wire \write_index[20]_i_3_n_0 ;
  wire \write_index[20]_i_4_n_0 ;
  wire \write_index[20]_i_5_n_0 ;
  wire \write_index[24]_i_2_n_0 ;
  wire \write_index[24]_i_3_n_0 ;
  wire \write_index[24]_i_4_n_0 ;
  wire \write_index[24]_i_5_n_0 ;
  wire \write_index[28]_i_2_n_0 ;
  wire \write_index[28]_i_3_n_0 ;
  wire \write_index[28]_i_4_n_0 ;
  wire \write_index[28]_i_5_n_0 ;
  wire \write_index[4]_i_2_n_0 ;
  wire \write_index[4]_i_3_n_0 ;
  wire \write_index[4]_i_4_n_0 ;
  wire \write_index[4]_i_5_n_0 ;
  wire \write_index[8]_i_2_n_0 ;
  wire \write_index[8]_i_3_n_0 ;
  wire \write_index[8]_i_4_n_0 ;
  wire \write_index[8]_i_5_n_0 ;
  wire [31:0]write_index_reg;
  wire \write_index_reg[0]_i_13_n_0 ;
  wire \write_index_reg[0]_i_13_n_1 ;
  wire \write_index_reg[0]_i_13_n_2 ;
  wire \write_index_reg[0]_i_13_n_3 ;
  wire \write_index_reg[0]_i_3_n_0 ;
  wire \write_index_reg[0]_i_3_n_1 ;
  wire \write_index_reg[0]_i_3_n_2 ;
  wire \write_index_reg[0]_i_3_n_3 ;
  wire \write_index_reg[0]_i_3_n_4 ;
  wire \write_index_reg[0]_i_3_n_5 ;
  wire \write_index_reg[0]_i_3_n_6 ;
  wire \write_index_reg[0]_i_3_n_7 ;
  wire \write_index_reg[0]_i_4_n_2 ;
  wire \write_index_reg[0]_i_4_n_3 ;
  wire \write_index_reg[0]_i_9_n_0 ;
  wire \write_index_reg[0]_i_9_n_1 ;
  wire \write_index_reg[0]_i_9_n_2 ;
  wire \write_index_reg[0]_i_9_n_3 ;
  wire \write_index_reg[12]_i_1_n_0 ;
  wire \write_index_reg[12]_i_1_n_1 ;
  wire \write_index_reg[12]_i_1_n_2 ;
  wire \write_index_reg[12]_i_1_n_3 ;
  wire \write_index_reg[12]_i_1_n_4 ;
  wire \write_index_reg[12]_i_1_n_5 ;
  wire \write_index_reg[12]_i_1_n_6 ;
  wire \write_index_reg[12]_i_1_n_7 ;
  wire \write_index_reg[16]_i_1_n_0 ;
  wire \write_index_reg[16]_i_1_n_1 ;
  wire \write_index_reg[16]_i_1_n_2 ;
  wire \write_index_reg[16]_i_1_n_3 ;
  wire \write_index_reg[16]_i_1_n_4 ;
  wire \write_index_reg[16]_i_1_n_5 ;
  wire \write_index_reg[16]_i_1_n_6 ;
  wire \write_index_reg[16]_i_1_n_7 ;
  wire \write_index_reg[20]_i_1_n_0 ;
  wire \write_index_reg[20]_i_1_n_1 ;
  wire \write_index_reg[20]_i_1_n_2 ;
  wire \write_index_reg[20]_i_1_n_3 ;
  wire \write_index_reg[20]_i_1_n_4 ;
  wire \write_index_reg[20]_i_1_n_5 ;
  wire \write_index_reg[20]_i_1_n_6 ;
  wire \write_index_reg[20]_i_1_n_7 ;
  wire \write_index_reg[24]_i_1_n_0 ;
  wire \write_index_reg[24]_i_1_n_1 ;
  wire \write_index_reg[24]_i_1_n_2 ;
  wire \write_index_reg[24]_i_1_n_3 ;
  wire \write_index_reg[24]_i_1_n_4 ;
  wire \write_index_reg[24]_i_1_n_5 ;
  wire \write_index_reg[24]_i_1_n_6 ;
  wire \write_index_reg[24]_i_1_n_7 ;
  wire \write_index_reg[28]_i_1_n_1 ;
  wire \write_index_reg[28]_i_1_n_2 ;
  wire \write_index_reg[28]_i_1_n_3 ;
  wire \write_index_reg[28]_i_1_n_4 ;
  wire \write_index_reg[28]_i_1_n_5 ;
  wire \write_index_reg[28]_i_1_n_6 ;
  wire \write_index_reg[28]_i_1_n_7 ;
  wire \write_index_reg[4]_i_1_n_0 ;
  wire \write_index_reg[4]_i_1_n_1 ;
  wire \write_index_reg[4]_i_1_n_2 ;
  wire \write_index_reg[4]_i_1_n_3 ;
  wire \write_index_reg[4]_i_1_n_4 ;
  wire \write_index_reg[4]_i_1_n_5 ;
  wire \write_index_reg[4]_i_1_n_6 ;
  wire \write_index_reg[4]_i_1_n_7 ;
  wire \write_index_reg[8]_i_1_n_0 ;
  wire \write_index_reg[8]_i_1_n_1 ;
  wire \write_index_reg[8]_i_1_n_2 ;
  wire \write_index_reg[8]_i_1_n_3 ;
  wire \write_index_reg[8]_i_1_n_4 ;
  wire \write_index_reg[8]_i_1_n_5 ;
  wire \write_index_reg[8]_i_1_n_6 ;
  wire \write_index_reg[8]_i_1_n_7 ;
  wire writes_done;
  wire writes_done1;
  wire writes_done_i_10_n_0;
  wire writes_done_i_11_n_0;
  wire writes_done_i_12_n_0;
  wire writes_done_i_13_n_0;
  wire writes_done_i_14_n_0;
  wire writes_done_i_15_n_0;
  wire writes_done_i_1_n_0;
  wire writes_done_i_4_n_0;
  wire writes_done_i_5_n_0;
  wire writes_done_i_6_n_0;
  wire writes_done_i_8_n_0;
  wire writes_done_i_9_n_0;
  wire writes_done_reg_i_2_n_2;
  wire writes_done_reg_i_2_n_3;
  wire writes_done_reg_i_3_n_0;
  wire writes_done_reg_i_3_n_1;
  wire writes_done_reg_i_3_n_2;
  wire writes_done_reg_i_3_n_3;
  wire writes_done_reg_i_7_n_0;
  wire writes_done_reg_i_7_n_1;
  wire writes_done_reg_i_7_n_2;
  wire writes_done_reg_i_7_n_3;
  wire [3:0]NLW_axi_wlast3_carry_O_UNCONNECTED;
  wire [3:0]NLW_axi_wlast3_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_axi_wlast3_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_axi_wlast3_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_dst_addr_reg_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_dst_addr_reg_reg[31]_i_4_O_UNCONNECTED ;
  wire [3:1]NLW_len_copy_reg0_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_len_copy_reg0_carry__6_O_UNCONNECTED;
  wire [3:0]\NLW_read_index_reg[0]_i_13_O_UNCONNECTED ;
  wire [3:3]\NLW_read_index_reg[0]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_read_index_reg[0]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_read_index_reg[0]_i_9_O_UNCONNECTED ;
  wire [3:3]\NLW_read_index_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]NLW_reads_done_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_reads_done_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_reads_done_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_reads_done_reg_i_7_O_UNCONNECTED;
  wire [3:0]NLW_redo1_carry_O_UNCONNECTED;
  wire [3:0]NLW_redo1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_redo1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_redo1_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_src_addr_reg_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_src_addr_reg_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_write_index_reg[0]_i_13_O_UNCONNECTED ;
  wire [3:3]\NLW_write_index_reg[0]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_write_index_reg[0]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_write_index_reg[0]_i_9_O_UNCONNECTED ;
  wire [3:3]\NLW_write_index_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]NLW_writes_done_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_writes_done_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_writes_done_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_writes_done_reg_i_7_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[0]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[0] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [0]),
        .O(\axi_araddr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[10]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[10] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [10]),
        .O(\axi_araddr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[11]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[11] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [11]),
        .O(\axi_araddr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[12]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[12] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [12]),
        .O(\axi_araddr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[13]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[13] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [13]),
        .O(\axi_araddr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[14]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[14] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [14]),
        .O(\axi_araddr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[15]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[15] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [15]),
        .O(\axi_araddr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[16]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[16] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [16]),
        .O(\axi_araddr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[17]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[17] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [17]),
        .O(\axi_araddr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[18]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[18] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [18]),
        .O(\axi_araddr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[19]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[19] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [19]),
        .O(\axi_araddr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[1]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[1] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [1]),
        .O(\axi_araddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[20]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[20] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [20]),
        .O(\axi_araddr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[21]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[21] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [21]),
        .O(\axi_araddr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[22]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[22] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [22]),
        .O(\axi_araddr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[23]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[23] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [23]),
        .O(\axi_araddr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[24]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[24] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [24]),
        .O(\axi_araddr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[25]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[25] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [25]),
        .O(\axi_araddr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[26]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[26] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [26]),
        .O(\axi_araddr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[27]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[27] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [27]),
        .O(\axi_araddr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[28]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[28] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [28]),
        .O(\axi_araddr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[29]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[29] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [29]),
        .O(\axi_araddr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[2]_i_1__0 
       (.I0(\src_addr_reg_reg_n_0_[2] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [2]),
        .O(\axi_araddr[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[30]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[30] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [30]),
        .O(\axi_araddr[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[31]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[31] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [31]),
        .O(\axi_araddr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[3]_i_1__0 
       (.I0(\src_addr_reg_reg_n_0_[3] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [3]),
        .O(\axi_araddr[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[4]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[4] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [4]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[5]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[5] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [5]),
        .O(\axi_araddr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[6]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[6] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [6]),
        .O(\axi_araddr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[7]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[7] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [7]),
        .O(\axi_araddr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[8]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[8] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [8]),
        .O(\axi_araddr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[9]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[9] ),
        .I1(redo_reg_n_0),
        .I2(\slv_reg2_reg[31] [9]),
        .O(\axi_araddr[9]_i_1_n_0 ));
  FDRE \axi_araddr_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[0]_i_1_n_0 ),
        .Q(m00_axi_araddr[0]),
        .R(1'b0));
  FDRE \axi_araddr_reg[10] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[10]_i_1_n_0 ),
        .Q(m00_axi_araddr[10]),
        .R(1'b0));
  FDRE \axi_araddr_reg[11] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[11]_i_1_n_0 ),
        .Q(m00_axi_araddr[11]),
        .R(1'b0));
  FDRE \axi_araddr_reg[12] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[12]_i_1_n_0 ),
        .Q(m00_axi_araddr[12]),
        .R(1'b0));
  FDRE \axi_araddr_reg[13] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[13]_i_1_n_0 ),
        .Q(m00_axi_araddr[13]),
        .R(1'b0));
  FDRE \axi_araddr_reg[14] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[14]_i_1_n_0 ),
        .Q(m00_axi_araddr[14]),
        .R(1'b0));
  FDRE \axi_araddr_reg[15] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[15]_i_1_n_0 ),
        .Q(m00_axi_araddr[15]),
        .R(1'b0));
  FDRE \axi_araddr_reg[16] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[16]_i_1_n_0 ),
        .Q(m00_axi_araddr[16]),
        .R(1'b0));
  FDRE \axi_araddr_reg[17] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[17]_i_1_n_0 ),
        .Q(m00_axi_araddr[17]),
        .R(1'b0));
  FDRE \axi_araddr_reg[18] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[18]_i_1_n_0 ),
        .Q(m00_axi_araddr[18]),
        .R(1'b0));
  FDRE \axi_araddr_reg[19] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[19]_i_1_n_0 ),
        .Q(m00_axi_araddr[19]),
        .R(1'b0));
  FDRE \axi_araddr_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[1]_i_1_n_0 ),
        .Q(m00_axi_araddr[1]),
        .R(1'b0));
  FDRE \axi_araddr_reg[20] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[20]_i_1_n_0 ),
        .Q(m00_axi_araddr[20]),
        .R(1'b0));
  FDRE \axi_araddr_reg[21] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[21]_i_1_n_0 ),
        .Q(m00_axi_araddr[21]),
        .R(1'b0));
  FDRE \axi_araddr_reg[22] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[22]_i_1_n_0 ),
        .Q(m00_axi_araddr[22]),
        .R(1'b0));
  FDRE \axi_araddr_reg[23] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[23]_i_1_n_0 ),
        .Q(m00_axi_araddr[23]),
        .R(1'b0));
  FDRE \axi_araddr_reg[24] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[24]_i_1_n_0 ),
        .Q(m00_axi_araddr[24]),
        .R(1'b0));
  FDRE \axi_araddr_reg[25] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[25]_i_1_n_0 ),
        .Q(m00_axi_araddr[25]),
        .R(1'b0));
  FDRE \axi_araddr_reg[26] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[26]_i_1_n_0 ),
        .Q(m00_axi_araddr[26]),
        .R(1'b0));
  FDRE \axi_araddr_reg[27] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[27]_i_1_n_0 ),
        .Q(m00_axi_araddr[27]),
        .R(1'b0));
  FDRE \axi_araddr_reg[28] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[28]_i_1_n_0 ),
        .Q(m00_axi_araddr[28]),
        .R(1'b0));
  FDRE \axi_araddr_reg[29] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[29]_i_1_n_0 ),
        .Q(m00_axi_araddr[29]),
        .R(1'b0));
  FDRE \axi_araddr_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[2]_i_1__0_n_0 ),
        .Q(m00_axi_araddr[2]),
        .R(1'b0));
  FDRE \axi_araddr_reg[30] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[30]_i_1_n_0 ),
        .Q(m00_axi_araddr[30]),
        .R(1'b0));
  FDRE \axi_araddr_reg[31] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[31]_i_1_n_0 ),
        .Q(m00_axi_araddr[31]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[3]_i_1__0_n_0 ),
        .Q(m00_axi_araddr[3]),
        .R(1'b0));
  FDRE \axi_araddr_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(m00_axi_araddr[4]),
        .R(1'b0));
  FDRE \axi_araddr_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[5]_i_1_n_0 ),
        .Q(m00_axi_araddr[5]),
        .R(1'b0));
  FDRE \axi_araddr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[6]_i_1_n_0 ),
        .Q(m00_axi_araddr[6]),
        .R(1'b0));
  FDRE \axi_araddr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[7]_i_1_n_0 ),
        .Q(m00_axi_araddr[7]),
        .R(1'b0));
  FDRE \axi_araddr_reg[8] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[8]_i_1_n_0 ),
        .Q(m00_axi_araddr[8]),
        .R(1'b0));
  FDRE \axi_araddr_reg[9] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_araddr[9]_i_1_n_0 ),
        .Q(m00_axi_araddr[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h74)) 
    axi_arvalid_i_1
       (.I0(m00_axi_arready),
        .I1(m00_axi_arvalid),
        .I2(start_single_burst_read),
        .O(axi_arvalid_i_1_n_0));
  FDRE axi_arvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_arvalid_i_1_n_0),
        .Q(m00_axi_arvalid),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[0]_i_1 
       (.I0(dst_addr_reg[0]),
        .I1(redo_reg_n_0),
        .I2(Q[0]),
        .O(\axi_awaddr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[10]_i_1 
       (.I0(dst_addr_reg[10]),
        .I1(redo_reg_n_0),
        .I2(Q[10]),
        .O(\axi_awaddr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[11]_i_1 
       (.I0(dst_addr_reg[11]),
        .I1(redo_reg_n_0),
        .I2(Q[11]),
        .O(\axi_awaddr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[12]_i_1 
       (.I0(dst_addr_reg[12]),
        .I1(redo_reg_n_0),
        .I2(Q[12]),
        .O(\axi_awaddr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[13]_i_1 
       (.I0(dst_addr_reg[13]),
        .I1(redo_reg_n_0),
        .I2(Q[13]),
        .O(\axi_awaddr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[14]_i_1 
       (.I0(dst_addr_reg[14]),
        .I1(redo_reg_n_0),
        .I2(Q[14]),
        .O(\axi_awaddr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[15]_i_1 
       (.I0(dst_addr_reg[15]),
        .I1(redo_reg_n_0),
        .I2(Q[15]),
        .O(\axi_awaddr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[16]_i_1 
       (.I0(dst_addr_reg[16]),
        .I1(redo_reg_n_0),
        .I2(Q[16]),
        .O(\axi_awaddr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[17]_i_1 
       (.I0(dst_addr_reg[17]),
        .I1(redo_reg_n_0),
        .I2(Q[17]),
        .O(\axi_awaddr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[18]_i_1 
       (.I0(dst_addr_reg[18]),
        .I1(redo_reg_n_0),
        .I2(Q[18]),
        .O(\axi_awaddr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[19]_i_1 
       (.I0(dst_addr_reg[19]),
        .I1(redo_reg_n_0),
        .I2(Q[19]),
        .O(\axi_awaddr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[1]_i_1 
       (.I0(dst_addr_reg[1]),
        .I1(redo_reg_n_0),
        .I2(Q[1]),
        .O(\axi_awaddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[20]_i_1 
       (.I0(dst_addr_reg[20]),
        .I1(redo_reg_n_0),
        .I2(Q[20]),
        .O(\axi_awaddr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[21]_i_1 
       (.I0(dst_addr_reg[21]),
        .I1(redo_reg_n_0),
        .I2(Q[21]),
        .O(\axi_awaddr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[22]_i_1 
       (.I0(dst_addr_reg[22]),
        .I1(redo_reg_n_0),
        .I2(Q[22]),
        .O(\axi_awaddr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[23]_i_1 
       (.I0(dst_addr_reg[23]),
        .I1(redo_reg_n_0),
        .I2(Q[23]),
        .O(\axi_awaddr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[24]_i_1 
       (.I0(dst_addr_reg[24]),
        .I1(redo_reg_n_0),
        .I2(Q[24]),
        .O(\axi_awaddr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[25]_i_1 
       (.I0(dst_addr_reg[25]),
        .I1(redo_reg_n_0),
        .I2(Q[25]),
        .O(\axi_awaddr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[26]_i_1 
       (.I0(dst_addr_reg[26]),
        .I1(redo_reg_n_0),
        .I2(Q[26]),
        .O(\axi_awaddr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[27]_i_1 
       (.I0(dst_addr_reg[27]),
        .I1(redo_reg_n_0),
        .I2(Q[27]),
        .O(\axi_awaddr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[28]_i_1 
       (.I0(dst_addr_reg[28]),
        .I1(redo_reg_n_0),
        .I2(Q[28]),
        .O(\axi_awaddr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[29]_i_1 
       (.I0(dst_addr_reg[29]),
        .I1(redo_reg_n_0),
        .I2(Q[29]),
        .O(\axi_awaddr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[2]_i_1__0 
       (.I0(dst_addr_reg[2]),
        .I1(redo_reg_n_0),
        .I2(Q[2]),
        .O(\axi_awaddr[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[30]_i_1 
       (.I0(dst_addr_reg[30]),
        .I1(redo_reg_n_0),
        .I2(Q[30]),
        .O(\axi_awaddr[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \axi_awaddr[31]_i_1 
       (.I0(init_txn_pulse),
        .I1(m00_axi_aresetn),
        .O(\axi_awaddr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[31]_i_2 
       (.I0(dst_addr_reg[31]),
        .I1(redo_reg_n_0),
        .I2(Q[31]),
        .O(\axi_awaddr[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[3]_i_1__0 
       (.I0(dst_addr_reg[3]),
        .I1(redo_reg_n_0),
        .I2(Q[3]),
        .O(\axi_awaddr[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[4]_i_1 
       (.I0(dst_addr_reg[4]),
        .I1(redo_reg_n_0),
        .I2(Q[4]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[5]_i_1 
       (.I0(dst_addr_reg[5]),
        .I1(redo_reg_n_0),
        .I2(Q[5]),
        .O(\axi_awaddr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[6]_i_1 
       (.I0(dst_addr_reg[6]),
        .I1(redo_reg_n_0),
        .I2(Q[6]),
        .O(\axi_awaddr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[7]_i_1 
       (.I0(dst_addr_reg[7]),
        .I1(redo_reg_n_0),
        .I2(Q[7]),
        .O(\axi_awaddr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[8]_i_1 
       (.I0(dst_addr_reg[8]),
        .I1(redo_reg_n_0),
        .I2(Q[8]),
        .O(\axi_awaddr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_awaddr[9]_i_1 
       (.I0(dst_addr_reg[9]),
        .I1(redo_reg_n_0),
        .I2(Q[9]),
        .O(\axi_awaddr[9]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[0]_i_1_n_0 ),
        .Q(m00_axi_awaddr[0]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[10] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[10]_i_1_n_0 ),
        .Q(m00_axi_awaddr[10]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[11] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[11]_i_1_n_0 ),
        .Q(m00_axi_awaddr[11]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[12] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[12]_i_1_n_0 ),
        .Q(m00_axi_awaddr[12]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[13] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[13]_i_1_n_0 ),
        .Q(m00_axi_awaddr[13]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[14] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[14]_i_1_n_0 ),
        .Q(m00_axi_awaddr[14]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[15] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[15]_i_1_n_0 ),
        .Q(m00_axi_awaddr[15]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[16] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[16]_i_1_n_0 ),
        .Q(m00_axi_awaddr[16]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[17] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[17]_i_1_n_0 ),
        .Q(m00_axi_awaddr[17]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[18] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[18]_i_1_n_0 ),
        .Q(m00_axi_awaddr[18]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[19] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[19]_i_1_n_0 ),
        .Q(m00_axi_awaddr[19]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[1]_i_1_n_0 ),
        .Q(m00_axi_awaddr[1]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[20] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[20]_i_1_n_0 ),
        .Q(m00_axi_awaddr[20]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[21] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[21]_i_1_n_0 ),
        .Q(m00_axi_awaddr[21]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[22] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[22]_i_1_n_0 ),
        .Q(m00_axi_awaddr[22]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[23] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[23]_i_1_n_0 ),
        .Q(m00_axi_awaddr[23]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[24] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[24]_i_1_n_0 ),
        .Q(m00_axi_awaddr[24]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[25] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[25]_i_1_n_0 ),
        .Q(m00_axi_awaddr[25]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[26] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[26]_i_1_n_0 ),
        .Q(m00_axi_awaddr[26]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[27] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[27]_i_1_n_0 ),
        .Q(m00_axi_awaddr[27]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[28] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[28]_i_1_n_0 ),
        .Q(m00_axi_awaddr[28]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[29] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[29]_i_1_n_0 ),
        .Q(m00_axi_awaddr[29]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[2]_i_1__0_n_0 ),
        .Q(m00_axi_awaddr[2]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[30] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[30]_i_1_n_0 ),
        .Q(m00_axi_awaddr[30]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[31] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[31]_i_2_n_0 ),
        .Q(m00_axi_awaddr[31]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[3]_i_1__0_n_0 ),
        .Q(m00_axi_awaddr[3]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(m00_axi_awaddr[4]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[5]_i_1_n_0 ),
        .Q(m00_axi_awaddr[5]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[6]_i_1_n_0 ),
        .Q(m00_axi_awaddr[6]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[7]_i_1_n_0 ),
        .Q(m00_axi_awaddr[7]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[8] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[8]_i_1_n_0 ),
        .Q(m00_axi_awaddr[8]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[9] 
       (.C(m00_axi_aclk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[9]_i_1_n_0 ),
        .Q(m00_axi_awaddr[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h74)) 
    axi_awvalid_i_1
       (.I0(m00_axi_awready),
        .I1(m00_axi_awvalid),
        .I2(start_single_burst_write),
        .O(axi_awvalid_i_1_n_0));
  FDRE axi_awvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_awvalid_i_1_n_0),
        .Q(m00_axi_awvalid),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_bready_i_1
       (.I0(m00_axi_bvalid),
        .I1(m00_axi_bready),
        .O(axi_bready0));
  FDRE axi_bready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_bready0),
        .Q(m00_axi_bready),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h007C0000)) 
    axi_rready_i_1
       (.I0(m00_axi_rlast),
        .I1(m00_axi_rready),
        .I2(m00_axi_rvalid),
        .I3(init_txn_pulse),
        .I4(m00_axi_aresetn),
        .O(axi_rready_i_1_n_0));
  FDRE axi_rready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(m00_axi_rready),
        .R(1'b0));
  CARRY4 axi_wlast3_carry
       (.CI(1'b0),
        .CO({axi_wlast3_carry_n_0,axi_wlast3_carry_n_1,axi_wlast3_carry_n_2,axi_wlast3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axi_wlast3_carry_O_UNCONNECTED[3:0]),
        .S({axi_wlast3_carry_i_1_n_0,axi_wlast3_carry_i_2_n_0,axi_wlast3_carry_i_3_n_0,axi_wlast3_carry_i_4_n_0}));
  CARRY4 axi_wlast3_carry__0
       (.CI(axi_wlast3_carry_n_0),
        .CO({axi_wlast3_carry__0_n_0,axi_wlast3_carry__0_n_1,axi_wlast3_carry__0_n_2,axi_wlast3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axi_wlast3_carry__0_O_UNCONNECTED[3:0]),
        .S({axi_wlast3_carry__0_i_1_n_0,axi_wlast3_carry__0_i_2_n_0,axi_wlast3_carry__0_i_3_n_0,axi_wlast3_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h8001)) 
    axi_wlast3_carry__0_i_1
       (.I0(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .I1(write_index_reg[23]),
        .I2(write_index_reg[21]),
        .I3(write_index_reg[22]),
        .O(axi_wlast3_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h8001)) 
    axi_wlast3_carry__0_i_2
       (.I0(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .I1(write_index_reg[20]),
        .I2(write_index_reg[18]),
        .I3(write_index_reg[19]),
        .O(axi_wlast3_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h8001)) 
    axi_wlast3_carry__0_i_3
       (.I0(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .I1(write_index_reg[17]),
        .I2(write_index_reg[15]),
        .I3(write_index_reg[16]),
        .O(axi_wlast3_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h8001)) 
    axi_wlast3_carry__0_i_4
       (.I0(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .I1(write_index_reg[14]),
        .I2(write_index_reg[12]),
        .I3(write_index_reg[13]),
        .O(axi_wlast3_carry__0_i_4_n_0));
  CARRY4 axi_wlast3_carry__1
       (.CI(axi_wlast3_carry__0_n_0),
        .CO({NLW_axi_wlast3_carry__1_CO_UNCONNECTED[3],axi_wlast3,axi_wlast3_carry__1_n_2,axi_wlast3_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axi_wlast3_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,axi_wlast3_carry__1_i_1_n_0,axi_wlast3_carry__1_i_2_n_0,axi_wlast3_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'h81)) 
    axi_wlast3_carry__1_i_1
       (.I0(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .I1(write_index_reg[30]),
        .I2(write_index_reg[31]),
        .O(axi_wlast3_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h8001)) 
    axi_wlast3_carry__1_i_2
       (.I0(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .I1(write_index_reg[29]),
        .I2(write_index_reg[27]),
        .I3(write_index_reg[28]),
        .O(axi_wlast3_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h8001)) 
    axi_wlast3_carry__1_i_3
       (.I0(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .I1(write_index_reg[26]),
        .I2(write_index_reg[24]),
        .I3(write_index_reg[25]),
        .O(axi_wlast3_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h8001)) 
    axi_wlast3_carry_i_1
       (.I0(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .I1(write_index_reg[11]),
        .I2(write_index_reg[9]),
        .I3(write_index_reg[10]),
        .O(axi_wlast3_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF57FFFFFFFF)) 
    axi_wlast3_carry_i_10
       (.I0(axi_wlast3_carry_i_12_n_0),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[6]),
        .I4(\m00_axi_arlen[7] ),
        .I5(redo1_carry_i_7_n_0),
        .O(axi_wlast3_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    axi_wlast3_carry_i_11
       (.I0(redo1_carry_i_7_n_0),
        .I1(\m00_axi_arlen[7] ),
        .I2(sel0[6]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(axi_wlast3_carry_i_12_n_0),
        .O(axi_wlast3_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    axi_wlast3_carry_i_12
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .O(axi_wlast3_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h9003000000009003)) 
    axi_wlast3_carry_i_2
       (.I0(axi_wlast3_carry_i_5_n_0),
        .I1(write_index_reg[7]),
        .I2(write_index_reg[6]),
        .I3(axi_wlast3_carry_i_6_n_0),
        .I4(write_index_reg[8]),
        .I5(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .O(axi_wlast3_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0009009009000900)) 
    axi_wlast3_carry_i_3
       (.I0(axi_wlast3_carry_i_7_n_0),
        .I1(write_index_reg[3]),
        .I2(write_index_reg[5]),
        .I3(axi_wlast3_carry_i_8_n_0),
        .I4(burst_length),
        .I5(write_index_reg[4]),
        .O(axi_wlast3_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    axi_wlast3_carry_i_4
       (.I0(write_index_reg[2]),
        .I1(axi_wlast3_carry_i_10_n_0),
        .I2(write_index_reg[1]),
        .I3(axi_wlast3_carry_i_11_n_0),
        .I4(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .I5(write_index_reg[0]),
        .O(axi_wlast3_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'hB)) 
    axi_wlast3_carry_i_5
       (.I0(\m00_axi_arlen[7] ),
        .I1(sel0[6]),
        .O(axi_wlast3_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFF1FFF0)) 
    axi_wlast3_carry_i_6
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\m00_axi_arlen[7] ),
        .I3(sel0[6]),
        .I4(\m00_axi_arlen[0]_INST_0_i_2_n_0 ),
        .O(axi_wlast3_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF0FFF1F)) 
    axi_wlast3_carry_i_7
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(redo1_carry_i_7_n_0),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(m00_axi_awlen[3]),
        .O(axi_wlast3_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    axi_wlast3_carry_i_8
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\m00_axi_arlen[7] ),
        .I3(sel0[6]),
        .I4(\m00_axi_arlen[0]_INST_0_i_2_n_0 ),
        .O(axi_wlast3_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    axi_wlast3_carry_i_9
       (.I0(sel0[4]),
        .I1(sel0[6]),
        .I2(\m00_axi_arlen[7] ),
        .I3(sel0[5]),
        .O(burst_length));
  LUT4 #(
    .INIT(16'hFBF8)) 
    axi_wlast_i_1
       (.I0(axi_wlast3),
        .I1(wnext),
        .I2(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .I3(m00_axi_wlast),
        .O(axi_wlast_i_1_n_0));
  FDRE axi_wlast_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_wlast_i_1_n_0),
        .Q(m00_axi_wlast),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F70)) 
    axi_wvalid_i_1
       (.I0(wnext),
        .I1(m00_axi_wlast),
        .I2(m00_axi_wvalid),
        .I3(start_single_burst_write),
        .O(axi_wvalid_i_1_n_0));
  FDRE axi_wvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_wvalid_i_1_n_0),
        .Q(m00_axi_wvalid),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  lab4_my_dma_0_0_bram buffer
       (.Q(buffer_wr_data),
        .\buffer_wr_addr_reg[9] (buffer_wr_addr),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_wdata(m00_axi_wdata),
        .\mst_exec_state_reg[1] (mst_exec_state),
        .\write_index_reg[6] (buffer_rd_addr));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buffer_rd_addr_reg[0] 
       (.CLR(\axi_awaddr[31]_i_1_n_0 ),
        .D(\buffer_rd_addr_reg[0]_i_1_n_0 ),
        .G(\buffer_rd_addr_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(buffer_rd_addr[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \buffer_rd_addr_reg[0]_i_1 
       (.I0(wnext),
        .I1(write_index_reg[0]),
        .O(\buffer_rd_addr_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buffer_rd_addr_reg[1] 
       (.CLR(\axi_awaddr[31]_i_1_n_0 ),
        .D(\buffer_rd_addr_reg[1]_i_1_n_0 ),
        .G(\buffer_rd_addr_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(buffer_rd_addr[1]));
  LUT3 #(
    .INIT(8'h60)) 
    \buffer_rd_addr_reg[1]_i_1 
       (.I0(write_index_reg[1]),
        .I1(write_index_reg[0]),
        .I2(wnext),
        .O(\buffer_rd_addr_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buffer_rd_addr_reg[2] 
       (.CLR(\axi_awaddr[31]_i_1_n_0 ),
        .D(\buffer_rd_addr_reg[2]_i_1_n_0 ),
        .G(\buffer_rd_addr_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(buffer_rd_addr[2]));
  LUT4 #(
    .INIT(16'h2A80)) 
    \buffer_rd_addr_reg[2]_i_1 
       (.I0(wnext),
        .I1(write_index_reg[0]),
        .I2(write_index_reg[1]),
        .I3(write_index_reg[2]),
        .O(\buffer_rd_addr_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buffer_rd_addr_reg[3] 
       (.CLR(\axi_awaddr[31]_i_1_n_0 ),
        .D(\buffer_rd_addr_reg[3]_i_1_n_0 ),
        .G(\buffer_rd_addr_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(buffer_rd_addr[3]));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \buffer_rd_addr_reg[3]_i_1 
       (.I0(wnext),
        .I1(write_index_reg[1]),
        .I2(write_index_reg[0]),
        .I3(write_index_reg[2]),
        .I4(write_index_reg[3]),
        .O(\buffer_rd_addr_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buffer_rd_addr_reg[4] 
       (.CLR(\axi_awaddr[31]_i_1_n_0 ),
        .D(\buffer_rd_addr_reg[4]_i_1_n_0 ),
        .G(\buffer_rd_addr_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(buffer_rd_addr[4]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \buffer_rd_addr_reg[4]_i_1 
       (.I0(wnext),
        .I1(write_index_reg[2]),
        .I2(write_index_reg[0]),
        .I3(write_index_reg[1]),
        .I4(write_index_reg[3]),
        .I5(write_index_reg[4]),
        .O(\buffer_rd_addr_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buffer_rd_addr_reg[5] 
       (.CLR(\axi_awaddr[31]_i_1_n_0 ),
        .D(\buffer_rd_addr_reg[5]_i_1_n_0 ),
        .G(\buffer_rd_addr_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(buffer_rd_addr[5]));
  LUT3 #(
    .INIT(8'h82)) 
    \buffer_rd_addr_reg[5]_i_1 
       (.I0(wnext),
        .I1(\buffer_rd_addr_reg[5]_i_2_n_0 ),
        .I2(write_index_reg[5]),
        .O(\buffer_rd_addr_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \buffer_rd_addr_reg[5]_i_2 
       (.I0(write_index_reg[3]),
        .I1(write_index_reg[1]),
        .I2(write_index_reg[0]),
        .I3(write_index_reg[2]),
        .I4(write_index_reg[4]),
        .O(\buffer_rd_addr_reg[5]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buffer_rd_addr_reg[6] 
       (.CLR(\axi_awaddr[31]_i_1_n_0 ),
        .D(\buffer_rd_addr_reg[6]_i_1_n_0 ),
        .G(\buffer_rd_addr_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(buffer_rd_addr[6]));
  LUT3 #(
    .INIT(8'h82)) 
    \buffer_rd_addr_reg[6]_i_1 
       (.I0(wnext),
        .I1(\buffer_rd_addr_reg[9]_i_3_n_0 ),
        .I2(write_index_reg[6]),
        .O(\buffer_rd_addr_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buffer_rd_addr_reg[7] 
       (.CLR(\axi_awaddr[31]_i_1_n_0 ),
        .D(\buffer_rd_addr_reg[7]_i_1_n_0 ),
        .G(\buffer_rd_addr_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(buffer_rd_addr[7]));
  LUT4 #(
    .INIT(16'h8A20)) 
    \buffer_rd_addr_reg[7]_i_1 
       (.I0(wnext),
        .I1(\buffer_rd_addr_reg[9]_i_3_n_0 ),
        .I2(write_index_reg[6]),
        .I3(write_index_reg[7]),
        .O(\buffer_rd_addr_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buffer_rd_addr_reg[8] 
       (.CLR(\axi_awaddr[31]_i_1_n_0 ),
        .D(\buffer_rd_addr_reg[8]_i_1_n_0 ),
        .G(\buffer_rd_addr_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(buffer_rd_addr[8]));
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \buffer_rd_addr_reg[8]_i_1 
       (.I0(wnext),
        .I1(write_index_reg[7]),
        .I2(write_index_reg[6]),
        .I3(\buffer_rd_addr_reg[9]_i_3_n_0 ),
        .I4(write_index_reg[8]),
        .O(\buffer_rd_addr_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buffer_rd_addr_reg[9] 
       (.CLR(\axi_awaddr[31]_i_1_n_0 ),
        .D(\buffer_rd_addr_reg[9]_i_1_n_0 ),
        .G(\buffer_rd_addr_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(buffer_rd_addr[9]));
  LUT6 #(
    .INIT(64'hBFFF400000000000)) 
    \buffer_rd_addr_reg[9]_i_1 
       (.I0(\buffer_rd_addr_reg[9]_i_3_n_0 ),
        .I1(write_index_reg[6]),
        .I2(write_index_reg[7]),
        .I3(write_index_reg[8]),
        .I4(write_index_reg[9]),
        .I5(wnext),
        .O(\buffer_rd_addr_reg[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buffer_rd_addr_reg[9]_i_2 
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .O(\buffer_rd_addr_reg[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \buffer_rd_addr_reg[9]_i_3 
       (.I0(write_index_reg[4]),
        .I1(write_index_reg[2]),
        .I2(write_index_reg[0]),
        .I3(write_index_reg[1]),
        .I4(write_index_reg[3]),
        .I5(write_index_reg[5]),
        .O(\buffer_rd_addr_reg[9]_i_3_n_0 ));
  FDRE \buffer_wr_addr_reg[0] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(read_index_reg[0]),
        .Q(buffer_wr_addr[0]),
        .R(1'b0));
  FDRE \buffer_wr_addr_reg[1] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(read_index_reg[1]),
        .Q(buffer_wr_addr[1]),
        .R(1'b0));
  FDRE \buffer_wr_addr_reg[2] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(read_index_reg[2]),
        .Q(buffer_wr_addr[2]),
        .R(1'b0));
  FDRE \buffer_wr_addr_reg[3] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(read_index_reg[3]),
        .Q(buffer_wr_addr[3]),
        .R(1'b0));
  FDRE \buffer_wr_addr_reg[4] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(read_index_reg[4]),
        .Q(buffer_wr_addr[4]),
        .R(1'b0));
  FDRE \buffer_wr_addr_reg[5] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(read_index_reg[5]),
        .Q(buffer_wr_addr[5]),
        .R(1'b0));
  FDRE \buffer_wr_addr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(read_index_reg[6]),
        .Q(buffer_wr_addr[6]),
        .R(1'b0));
  FDRE \buffer_wr_addr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(read_index_reg[7]),
        .Q(buffer_wr_addr[7]),
        .R(1'b0));
  FDRE \buffer_wr_addr_reg[8] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(read_index_reg[8]),
        .Q(buffer_wr_addr[8]),
        .R(1'b0));
  FDRE \buffer_wr_addr_reg[9] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(read_index_reg[9]),
        .Q(buffer_wr_addr[9]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[0] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[0]),
        .Q(buffer_wr_data[0]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[10] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[10]),
        .Q(buffer_wr_data[10]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[11] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[11]),
        .Q(buffer_wr_data[11]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[12] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[12]),
        .Q(buffer_wr_data[12]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[13] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[13]),
        .Q(buffer_wr_data[13]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[14] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[14]),
        .Q(buffer_wr_data[14]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[15] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[15]),
        .Q(buffer_wr_data[15]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[16] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[16]),
        .Q(buffer_wr_data[16]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[17] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[17]),
        .Q(buffer_wr_data[17]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[18] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[18]),
        .Q(buffer_wr_data[18]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[19] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[19]),
        .Q(buffer_wr_data[19]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[1] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[1]),
        .Q(buffer_wr_data[1]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[20] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[20]),
        .Q(buffer_wr_data[20]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[21] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[21]),
        .Q(buffer_wr_data[21]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[22] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[22]),
        .Q(buffer_wr_data[22]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[23] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[23]),
        .Q(buffer_wr_data[23]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[24] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[24]),
        .Q(buffer_wr_data[24]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[25] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[25]),
        .Q(buffer_wr_data[25]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[26] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[26]),
        .Q(buffer_wr_data[26]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[27] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[27]),
        .Q(buffer_wr_data[27]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[28] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[28]),
        .Q(buffer_wr_data[28]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[29] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[29]),
        .Q(buffer_wr_data[29]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[2] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[2]),
        .Q(buffer_wr_data[2]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[30] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[30]),
        .Q(buffer_wr_data[30]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[31] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[31]),
        .Q(buffer_wr_data[31]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[3] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[3]),
        .Q(buffer_wr_data[3]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[4] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[4]),
        .Q(buffer_wr_data[4]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[5] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[5]),
        .Q(buffer_wr_data[5]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[6] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[6]),
        .Q(buffer_wr_data[6]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[7] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[7]),
        .Q(buffer_wr_data[7]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[8] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[8]),
        .Q(buffer_wr_data[8]),
        .R(1'b0));
  FDRE \buffer_wr_data_reg[9] 
       (.C(m00_axi_aclk),
        .CE(rnext),
        .D(m00_axi_rdata[9]),
        .Q(buffer_wr_data[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    burst_read_active_i_1
       (.I0(start_single_burst_read),
        .I1(m00_axi_rvalid),
        .I2(m00_axi_rready),
        .I3(m00_axi_rlast),
        .I4(burst_read_active),
        .O(burst_read_active_i_1_n_0));
  FDRE burst_read_active_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(burst_read_active_i_1_n_0),
        .Q(burst_read_active),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBFAA)) 
    burst_write_active_i_1
       (.I0(start_single_burst_write),
        .I1(m00_axi_bready),
        .I2(m00_axi_bvalid),
        .I3(burst_write_active),
        .O(burst_write_active_i_1_n_0));
  FDRE burst_write_active_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(burst_write_active_i_1_n_0),
        .Q(burst_write_active),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[0]_i_1 
       (.I0(dst_addr_reg[0]),
        .I1(mst_exec_state[1]),
        .I2(Q[0]),
        .O(\dst_addr_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[10]_i_1 
       (.I0(dst_addr_reg0[10]),
        .I1(mst_exec_state[1]),
        .I2(Q[10]),
        .O(\dst_addr_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[11]_i_1 
       (.I0(dst_addr_reg0[11]),
        .I1(mst_exec_state[1]),
        .I2(Q[11]),
        .O(\dst_addr_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[12]_i_1 
       (.I0(dst_addr_reg0[12]),
        .I1(mst_exec_state[1]),
        .I2(Q[12]),
        .O(\dst_addr_reg[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[12]_i_3 
       (.I0(dst_addr_reg[12]),
        .O(\dst_addr_reg[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[12]_i_4 
       (.I0(dst_addr_reg[11]),
        .O(\dst_addr_reg[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dst_addr_reg[12]_i_5 
       (.I0(dst_addr_reg[10]),
        .I1(\m00_axi_arlen[7] ),
        .O(\dst_addr_reg[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dst_addr_reg[12]_i_6 
       (.I0(dst_addr_reg[9]),
        .I1(axi_wlast3_carry_i_5_n_0),
        .O(\dst_addr_reg[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[13]_i_1 
       (.I0(dst_addr_reg0[13]),
        .I1(mst_exec_state[1]),
        .I2(Q[13]),
        .O(\dst_addr_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[14]_i_1 
       (.I0(dst_addr_reg0[14]),
        .I1(mst_exec_state[1]),
        .I2(Q[14]),
        .O(\dst_addr_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[15]_i_1 
       (.I0(dst_addr_reg0[15]),
        .I1(mst_exec_state[1]),
        .I2(Q[15]),
        .O(\dst_addr_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[16]_i_1 
       (.I0(dst_addr_reg0[16]),
        .I1(mst_exec_state[1]),
        .I2(Q[16]),
        .O(\dst_addr_reg[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[16]_i_3 
       (.I0(dst_addr_reg[16]),
        .O(\dst_addr_reg[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[16]_i_4 
       (.I0(dst_addr_reg[15]),
        .O(\dst_addr_reg[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[16]_i_5 
       (.I0(dst_addr_reg[14]),
        .O(\dst_addr_reg[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[16]_i_6 
       (.I0(dst_addr_reg[13]),
        .O(\dst_addr_reg[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[17]_i_1 
       (.I0(dst_addr_reg0[17]),
        .I1(mst_exec_state[1]),
        .I2(Q[17]),
        .O(\dst_addr_reg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[18]_i_1 
       (.I0(dst_addr_reg0[18]),
        .I1(mst_exec_state[1]),
        .I2(Q[18]),
        .O(\dst_addr_reg[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[19]_i_1 
       (.I0(dst_addr_reg0[19]),
        .I1(mst_exec_state[1]),
        .I2(Q[19]),
        .O(\dst_addr_reg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[1]_i_1 
       (.I0(dst_addr_reg0[1]),
        .I1(mst_exec_state[1]),
        .I2(Q[1]),
        .O(\dst_addr_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[20]_i_1 
       (.I0(dst_addr_reg0[20]),
        .I1(mst_exec_state[1]),
        .I2(Q[20]),
        .O(\dst_addr_reg[20]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[20]_i_3 
       (.I0(dst_addr_reg[20]),
        .O(\dst_addr_reg[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[20]_i_4 
       (.I0(dst_addr_reg[19]),
        .O(\dst_addr_reg[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[20]_i_5 
       (.I0(dst_addr_reg[18]),
        .O(\dst_addr_reg[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[20]_i_6 
       (.I0(dst_addr_reg[17]),
        .O(\dst_addr_reg[20]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[21]_i_1 
       (.I0(dst_addr_reg0[21]),
        .I1(mst_exec_state[1]),
        .I2(Q[21]),
        .O(\dst_addr_reg[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[22]_i_1 
       (.I0(dst_addr_reg0[22]),
        .I1(mst_exec_state[1]),
        .I2(Q[22]),
        .O(\dst_addr_reg[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[23]_i_1 
       (.I0(dst_addr_reg0[23]),
        .I1(mst_exec_state[1]),
        .I2(Q[23]),
        .O(\dst_addr_reg[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[24]_i_1 
       (.I0(dst_addr_reg0[24]),
        .I1(mst_exec_state[1]),
        .I2(Q[24]),
        .O(\dst_addr_reg[24]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[24]_i_3 
       (.I0(dst_addr_reg[24]),
        .O(\dst_addr_reg[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[24]_i_4 
       (.I0(dst_addr_reg[23]),
        .O(\dst_addr_reg[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[24]_i_5 
       (.I0(dst_addr_reg[22]),
        .O(\dst_addr_reg[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[24]_i_6 
       (.I0(dst_addr_reg[21]),
        .O(\dst_addr_reg[24]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[25]_i_1 
       (.I0(dst_addr_reg0[25]),
        .I1(mst_exec_state[1]),
        .I2(Q[25]),
        .O(\dst_addr_reg[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[26]_i_1 
       (.I0(dst_addr_reg0[26]),
        .I1(mst_exec_state[1]),
        .I2(Q[26]),
        .O(\dst_addr_reg[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[27]_i_1 
       (.I0(dst_addr_reg0[27]),
        .I1(mst_exec_state[1]),
        .I2(Q[27]),
        .O(\dst_addr_reg[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[28]_i_1 
       (.I0(dst_addr_reg0[28]),
        .I1(mst_exec_state[1]),
        .I2(Q[28]),
        .O(\dst_addr_reg[28]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[28]_i_3 
       (.I0(dst_addr_reg[28]),
        .O(\dst_addr_reg[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[28]_i_4 
       (.I0(dst_addr_reg[27]),
        .O(\dst_addr_reg[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[28]_i_5 
       (.I0(dst_addr_reg[26]),
        .O(\dst_addr_reg[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[28]_i_6 
       (.I0(dst_addr_reg[25]),
        .O(\dst_addr_reg[28]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[29]_i_1 
       (.I0(dst_addr_reg0[29]),
        .I1(mst_exec_state[1]),
        .I2(Q[29]),
        .O(\dst_addr_reg[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[2]_i_1 
       (.I0(dst_addr_reg0[2]),
        .I1(mst_exec_state[1]),
        .I2(Q[2]),
        .O(\dst_addr_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[30]_i_1 
       (.I0(dst_addr_reg0[30]),
        .I1(mst_exec_state[1]),
        .I2(Q[30]),
        .O(\dst_addr_reg[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4040444040404040)) 
    \dst_addr_reg[31]_i_1 
       (.I0(mst_exec_state[0]),
        .I1(m00_axi_aresetn),
        .I2(\dst_addr_reg[31]_i_3_n_0 ),
        .I3(mst_exec_state[1]),
        .I4(redo1_carry__2_n_0),
        .I5(writes_done),
        .O(src_addr_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[31]_i_2 
       (.I0(dst_addr_reg0[31]),
        .I1(mst_exec_state[1]),
        .I2(Q[31]),
        .O(\dst_addr_reg[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \dst_addr_reg[31]_i_3 
       (.I0(mst_exec_state[1]),
        .I1(init_txn_pulse),
        .I2(redo_reg_n_0),
        .O(\dst_addr_reg[31]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[31]_i_5 
       (.I0(dst_addr_reg[31]),
        .O(\dst_addr_reg[31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[31]_i_6 
       (.I0(dst_addr_reg[30]),
        .O(\dst_addr_reg[31]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[31]_i_7 
       (.I0(dst_addr_reg[29]),
        .O(\dst_addr_reg[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[3]_i_1 
       (.I0(dst_addr_reg0[3]),
        .I1(mst_exec_state[1]),
        .I2(Q[3]),
        .O(\dst_addr_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[4]_i_1 
       (.I0(dst_addr_reg0[4]),
        .I1(mst_exec_state[1]),
        .I2(Q[4]),
        .O(\dst_addr_reg[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \dst_addr_reg[4]_i_3 
       (.I0(dst_addr_reg[4]),
        .I1(\m00_axi_arlen[2] ),
        .I2(sel0[1]),
        .O(\dst_addr_reg[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA9AA)) 
    \dst_addr_reg[4]_i_4 
       (.I0(dst_addr_reg[3]),
        .I1(sel0[1]),
        .I2(\m00_axi_arlen[2] ),
        .I3(sel0[0]),
        .O(\dst_addr_reg[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dst_addr_reg[4]_i_5 
       (.I0(dst_addr_reg[2]),
        .I1(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .O(\dst_addr_reg[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \dst_addr_reg[4]_i_6 
       (.I0(dst_addr_reg[1]),
        .O(\dst_addr_reg[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[5]_i_1 
       (.I0(dst_addr_reg0[5]),
        .I1(mst_exec_state[1]),
        .I2(Q[5]),
        .O(\dst_addr_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[6]_i_1 
       (.I0(dst_addr_reg0[6]),
        .I1(mst_exec_state[1]),
        .I2(Q[6]),
        .O(\dst_addr_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[7]_i_1 
       (.I0(dst_addr_reg0[7]),
        .I1(mst_exec_state[1]),
        .I2(Q[7]),
        .O(\dst_addr_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[8]_i_1 
       (.I0(dst_addr_reg0[8]),
        .I1(mst_exec_state[1]),
        .I2(Q[8]),
        .O(\dst_addr_reg[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD02)) 
    \dst_addr_reg[8]_i_3 
       (.I0(sel0[5]),
        .I1(\m00_axi_arlen[7] ),
        .I2(sel0[6]),
        .I3(dst_addr_reg[8]),
        .O(\dst_addr_reg[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \dst_addr_reg[8]_i_4 
       (.I0(dst_addr_reg[7]),
        .I1(\m00_axi_awlen[5] ),
        .I2(sel0[4]),
        .O(\dst_addr_reg[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \dst_addr_reg[8]_i_5 
       (.I0(dst_addr_reg[6]),
        .I1(\m00_axi_arlen[4] ),
        .I2(sel0[3]),
        .O(\dst_addr_reg[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hA6AA)) 
    \dst_addr_reg[8]_i_6 
       (.I0(dst_addr_reg[5]),
        .I1(\m00_axi_arlen[3]_INST_0_i_1_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .O(\dst_addr_reg[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dst_addr_reg[9]_i_1 
       (.I0(dst_addr_reg0[9]),
        .I1(mst_exec_state[1]),
        .I2(Q[9]),
        .O(\dst_addr_reg[9]_i_1_n_0 ));
  FDRE \dst_addr_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[0]_i_1_n_0 ),
        .Q(dst_addr_reg[0]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[10] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[10]_i_1_n_0 ),
        .Q(dst_addr_reg[10]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[11] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[11]_i_1_n_0 ),
        .Q(dst_addr_reg[11]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[12] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[12]_i_1_n_0 ),
        .Q(dst_addr_reg[12]),
        .R(1'b0));
  CARRY4 \dst_addr_reg_reg[12]_i_2 
       (.CI(\dst_addr_reg_reg[8]_i_2_n_0 ),
        .CO({\dst_addr_reg_reg[12]_i_2_n_0 ,\dst_addr_reg_reg[12]_i_2_n_1 ,\dst_addr_reg_reg[12]_i_2_n_2 ,\dst_addr_reg_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,dst_addr_reg[10:9]}),
        .O(dst_addr_reg0[12:9]),
        .S({\dst_addr_reg[12]_i_3_n_0 ,\dst_addr_reg[12]_i_4_n_0 ,\dst_addr_reg[12]_i_5_n_0 ,\dst_addr_reg[12]_i_6_n_0 }));
  FDRE \dst_addr_reg_reg[13] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[13]_i_1_n_0 ),
        .Q(dst_addr_reg[13]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[14] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[14]_i_1_n_0 ),
        .Q(dst_addr_reg[14]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[15] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[15]_i_1_n_0 ),
        .Q(dst_addr_reg[15]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[16] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[16]_i_1_n_0 ),
        .Q(dst_addr_reg[16]),
        .R(1'b0));
  CARRY4 \dst_addr_reg_reg[16]_i_2 
       (.CI(\dst_addr_reg_reg[12]_i_2_n_0 ),
        .CO({\dst_addr_reg_reg[16]_i_2_n_0 ,\dst_addr_reg_reg[16]_i_2_n_1 ,\dst_addr_reg_reg[16]_i_2_n_2 ,\dst_addr_reg_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(dst_addr_reg0[16:13]),
        .S({\dst_addr_reg[16]_i_3_n_0 ,\dst_addr_reg[16]_i_4_n_0 ,\dst_addr_reg[16]_i_5_n_0 ,\dst_addr_reg[16]_i_6_n_0 }));
  FDRE \dst_addr_reg_reg[17] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[17]_i_1_n_0 ),
        .Q(dst_addr_reg[17]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[18] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[18]_i_1_n_0 ),
        .Q(dst_addr_reg[18]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[19] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[19]_i_1_n_0 ),
        .Q(dst_addr_reg[19]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[1]_i_1_n_0 ),
        .Q(dst_addr_reg[1]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[20] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[20]_i_1_n_0 ),
        .Q(dst_addr_reg[20]),
        .R(1'b0));
  CARRY4 \dst_addr_reg_reg[20]_i_2 
       (.CI(\dst_addr_reg_reg[16]_i_2_n_0 ),
        .CO({\dst_addr_reg_reg[20]_i_2_n_0 ,\dst_addr_reg_reg[20]_i_2_n_1 ,\dst_addr_reg_reg[20]_i_2_n_2 ,\dst_addr_reg_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(dst_addr_reg0[20:17]),
        .S({\dst_addr_reg[20]_i_3_n_0 ,\dst_addr_reg[20]_i_4_n_0 ,\dst_addr_reg[20]_i_5_n_0 ,\dst_addr_reg[20]_i_6_n_0 }));
  FDRE \dst_addr_reg_reg[21] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[21]_i_1_n_0 ),
        .Q(dst_addr_reg[21]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[22] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[22]_i_1_n_0 ),
        .Q(dst_addr_reg[22]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[23] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[23]_i_1_n_0 ),
        .Q(dst_addr_reg[23]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[24] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[24]_i_1_n_0 ),
        .Q(dst_addr_reg[24]),
        .R(1'b0));
  CARRY4 \dst_addr_reg_reg[24]_i_2 
       (.CI(\dst_addr_reg_reg[20]_i_2_n_0 ),
        .CO({\dst_addr_reg_reg[24]_i_2_n_0 ,\dst_addr_reg_reg[24]_i_2_n_1 ,\dst_addr_reg_reg[24]_i_2_n_2 ,\dst_addr_reg_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(dst_addr_reg0[24:21]),
        .S({\dst_addr_reg[24]_i_3_n_0 ,\dst_addr_reg[24]_i_4_n_0 ,\dst_addr_reg[24]_i_5_n_0 ,\dst_addr_reg[24]_i_6_n_0 }));
  FDRE \dst_addr_reg_reg[25] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[25]_i_1_n_0 ),
        .Q(dst_addr_reg[25]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[26] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[26]_i_1_n_0 ),
        .Q(dst_addr_reg[26]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[27] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[27]_i_1_n_0 ),
        .Q(dst_addr_reg[27]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[28] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[28]_i_1_n_0 ),
        .Q(dst_addr_reg[28]),
        .R(1'b0));
  CARRY4 \dst_addr_reg_reg[28]_i_2 
       (.CI(\dst_addr_reg_reg[24]_i_2_n_0 ),
        .CO({\dst_addr_reg_reg[28]_i_2_n_0 ,\dst_addr_reg_reg[28]_i_2_n_1 ,\dst_addr_reg_reg[28]_i_2_n_2 ,\dst_addr_reg_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(dst_addr_reg0[28:25]),
        .S({\dst_addr_reg[28]_i_3_n_0 ,\dst_addr_reg[28]_i_4_n_0 ,\dst_addr_reg[28]_i_5_n_0 ,\dst_addr_reg[28]_i_6_n_0 }));
  FDRE \dst_addr_reg_reg[29] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[29]_i_1_n_0 ),
        .Q(dst_addr_reg[29]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[2]_i_1_n_0 ),
        .Q(dst_addr_reg[2]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[30] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[30]_i_1_n_0 ),
        .Q(dst_addr_reg[30]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[31] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[31]_i_2_n_0 ),
        .Q(dst_addr_reg[31]),
        .R(1'b0));
  CARRY4 \dst_addr_reg_reg[31]_i_4 
       (.CI(\dst_addr_reg_reg[28]_i_2_n_0 ),
        .CO({\NLW_dst_addr_reg_reg[31]_i_4_CO_UNCONNECTED [3:2],\dst_addr_reg_reg[31]_i_4_n_2 ,\dst_addr_reg_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_dst_addr_reg_reg[31]_i_4_O_UNCONNECTED [3],dst_addr_reg0[31:29]}),
        .S({1'b0,\dst_addr_reg[31]_i_5_n_0 ,\dst_addr_reg[31]_i_6_n_0 ,\dst_addr_reg[31]_i_7_n_0 }));
  FDRE \dst_addr_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[3]_i_1_n_0 ),
        .Q(dst_addr_reg[3]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[4] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[4]_i_1_n_0 ),
        .Q(dst_addr_reg[4]),
        .R(1'b0));
  CARRY4 \dst_addr_reg_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\dst_addr_reg_reg[4]_i_2_n_0 ,\dst_addr_reg_reg[4]_i_2_n_1 ,\dst_addr_reg_reg[4]_i_2_n_2 ,\dst_addr_reg_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({dst_addr_reg[4:2],1'b0}),
        .O(dst_addr_reg0[4:1]),
        .S({\dst_addr_reg[4]_i_3_n_0 ,\dst_addr_reg[4]_i_4_n_0 ,\dst_addr_reg[4]_i_5_n_0 ,\dst_addr_reg[4]_i_6_n_0 }));
  FDRE \dst_addr_reg_reg[5] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[5]_i_1_n_0 ),
        .Q(dst_addr_reg[5]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[6] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[6]_i_1_n_0 ),
        .Q(dst_addr_reg[6]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[7] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[7]_i_1_n_0 ),
        .Q(dst_addr_reg[7]),
        .R(1'b0));
  FDRE \dst_addr_reg_reg[8] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[8]_i_1_n_0 ),
        .Q(dst_addr_reg[8]),
        .R(1'b0));
  CARRY4 \dst_addr_reg_reg[8]_i_2 
       (.CI(\dst_addr_reg_reg[4]_i_2_n_0 ),
        .CO({\dst_addr_reg_reg[8]_i_2_n_0 ,\dst_addr_reg_reg[8]_i_2_n_1 ,\dst_addr_reg_reg[8]_i_2_n_2 ,\dst_addr_reg_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(dst_addr_reg[8:5]),
        .O(dst_addr_reg0[8:5]),
        .S({\dst_addr_reg[8]_i_3_n_0 ,\dst_addr_reg[8]_i_4_n_0 ,\dst_addr_reg[8]_i_5_n_0 ,\dst_addr_reg[8]_i_6_n_0 }));
  FDRE \dst_addr_reg_reg[9] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\dst_addr_reg[9]_i_1_n_0 ),
        .Q(dst_addr_reg[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE8)) 
    hw_done_reg_i_1
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .I2(hw_done),
        .O(hw_done_reg_i_1_n_0));
  FDRE hw_done_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(hw_done_reg_i_1_n_0),
        .Q(hw_done),
        .R(init_txn_ff_i_1_n_0));
  FDRE init_txn_ff2_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(init_txn_ff),
        .Q(init_txn_ff2),
        .R(init_txn_ff_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    init_txn_ff_i_1
       (.I0(m00_axi_aresetn),
        .O(init_txn_ff_i_1_n_0));
  FDRE init_txn_ff_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(hw_active),
        .Q(init_txn_ff),
        .R(init_txn_ff_i_1_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    init_txn_pulse_inferred_i_1
       (.I0(redo_reg_n_0),
        .I1(init_txn_ff2),
        .I2(init_txn_ff),
        .O(init_txn_pulse));
  CARRY4 len_copy_reg0_carry
       (.CI(1'b0),
        .CO({len_copy_reg0_carry_n_0,len_copy_reg0_carry_n_1,len_copy_reg0_carry_n_2,len_copy_reg0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({len_copy_reg0_carry_i_1_n_0,len_copy_reg0_carry_i_2_n_0,len_copy_reg0_carry_i_3_n_0,1'b0}),
        .O(len_copy_reg0[5:2]),
        .S({len_copy_reg0_carry_i_4_n_0,len_copy_reg0_carry_i_5_n_0,len_copy_reg0_carry_i_6_n_0,len_copy_reg0_carry_i_7_n_0}));
  CARRY4 len_copy_reg0_carry__0
       (.CI(len_copy_reg0_carry_n_0),
        .CO({len_copy_reg0_carry__0_n_0,len_copy_reg0_carry__0_n_1,len_copy_reg0_carry__0_n_2,len_copy_reg0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({len_copy_reg0_carry__0_i_1_n_0,len_copy_reg0_carry__0_i_2_n_0,len_copy_reg0_carry__0_i_3_n_0,len_copy_reg0_carry__0_i_4_n_0}),
        .O(len_copy_reg0[9:6]),
        .S({len_copy_reg0_carry__0_i_5_n_0,len_copy_reg0_carry__0_i_6_n_0,len_copy_reg0_carry__0_i_7_n_0,len_copy_reg0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    len_copy_reg0_carry__0_i_1
       (.I0(sel0[5]),
        .I1(redo1_carry_i_6_n_0),
        .O(len_copy_reg0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hA2)) 
    len_copy_reg0_carry__0_i_2
       (.I0(sel0[4]),
        .I1(redo1_carry_i_6_n_0),
        .I2(sel0[5]),
        .O(len_copy_reg0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    len_copy_reg0_carry__0_i_3
       (.I0(sel0[3]),
        .I1(\m00_axi_arlen[3]_INST_0_i_1_n_0 ),
        .O(len_copy_reg0_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hAAAAAAA2)) 
    len_copy_reg0_carry__0_i_4
       (.I0(sel0[2]),
        .I1(redo1_carry_i_6_n_0),
        .I2(sel0[3]),
        .I3(sel0[4]),
        .I4(sel0[5]),
        .O(len_copy_reg0_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h97)) 
    len_copy_reg0_carry__0_i_5
       (.I0(sel0[5]),
        .I1(sel0[6]),
        .I2(\m00_axi_arlen[7] ),
        .O(len_copy_reg0_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h6D)) 
    len_copy_reg0_carry__0_i_6
       (.I0(sel0[4]),
        .I1(redo1_carry_i_6_n_0),
        .I2(sel0[5]),
        .O(len_copy_reg0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9979)) 
    len_copy_reg0_carry__0_i_7
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(redo1_carry_i_6_n_0),
        .I3(sel0[5]),
        .O(len_copy_reg0_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'hAAA6555D)) 
    len_copy_reg0_carry__0_i_8
       (.I0(sel0[2]),
        .I1(redo1_carry_i_6_n_0),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .I4(sel0[3]),
        .O(len_copy_reg0_carry__0_i_8_n_0));
  CARRY4 len_copy_reg0_carry__1
       (.CI(len_copy_reg0_carry__0_n_0),
        .CO({len_copy_reg0_carry__1_n_0,len_copy_reg0_carry__1_n_1,len_copy_reg0_carry__1_n_2,len_copy_reg0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\len_copy_reg_reg_n_0_[12] ,\len_copy_reg_reg_n_0_[11] ,1'b0,len_copy_reg0_carry__1_i_1_n_0}),
        .O(len_copy_reg0[13:10]),
        .S({len_copy_reg0_carry__1_i_2_n_0,len_copy_reg0_carry__1_i_3_n_0,len_copy_reg0_carry__1_i_4_n_0,len_copy_reg0_carry__1_i_5_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    len_copy_reg0_carry__1_i_1
       (.I0(\m00_axi_arlen[7] ),
        .I1(sel0[6]),
        .O(len_copy_reg0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__1_i_2
       (.I0(\len_copy_reg_reg_n_0_[12] ),
        .I1(\len_copy_reg_reg_n_0_[13] ),
        .O(len_copy_reg0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__1_i_3
       (.I0(\len_copy_reg_reg_n_0_[11] ),
        .I1(\len_copy_reg_reg_n_0_[12] ),
        .O(len_copy_reg0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    len_copy_reg0_carry__1_i_4
       (.I0(\len_copy_reg_reg_n_0_[11] ),
        .O(len_copy_reg0_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h7B)) 
    len_copy_reg0_carry__1_i_5
       (.I0(sel0[6]),
        .I1(\m00_axi_arlen[7] ),
        .I2(\len_copy_reg_reg_n_0_[10] ),
        .O(len_copy_reg0_carry__1_i_5_n_0));
  CARRY4 len_copy_reg0_carry__2
       (.CI(len_copy_reg0_carry__1_n_0),
        .CO({len_copy_reg0_carry__2_n_0,len_copy_reg0_carry__2_n_1,len_copy_reg0_carry__2_n_2,len_copy_reg0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\len_copy_reg_reg_n_0_[16] ,\len_copy_reg_reg_n_0_[15] ,\len_copy_reg_reg_n_0_[14] ,\len_copy_reg_reg_n_0_[13] }),
        .O(len_copy_reg0[17:14]),
        .S({len_copy_reg0_carry__2_i_1_n_0,len_copy_reg0_carry__2_i_2_n_0,len_copy_reg0_carry__2_i_3_n_0,len_copy_reg0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__2_i_1
       (.I0(\len_copy_reg_reg_n_0_[16] ),
        .I1(\len_copy_reg_reg_n_0_[17] ),
        .O(len_copy_reg0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__2_i_2
       (.I0(\len_copy_reg_reg_n_0_[15] ),
        .I1(\len_copy_reg_reg_n_0_[16] ),
        .O(len_copy_reg0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__2_i_3
       (.I0(\len_copy_reg_reg_n_0_[14] ),
        .I1(\len_copy_reg_reg_n_0_[15] ),
        .O(len_copy_reg0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__2_i_4
       (.I0(\len_copy_reg_reg_n_0_[13] ),
        .I1(\len_copy_reg_reg_n_0_[14] ),
        .O(len_copy_reg0_carry__2_i_4_n_0));
  CARRY4 len_copy_reg0_carry__3
       (.CI(len_copy_reg0_carry__2_n_0),
        .CO({len_copy_reg0_carry__3_n_0,len_copy_reg0_carry__3_n_1,len_copy_reg0_carry__3_n_2,len_copy_reg0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\len_copy_reg_reg_n_0_[20] ,\len_copy_reg_reg_n_0_[19] ,\len_copy_reg_reg_n_0_[18] ,\len_copy_reg_reg_n_0_[17] }),
        .O(len_copy_reg0[21:18]),
        .S({len_copy_reg0_carry__3_i_1_n_0,len_copy_reg0_carry__3_i_2_n_0,len_copy_reg0_carry__3_i_3_n_0,len_copy_reg0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__3_i_1
       (.I0(\len_copy_reg_reg_n_0_[20] ),
        .I1(\len_copy_reg_reg_n_0_[21] ),
        .O(len_copy_reg0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__3_i_2
       (.I0(\len_copy_reg_reg_n_0_[19] ),
        .I1(\len_copy_reg_reg_n_0_[20] ),
        .O(len_copy_reg0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__3_i_3
       (.I0(\len_copy_reg_reg_n_0_[18] ),
        .I1(\len_copy_reg_reg_n_0_[19] ),
        .O(len_copy_reg0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__3_i_4
       (.I0(\len_copy_reg_reg_n_0_[17] ),
        .I1(\len_copy_reg_reg_n_0_[18] ),
        .O(len_copy_reg0_carry__3_i_4_n_0));
  CARRY4 len_copy_reg0_carry__4
       (.CI(len_copy_reg0_carry__3_n_0),
        .CO({len_copy_reg0_carry__4_n_0,len_copy_reg0_carry__4_n_1,len_copy_reg0_carry__4_n_2,len_copy_reg0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\len_copy_reg_reg_n_0_[24] ,\len_copy_reg_reg_n_0_[23] ,\len_copy_reg_reg_n_0_[22] ,\len_copy_reg_reg_n_0_[21] }),
        .O(len_copy_reg0[25:22]),
        .S({len_copy_reg0_carry__4_i_1_n_0,len_copy_reg0_carry__4_i_2_n_0,len_copy_reg0_carry__4_i_3_n_0,len_copy_reg0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__4_i_1
       (.I0(\len_copy_reg_reg_n_0_[24] ),
        .I1(\len_copy_reg_reg_n_0_[25] ),
        .O(len_copy_reg0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__4_i_2
       (.I0(\len_copy_reg_reg_n_0_[23] ),
        .I1(\len_copy_reg_reg_n_0_[24] ),
        .O(len_copy_reg0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__4_i_3
       (.I0(\len_copy_reg_reg_n_0_[22] ),
        .I1(\len_copy_reg_reg_n_0_[23] ),
        .O(len_copy_reg0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__4_i_4
       (.I0(\len_copy_reg_reg_n_0_[21] ),
        .I1(\len_copy_reg_reg_n_0_[22] ),
        .O(len_copy_reg0_carry__4_i_4_n_0));
  CARRY4 len_copy_reg0_carry__5
       (.CI(len_copy_reg0_carry__4_n_0),
        .CO({len_copy_reg0_carry__5_n_0,len_copy_reg0_carry__5_n_1,len_copy_reg0_carry__5_n_2,len_copy_reg0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\len_copy_reg_reg_n_0_[28] ,\len_copy_reg_reg_n_0_[27] ,\len_copy_reg_reg_n_0_[26] ,\len_copy_reg_reg_n_0_[25] }),
        .O(len_copy_reg0[29:26]),
        .S({len_copy_reg0_carry__5_i_1_n_0,len_copy_reg0_carry__5_i_2_n_0,len_copy_reg0_carry__5_i_3_n_0,len_copy_reg0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__5_i_1
       (.I0(\len_copy_reg_reg_n_0_[28] ),
        .I1(\len_copy_reg_reg_n_0_[29] ),
        .O(len_copy_reg0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__5_i_2
       (.I0(\len_copy_reg_reg_n_0_[27] ),
        .I1(\len_copy_reg_reg_n_0_[28] ),
        .O(len_copy_reg0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__5_i_3
       (.I0(\len_copy_reg_reg_n_0_[26] ),
        .I1(\len_copy_reg_reg_n_0_[27] ),
        .O(len_copy_reg0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__5_i_4
       (.I0(\len_copy_reg_reg_n_0_[25] ),
        .I1(\len_copy_reg_reg_n_0_[26] ),
        .O(len_copy_reg0_carry__5_i_4_n_0));
  CARRY4 len_copy_reg0_carry__6
       (.CI(len_copy_reg0_carry__5_n_0),
        .CO({NLW_len_copy_reg0_carry__6_CO_UNCONNECTED[3:1],len_copy_reg0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\len_copy_reg_reg_n_0_[29] }),
        .O({NLW_len_copy_reg0_carry__6_O_UNCONNECTED[3:2],len_copy_reg0[31:30]}),
        .S({1'b0,1'b0,len_copy_reg0_carry__6_i_1_n_0,len_copy_reg0_carry__6_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__6_i_1
       (.I0(\len_copy_reg_reg_n_0_[30] ),
        .I1(\len_copy_reg_reg_n_0_[31] ),
        .O(len_copy_reg0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    len_copy_reg0_carry__6_i_2
       (.I0(\len_copy_reg_reg_n_0_[29] ),
        .I1(\len_copy_reg_reg_n_0_[30] ),
        .O(len_copy_reg0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    len_copy_reg0_carry_i_1
       (.I0(\m00_axi_arlen[2] ),
        .I1(sel0[1]),
        .O(len_copy_reg0_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hFE00FF00)) 
    len_copy_reg0_carry_i_2
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(\m00_axi_arlen[3]_INST_0_i_1_n_0 ),
        .O(len_copy_reg0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    len_copy_reg0_carry_i_3
       (.I0(\len_copy_reg_reg_n_0_[2] ),
        .I1(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .O(len_copy_reg0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h8787778787878787)) 
    len_copy_reg0_carry_i_4
       (.I0(sel0[1]),
        .I1(\m00_axi_arlen[2] ),
        .I2(sel0[2]),
        .I3(redo1_carry_i_6_n_0),
        .I4(sel0[3]),
        .I5(redo1_carry_i_7_n_0),
        .O(len_copy_reg0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hCCCC333B3333333B)) 
    len_copy_reg0_carry_i_5
       (.I0(\m00_axi_arlen[3]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .I5(\m00_axi_arlen[2] ),
        .O(len_copy_reg0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F034)) 
    len_copy_reg0_carry_i_6
       (.I0(\len_copy_reg_reg_n_0_[2] ),
        .I1(\m00_axi_arlen[3]_INST_0_i_1_n_0 ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[3]),
        .O(len_copy_reg0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    len_copy_reg0_carry_i_7
       (.I0(\len_copy_reg_reg_n_0_[2] ),
        .I1(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .O(len_copy_reg0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[0]_i_1 
       (.I0(\len_copy_reg_reg_n_0_[0] ),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [0]),
        .O(\len_copy_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[10]_i_1 
       (.I0(len_copy_reg0[10]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [10]),
        .O(\len_copy_reg[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[11]_i_1 
       (.I0(len_copy_reg0[11]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [11]),
        .O(\len_copy_reg[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[12]_i_1 
       (.I0(len_copy_reg0[12]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [12]),
        .O(\len_copy_reg[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[13]_i_1 
       (.I0(len_copy_reg0[13]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [13]),
        .O(\len_copy_reg[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[14]_i_1 
       (.I0(len_copy_reg0[14]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [14]),
        .O(\len_copy_reg[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[15]_i_1 
       (.I0(len_copy_reg0[15]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [15]),
        .O(\len_copy_reg[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[16]_i_1 
       (.I0(len_copy_reg0[16]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [16]),
        .O(\len_copy_reg[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[17]_i_1 
       (.I0(len_copy_reg0[17]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [17]),
        .O(\len_copy_reg[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[18]_i_1 
       (.I0(len_copy_reg0[18]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [18]),
        .O(\len_copy_reg[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[19]_i_1 
       (.I0(len_copy_reg0[19]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [19]),
        .O(\len_copy_reg[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[1]_i_1 
       (.I0(\len_copy_reg_reg_n_0_[1] ),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [1]),
        .O(\len_copy_reg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[20]_i_1 
       (.I0(len_copy_reg0[20]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [20]),
        .O(\len_copy_reg[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[21]_i_1 
       (.I0(len_copy_reg0[21]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [21]),
        .O(\len_copy_reg[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[22]_i_1 
       (.I0(len_copy_reg0[22]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [22]),
        .O(\len_copy_reg[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[23]_i_1 
       (.I0(len_copy_reg0[23]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [23]),
        .O(\len_copy_reg[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[24]_i_1 
       (.I0(len_copy_reg0[24]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [24]),
        .O(\len_copy_reg[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[25]_i_1 
       (.I0(len_copy_reg0[25]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [25]),
        .O(\len_copy_reg[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[26]_i_1 
       (.I0(len_copy_reg0[26]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [26]),
        .O(\len_copy_reg[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[27]_i_1 
       (.I0(len_copy_reg0[27]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [27]),
        .O(\len_copy_reg[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[28]_i_1 
       (.I0(len_copy_reg0[28]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [28]),
        .O(\len_copy_reg[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[29]_i_1 
       (.I0(len_copy_reg0[29]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [29]),
        .O(\len_copy_reg[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[2]_i_1 
       (.I0(len_copy_reg0[2]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [2]),
        .O(\len_copy_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[30]_i_1 
       (.I0(len_copy_reg0[30]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [30]),
        .O(\len_copy_reg[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000400040444000)) 
    \len_copy_reg[31]_i_1 
       (.I0(mst_exec_state[0]),
        .I1(m00_axi_aresetn),
        .I2(writes_done),
        .I3(mst_exec_state[1]),
        .I4(init_txn_pulse),
        .I5(redo_reg_n_0),
        .O(len_copy_reg));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[31]_i_2 
       (.I0(len_copy_reg0[31]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [31]),
        .O(\len_copy_reg[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[3]_i_1 
       (.I0(len_copy_reg0[3]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [3]),
        .O(\len_copy_reg[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[4]_i_1 
       (.I0(len_copy_reg0[4]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [4]),
        .O(\len_copy_reg[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[5]_i_1 
       (.I0(len_copy_reg0[5]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [5]),
        .O(\len_copy_reg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[6]_i_1 
       (.I0(len_copy_reg0[6]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [6]),
        .O(\len_copy_reg[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[7]_i_1 
       (.I0(len_copy_reg0[7]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [7]),
        .O(\len_copy_reg[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[8]_i_1 
       (.I0(len_copy_reg0[8]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [8]),
        .O(\len_copy_reg[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \len_copy_reg[9]_i_1 
       (.I0(len_copy_reg0[9]),
        .I1(redo1_carry__2_n_0),
        .I2(mst_exec_state[1]),
        .I3(\slv_reg3_reg[31] [9]),
        .O(\len_copy_reg[9]_i_1_n_0 ));
  FDRE \len_copy_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[0]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[10] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[10]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[11] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[11]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[12] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[12]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[13] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[13]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[14] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[14]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[15] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[15]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[16] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[16]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[17] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[17]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[18] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[18]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[19] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[19]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[1]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[20] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[20]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[21] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[21]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[22] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[22]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[23] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[23]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[24] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[24]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[25] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[25]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[26] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[26]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[27] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[27]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[28] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[28]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[29] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[29]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[2]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[30] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[30]_i_1_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[31] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[31]_i_2_n_0 ),
        .Q(\len_copy_reg_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \len_copy_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[3]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \len_copy_reg_reg[4] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[4]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \len_copy_reg_reg[5] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[5]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE \len_copy_reg_reg[6] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[6]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE \len_copy_reg_reg[7] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[7]_i_1_n_0 ),
        .Q(sel0[4]),
        .R(1'b0));
  FDRE \len_copy_reg_reg[8] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[8]_i_1_n_0 ),
        .Q(sel0[5]),
        .R(1'b0));
  FDRE \len_copy_reg_reg[9] 
       (.C(m00_axi_aclk),
        .CE(len_copy_reg),
        .D(\len_copy_reg[9]_i_1_n_0 ),
        .Q(sel0[6]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \m00_axi_arlen[0]_INST_0 
       (.I0(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .O(m00_axi_awlen[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \m00_axi_arlen[0]_INST_0_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\m00_axi_arlen[7] ),
        .I3(sel0[6]),
        .I4(\m00_axi_arlen[0]_INST_0_i_2_n_0 ),
        .O(\m00_axi_arlen[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \m00_axi_arlen[0]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(\m00_axi_arlen[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \m00_axi_arlen[1]_INST_0 
       (.I0(sel0[1]),
        .I1(\m00_axi_arlen[2] ),
        .O(m00_axi_awlen[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m00_axi_arlen[2]_INST_0 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(\m00_axi_arlen[7] ),
        .I4(sel0[3]),
        .I5(sel0[2]),
        .O(\m00_axi_arlen[2] ));
  LUT2 #(
    .INIT(4'hB)) 
    \m00_axi_arlen[3]_INST_0 
       (.I0(sel0[3]),
        .I1(\m00_axi_arlen[3]_INST_0_i_1_n_0 ),
        .O(m00_axi_awlen[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \m00_axi_arlen[3]_INST_0_i_1 
       (.I0(sel0[6]),
        .I1(\m00_axi_arlen[7] ),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .O(\m00_axi_arlen[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m00_axi_arlen[4]_INST_0 
       (.I0(\m00_axi_arlen[7] ),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .O(\m00_axi_arlen[4] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \m00_axi_arlen[5]_INST_0 
       (.I0(sel0[5]),
        .I1(\m00_axi_arlen[7] ),
        .I2(sel0[6]),
        .O(\m00_axi_awlen[5] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m00_axi_arlen[6]_INST_0 
       (.I0(sel0[6]),
        .I1(\m00_axi_arlen[7]_INST_0_i_5_n_0 ),
        .I2(\m00_axi_arlen[7]_INST_0_i_4_n_0 ),
        .I3(\m00_axi_arlen[7]_INST_0_i_3_n_0 ),
        .I4(\m00_axi_arlen[7]_INST_0_i_2_n_0 ),
        .I5(\m00_axi_arlen[7]_INST_0_i_1_n_0 ),
        .O(m00_axi_awlen[3]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m00_axi_arlen[7]_INST_0 
       (.I0(\m00_axi_arlen[7]_INST_0_i_1_n_0 ),
        .I1(\m00_axi_arlen[7]_INST_0_i_2_n_0 ),
        .I2(\m00_axi_arlen[7]_INST_0_i_3_n_0 ),
        .I3(\m00_axi_arlen[7]_INST_0_i_4_n_0 ),
        .I4(\m00_axi_arlen[7]_INST_0_i_5_n_0 ),
        .O(\m00_axi_arlen[7] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m00_axi_arlen[7]_INST_0_i_1 
       (.I0(\len_copy_reg_reg_n_0_[19] ),
        .I1(\len_copy_reg_reg_n_0_[18] ),
        .I2(\len_copy_reg_reg_n_0_[23] ),
        .I3(\len_copy_reg_reg_n_0_[22] ),
        .I4(\len_copy_reg_reg_n_0_[24] ),
        .I5(\len_copy_reg_reg_n_0_[25] ),
        .O(\m00_axi_arlen[7]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m00_axi_arlen[7]_INST_0_i_2 
       (.I0(\len_copy_reg_reg_n_0_[11] ),
        .I1(\len_copy_reg_reg_n_0_[10] ),
        .I2(\len_copy_reg_reg_n_0_[16] ),
        .I3(\len_copy_reg_reg_n_0_[17] ),
        .O(\m00_axi_arlen[7]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m00_axi_arlen[7]_INST_0_i_3 
       (.I0(\len_copy_reg_reg_n_0_[28] ),
        .I1(\len_copy_reg_reg_n_0_[29] ),
        .I2(\len_copy_reg_reg_n_0_[31] ),
        .I3(\len_copy_reg_reg_n_0_[30] ),
        .O(\m00_axi_arlen[7]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m00_axi_arlen[7]_INST_0_i_4 
       (.I0(\len_copy_reg_reg_n_0_[20] ),
        .I1(\len_copy_reg_reg_n_0_[21] ),
        .I2(\len_copy_reg_reg_n_0_[12] ),
        .I3(\len_copy_reg_reg_n_0_[13] ),
        .O(\m00_axi_arlen[7]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m00_axi_arlen[7]_INST_0_i_5 
       (.I0(\len_copy_reg_reg_n_0_[14] ),
        .I1(\len_copy_reg_reg_n_0_[15] ),
        .I2(\len_copy_reg_reg_n_0_[26] ),
        .I3(\len_copy_reg_reg_n_0_[27] ),
        .O(\m00_axi_arlen[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3000777730004444)) 
    \mst_exec_state[0]_i_1 
       (.I0(reads_done),
        .I1(mst_exec_state[0]),
        .I2(writes_done),
        .I3(redo1_carry__2_n_0),
        .I4(mst_exec_state[1]),
        .I5(init_txn_pulse),
        .O(\mst_exec_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h38083838)) 
    \mst_exec_state[1]_i_1 
       (.I0(reads_done),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .I3(redo1_carry__2_n_0),
        .I4(writes_done),
        .O(\mst_exec_state[1]_i_1_n_0 ));
  FDRE \mst_exec_state_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\mst_exec_state[0]_i_1_n_0 ),
        .Q(mst_exec_state[0]),
        .R(init_txn_ff_i_1_n_0));
  FDRE \mst_exec_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state[1]),
        .R(init_txn_ff_i_1_n_0));
  LUT3 #(
    .INIT(8'hFB)) 
    \read_index[0]_i_1 
       (.I0(start_single_burst_read),
        .I1(m00_axi_aresetn),
        .I2(init_txn_pulse),
        .O(\read_index[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \read_index[0]_i_10 
       (.I0(read_index_reg__0[31]),
        .I1(read_index_reg__0[30]),
        .O(\read_index[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \read_index[0]_i_11 
       (.I0(read_index_reg__0[27]),
        .I1(read_index_reg__0[29]),
        .I2(read_index_reg__0[28]),
        .O(\read_index[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \read_index[0]_i_12 
       (.I0(read_index_reg__0[24]),
        .I1(read_index_reg__0[26]),
        .I2(read_index_reg__0[25]),
        .O(\read_index[0]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \read_index[0]_i_14 
       (.I0(read_index_reg__0[21]),
        .I1(read_index_reg__0[23]),
        .I2(read_index_reg__0[22]),
        .O(\read_index[0]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \read_index[0]_i_15 
       (.I0(read_index_reg__0[18]),
        .I1(read_index_reg__0[20]),
        .I2(read_index_reg__0[19]),
        .O(\read_index[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \read_index[0]_i_16 
       (.I0(read_index_reg__0[15]),
        .I1(read_index_reg__0[17]),
        .I2(read_index_reg__0[16]),
        .O(\read_index[0]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \read_index[0]_i_17 
       (.I0(read_index_reg__0[12]),
        .I1(read_index_reg__0[14]),
        .I2(read_index_reg__0[13]),
        .O(\read_index[0]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \read_index[0]_i_18 
       (.I0(read_index_reg[9]),
        .I1(read_index_reg__0[11]),
        .I2(read_index_reg__0[10]),
        .O(\read_index[0]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h0000C009)) 
    \read_index[0]_i_19 
       (.I0(sel0[6]),
        .I1(read_index_reg[6]),
        .I2(read_index_reg[7]),
        .I3(\m00_axi_arlen[7] ),
        .I4(read_index_reg[8]),
        .O(\read_index[0]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \read_index[0]_i_2 
       (.I0(rnext),
        .I1(read_index1),
        .O(read_index0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    \read_index[0]_i_20 
       (.I0(\read_index[0]_i_22_n_0 ),
        .I1(read_index_reg[3]),
        .I2(read_index_reg[4]),
        .I3(\m00_axi_arlen[4] ),
        .I4(read_index_reg[5]),
        .I5(\m00_axi_awlen[5] ),
        .O(\read_index[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h6000600000600006)) 
    \read_index[0]_i_21 
       (.I0(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .I1(read_index_reg[0]),
        .I2(read_index_reg[1]),
        .I3(\m00_axi_arlen[2] ),
        .I4(sel0[1]),
        .I5(read_index_reg[2]),
        .O(\read_index[0]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \read_index[0]_i_22 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\m00_axi_arlen[7] ),
        .I3(sel0[6]),
        .I4(sel0[3]),
        .O(\read_index[0]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[0]_i_5 
       (.I0(read_index_reg[3]),
        .O(\read_index[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[0]_i_6 
       (.I0(read_index_reg[2]),
        .O(\read_index[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[0]_i_7 
       (.I0(read_index_reg[1]),
        .O(\read_index[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_index[0]_i_8 
       (.I0(read_index_reg[0]),
        .O(\read_index[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[12]_i_2 
       (.I0(read_index_reg__0[15]),
        .O(\read_index[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[12]_i_3 
       (.I0(read_index_reg__0[14]),
        .O(\read_index[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[12]_i_4 
       (.I0(read_index_reg__0[13]),
        .O(\read_index[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[12]_i_5 
       (.I0(read_index_reg__0[12]),
        .O(\read_index[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[16]_i_2 
       (.I0(read_index_reg__0[19]),
        .O(\read_index[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[16]_i_3 
       (.I0(read_index_reg__0[18]),
        .O(\read_index[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[16]_i_4 
       (.I0(read_index_reg__0[17]),
        .O(\read_index[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[16]_i_5 
       (.I0(read_index_reg__0[16]),
        .O(\read_index[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[20]_i_2 
       (.I0(read_index_reg__0[23]),
        .O(\read_index[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[20]_i_3 
       (.I0(read_index_reg__0[22]),
        .O(\read_index[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[20]_i_4 
       (.I0(read_index_reg__0[21]),
        .O(\read_index[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[20]_i_5 
       (.I0(read_index_reg__0[20]),
        .O(\read_index[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[24]_i_2 
       (.I0(read_index_reg__0[27]),
        .O(\read_index[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[24]_i_3 
       (.I0(read_index_reg__0[26]),
        .O(\read_index[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[24]_i_4 
       (.I0(read_index_reg__0[25]),
        .O(\read_index[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[24]_i_5 
       (.I0(read_index_reg__0[24]),
        .O(\read_index[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[28]_i_2 
       (.I0(read_index_reg__0[31]),
        .O(\read_index[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[28]_i_3 
       (.I0(read_index_reg__0[30]),
        .O(\read_index[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[28]_i_4 
       (.I0(read_index_reg__0[29]),
        .O(\read_index[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[28]_i_5 
       (.I0(read_index_reg__0[28]),
        .O(\read_index[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[4]_i_2 
       (.I0(read_index_reg[7]),
        .O(\read_index[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[4]_i_3 
       (.I0(read_index_reg[6]),
        .O(\read_index[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[4]_i_4 
       (.I0(read_index_reg[5]),
        .O(\read_index[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[4]_i_5 
       (.I0(read_index_reg[4]),
        .O(\read_index[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[8]_i_2 
       (.I0(read_index_reg__0[11]),
        .O(\read_index[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[8]_i_3 
       (.I0(read_index_reg__0[10]),
        .O(\read_index[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[8]_i_4 
       (.I0(read_index_reg[9]),
        .O(\read_index[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_index[8]_i_5 
       (.I0(read_index_reg[8]),
        .O(\read_index[8]_i_5_n_0 ));
  FDRE \read_index_reg[0] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[0]_i_3_n_7 ),
        .Q(read_index_reg[0]),
        .R(\read_index[0]_i_1_n_0 ));
  CARRY4 \read_index_reg[0]_i_13 
       (.CI(1'b0),
        .CO({\read_index_reg[0]_i_13_n_0 ,\read_index_reg[0]_i_13_n_1 ,\read_index_reg[0]_i_13_n_2 ,\read_index_reg[0]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_read_index_reg[0]_i_13_O_UNCONNECTED [3:0]),
        .S({\read_index[0]_i_18_n_0 ,\read_index[0]_i_19_n_0 ,\read_index[0]_i_20_n_0 ,\read_index[0]_i_21_n_0 }));
  CARRY4 \read_index_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\read_index_reg[0]_i_3_n_0 ,\read_index_reg[0]_i_3_n_1 ,\read_index_reg[0]_i_3_n_2 ,\read_index_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\read_index_reg[0]_i_3_n_4 ,\read_index_reg[0]_i_3_n_5 ,\read_index_reg[0]_i_3_n_6 ,\read_index_reg[0]_i_3_n_7 }),
        .S({\read_index[0]_i_5_n_0 ,\read_index[0]_i_6_n_0 ,\read_index[0]_i_7_n_0 ,\read_index[0]_i_8_n_0 }));
  CARRY4 \read_index_reg[0]_i_4 
       (.CI(\read_index_reg[0]_i_9_n_0 ),
        .CO({\NLW_read_index_reg[0]_i_4_CO_UNCONNECTED [3],read_index1,\read_index_reg[0]_i_4_n_2 ,\read_index_reg[0]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(\NLW_read_index_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,\read_index[0]_i_10_n_0 ,\read_index[0]_i_11_n_0 ,\read_index[0]_i_12_n_0 }));
  CARRY4 \read_index_reg[0]_i_9 
       (.CI(\read_index_reg[0]_i_13_n_0 ),
        .CO({\read_index_reg[0]_i_9_n_0 ,\read_index_reg[0]_i_9_n_1 ,\read_index_reg[0]_i_9_n_2 ,\read_index_reg[0]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_read_index_reg[0]_i_9_O_UNCONNECTED [3:0]),
        .S({\read_index[0]_i_14_n_0 ,\read_index[0]_i_15_n_0 ,\read_index[0]_i_16_n_0 ,\read_index[0]_i_17_n_0 }));
  FDRE \read_index_reg[10] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[8]_i_1_n_5 ),
        .Q(read_index_reg__0[10]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[11] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[8]_i_1_n_4 ),
        .Q(read_index_reg__0[11]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[12] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[12]_i_1_n_7 ),
        .Q(read_index_reg__0[12]),
        .R(\read_index[0]_i_1_n_0 ));
  CARRY4 \read_index_reg[12]_i_1 
       (.CI(\read_index_reg[8]_i_1_n_0 ),
        .CO({\read_index_reg[12]_i_1_n_0 ,\read_index_reg[12]_i_1_n_1 ,\read_index_reg[12]_i_1_n_2 ,\read_index_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_index_reg[12]_i_1_n_4 ,\read_index_reg[12]_i_1_n_5 ,\read_index_reg[12]_i_1_n_6 ,\read_index_reg[12]_i_1_n_7 }),
        .S({\read_index[12]_i_2_n_0 ,\read_index[12]_i_3_n_0 ,\read_index[12]_i_4_n_0 ,\read_index[12]_i_5_n_0 }));
  FDRE \read_index_reg[13] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[12]_i_1_n_6 ),
        .Q(read_index_reg__0[13]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[14] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[12]_i_1_n_5 ),
        .Q(read_index_reg__0[14]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[15] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[12]_i_1_n_4 ),
        .Q(read_index_reg__0[15]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[16] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[16]_i_1_n_7 ),
        .Q(read_index_reg__0[16]),
        .R(\read_index[0]_i_1_n_0 ));
  CARRY4 \read_index_reg[16]_i_1 
       (.CI(\read_index_reg[12]_i_1_n_0 ),
        .CO({\read_index_reg[16]_i_1_n_0 ,\read_index_reg[16]_i_1_n_1 ,\read_index_reg[16]_i_1_n_2 ,\read_index_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_index_reg[16]_i_1_n_4 ,\read_index_reg[16]_i_1_n_5 ,\read_index_reg[16]_i_1_n_6 ,\read_index_reg[16]_i_1_n_7 }),
        .S({\read_index[16]_i_2_n_0 ,\read_index[16]_i_3_n_0 ,\read_index[16]_i_4_n_0 ,\read_index[16]_i_5_n_0 }));
  FDRE \read_index_reg[17] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[16]_i_1_n_6 ),
        .Q(read_index_reg__0[17]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[18] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[16]_i_1_n_5 ),
        .Q(read_index_reg__0[18]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[19] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[16]_i_1_n_4 ),
        .Q(read_index_reg__0[19]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[1] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[0]_i_3_n_6 ),
        .Q(read_index_reg[1]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[20] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[20]_i_1_n_7 ),
        .Q(read_index_reg__0[20]),
        .R(\read_index[0]_i_1_n_0 ));
  CARRY4 \read_index_reg[20]_i_1 
       (.CI(\read_index_reg[16]_i_1_n_0 ),
        .CO({\read_index_reg[20]_i_1_n_0 ,\read_index_reg[20]_i_1_n_1 ,\read_index_reg[20]_i_1_n_2 ,\read_index_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_index_reg[20]_i_1_n_4 ,\read_index_reg[20]_i_1_n_5 ,\read_index_reg[20]_i_1_n_6 ,\read_index_reg[20]_i_1_n_7 }),
        .S({\read_index[20]_i_2_n_0 ,\read_index[20]_i_3_n_0 ,\read_index[20]_i_4_n_0 ,\read_index[20]_i_5_n_0 }));
  FDRE \read_index_reg[21] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[20]_i_1_n_6 ),
        .Q(read_index_reg__0[21]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[22] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[20]_i_1_n_5 ),
        .Q(read_index_reg__0[22]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[23] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[20]_i_1_n_4 ),
        .Q(read_index_reg__0[23]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[24] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[24]_i_1_n_7 ),
        .Q(read_index_reg__0[24]),
        .R(\read_index[0]_i_1_n_0 ));
  CARRY4 \read_index_reg[24]_i_1 
       (.CI(\read_index_reg[20]_i_1_n_0 ),
        .CO({\read_index_reg[24]_i_1_n_0 ,\read_index_reg[24]_i_1_n_1 ,\read_index_reg[24]_i_1_n_2 ,\read_index_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_index_reg[24]_i_1_n_4 ,\read_index_reg[24]_i_1_n_5 ,\read_index_reg[24]_i_1_n_6 ,\read_index_reg[24]_i_1_n_7 }),
        .S({\read_index[24]_i_2_n_0 ,\read_index[24]_i_3_n_0 ,\read_index[24]_i_4_n_0 ,\read_index[24]_i_5_n_0 }));
  FDRE \read_index_reg[25] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[24]_i_1_n_6 ),
        .Q(read_index_reg__0[25]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[26] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[24]_i_1_n_5 ),
        .Q(read_index_reg__0[26]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[27] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[24]_i_1_n_4 ),
        .Q(read_index_reg__0[27]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[28] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[28]_i_1_n_7 ),
        .Q(read_index_reg__0[28]),
        .R(\read_index[0]_i_1_n_0 ));
  CARRY4 \read_index_reg[28]_i_1 
       (.CI(\read_index_reg[24]_i_1_n_0 ),
        .CO({\NLW_read_index_reg[28]_i_1_CO_UNCONNECTED [3],\read_index_reg[28]_i_1_n_1 ,\read_index_reg[28]_i_1_n_2 ,\read_index_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_index_reg[28]_i_1_n_4 ,\read_index_reg[28]_i_1_n_5 ,\read_index_reg[28]_i_1_n_6 ,\read_index_reg[28]_i_1_n_7 }),
        .S({\read_index[28]_i_2_n_0 ,\read_index[28]_i_3_n_0 ,\read_index[28]_i_4_n_0 ,\read_index[28]_i_5_n_0 }));
  FDRE \read_index_reg[29] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[28]_i_1_n_6 ),
        .Q(read_index_reg__0[29]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[2] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[0]_i_3_n_5 ),
        .Q(read_index_reg[2]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[30] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[28]_i_1_n_5 ),
        .Q(read_index_reg__0[30]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[31] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[28]_i_1_n_4 ),
        .Q(read_index_reg__0[31]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[3] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[0]_i_3_n_4 ),
        .Q(read_index_reg[3]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[4] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[4]_i_1_n_7 ),
        .Q(read_index_reg[4]),
        .R(\read_index[0]_i_1_n_0 ));
  CARRY4 \read_index_reg[4]_i_1 
       (.CI(\read_index_reg[0]_i_3_n_0 ),
        .CO({\read_index_reg[4]_i_1_n_0 ,\read_index_reg[4]_i_1_n_1 ,\read_index_reg[4]_i_1_n_2 ,\read_index_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_index_reg[4]_i_1_n_4 ,\read_index_reg[4]_i_1_n_5 ,\read_index_reg[4]_i_1_n_6 ,\read_index_reg[4]_i_1_n_7 }),
        .S({\read_index[4]_i_2_n_0 ,\read_index[4]_i_3_n_0 ,\read_index[4]_i_4_n_0 ,\read_index[4]_i_5_n_0 }));
  FDRE \read_index_reg[5] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[4]_i_1_n_6 ),
        .Q(read_index_reg[5]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[6] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[4]_i_1_n_5 ),
        .Q(read_index_reg[6]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[7] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[4]_i_1_n_4 ),
        .Q(read_index_reg[7]),
        .R(\read_index[0]_i_1_n_0 ));
  FDRE \read_index_reg[8] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[8]_i_1_n_7 ),
        .Q(read_index_reg[8]),
        .R(\read_index[0]_i_1_n_0 ));
  CARRY4 \read_index_reg[8]_i_1 
       (.CI(\read_index_reg[4]_i_1_n_0 ),
        .CO({\read_index_reg[8]_i_1_n_0 ,\read_index_reg[8]_i_1_n_1 ,\read_index_reg[8]_i_1_n_2 ,\read_index_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_index_reg[8]_i_1_n_4 ,\read_index_reg[8]_i_1_n_5 ,\read_index_reg[8]_i_1_n_6 ,\read_index_reg[8]_i_1_n_7 }),
        .S({\read_index[8]_i_2_n_0 ,\read_index[8]_i_3_n_0 ,\read_index[8]_i_4_n_0 ,\read_index[8]_i_5_n_0 }));
  FDRE \read_index_reg[9] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index_reg[8]_i_1_n_6 ),
        .Q(read_index_reg[9]),
        .R(\read_index[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    reads_done_i_1
       (.I0(m00_axi_rvalid),
        .I1(m00_axi_rready),
        .I2(reads_done1),
        .I3(reads_done),
        .O(reads_done_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    reads_done_i_10
       (.I0(read_index_reg__0[15]),
        .I1(read_index_reg__0[17]),
        .I2(read_index_reg__0[16]),
        .O(reads_done_i_10_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    reads_done_i_11
       (.I0(read_index_reg__0[12]),
        .I1(read_index_reg__0[14]),
        .I2(read_index_reg__0[13]),
        .O(reads_done_i_11_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    reads_done_i_12
       (.I0(read_index_reg[9]),
        .I1(read_index_reg__0[11]),
        .I2(read_index_reg__0[10]),
        .O(reads_done_i_12_n_0));
  LUT5 #(
    .INIT(32'h0000C009)) 
    reads_done_i_13
       (.I0(sel0[6]),
        .I1(read_index_reg[6]),
        .I2(read_index_reg[7]),
        .I3(\m00_axi_arlen[7] ),
        .I4(read_index_reg[8]),
        .O(reads_done_i_13_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    reads_done_i_14
       (.I0(\read_index[0]_i_22_n_0 ),
        .I1(read_index_reg[3]),
        .I2(read_index_reg[4]),
        .I3(\m00_axi_arlen[4] ),
        .I4(read_index_reg[5]),
        .I5(\m00_axi_awlen[5] ),
        .O(reads_done_i_14_n_0));
  LUT6 #(
    .INIT(64'h6000600000600006)) 
    reads_done_i_15
       (.I0(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .I1(read_index_reg[0]),
        .I2(read_index_reg[1]),
        .I3(\m00_axi_arlen[2] ),
        .I4(sel0[1]),
        .I5(read_index_reg[2]),
        .O(reads_done_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    reads_done_i_4
       (.I0(read_index_reg__0[31]),
        .I1(read_index_reg__0[30]),
        .O(reads_done_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    reads_done_i_5
       (.I0(read_index_reg__0[27]),
        .I1(read_index_reg__0[29]),
        .I2(read_index_reg__0[28]),
        .O(reads_done_i_5_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    reads_done_i_6
       (.I0(read_index_reg__0[24]),
        .I1(read_index_reg__0[26]),
        .I2(read_index_reg__0[25]),
        .O(reads_done_i_6_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    reads_done_i_8
       (.I0(read_index_reg__0[21]),
        .I1(read_index_reg__0[23]),
        .I2(read_index_reg__0[22]),
        .O(reads_done_i_8_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    reads_done_i_9
       (.I0(read_index_reg__0[18]),
        .I1(read_index_reg__0[20]),
        .I2(read_index_reg__0[19]),
        .O(reads_done_i_9_n_0));
  FDRE reads_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(reads_done_i_1_n_0),
        .Q(reads_done),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  CARRY4 reads_done_reg_i_2
       (.CI(reads_done_reg_i_3_n_0),
        .CO({NLW_reads_done_reg_i_2_CO_UNCONNECTED[3],reads_done1,reads_done_reg_i_2_n_2,reads_done_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_reads_done_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,reads_done_i_4_n_0,reads_done_i_5_n_0,reads_done_i_6_n_0}));
  CARRY4 reads_done_reg_i_3
       (.CI(reads_done_reg_i_7_n_0),
        .CO({reads_done_reg_i_3_n_0,reads_done_reg_i_3_n_1,reads_done_reg_i_3_n_2,reads_done_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_reads_done_reg_i_3_O_UNCONNECTED[3:0]),
        .S({reads_done_i_8_n_0,reads_done_i_9_n_0,reads_done_i_10_n_0,reads_done_i_11_n_0}));
  CARRY4 reads_done_reg_i_7
       (.CI(1'b0),
        .CO({reads_done_reg_i_7_n_0,reads_done_reg_i_7_n_1,reads_done_reg_i_7_n_2,reads_done_reg_i_7_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_reads_done_reg_i_7_O_UNCONNECTED[3:0]),
        .S({reads_done_i_12_n_0,reads_done_i_13_n_0,reads_done_i_14_n_0,reads_done_i_15_n_0}));
  CARRY4 redo1_carry
       (.CI(1'b0),
        .CO({redo1_carry_n_0,redo1_carry_n_1,redo1_carry_n_2,redo1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,redo1_carry_i_1_n_0,1'b0}),
        .O(NLW_redo1_carry_O_UNCONNECTED[3:0]),
        .S({redo1_carry_i_2_n_0,redo1_carry_i_3_n_0,redo1_carry_i_4_n_0,redo1_carry_i_5_n_0}));
  CARRY4 redo1_carry__0
       (.CI(redo1_carry_n_0),
        .CO({redo1_carry__0_n_0,redo1_carry__0_n_1,redo1_carry__0_n_2,redo1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,redo1_carry__0_i_1_n_0,1'b0}),
        .O(NLW_redo1_carry__0_O_UNCONNECTED[3:0]),
        .S({redo1_carry__0_i_2_n_0,redo1_carry__0_i_3_n_0,redo1_carry__0_i_4_n_0,redo1_carry__0_i_5_n_0}));
  LUT3 #(
    .INIT(8'h04)) 
    redo1_carry__0_i_1
       (.I0(\len_copy_reg_reg_n_0_[10] ),
        .I1(\m00_axi_arlen[7] ),
        .I2(\len_copy_reg_reg_n_0_[11] ),
        .O(redo1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    redo1_carry__0_i_2
       (.I0(\len_copy_reg_reg_n_0_[14] ),
        .I1(\len_copy_reg_reg_n_0_[15] ),
        .O(redo1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    redo1_carry__0_i_3
       (.I0(\len_copy_reg_reg_n_0_[12] ),
        .I1(\len_copy_reg_reg_n_0_[13] ),
        .O(redo1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h0B)) 
    redo1_carry__0_i_4
       (.I0(\len_copy_reg_reg_n_0_[10] ),
        .I1(\m00_axi_arlen[7] ),
        .I2(\len_copy_reg_reg_n_0_[11] ),
        .O(redo1_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h17)) 
    redo1_carry__0_i_5
       (.I0(\m00_axi_arlen[7] ),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .O(redo1_carry__0_i_5_n_0));
  CARRY4 redo1_carry__1
       (.CI(redo1_carry__0_n_0),
        .CO({redo1_carry__1_n_0,redo1_carry__1_n_1,redo1_carry__1_n_2,redo1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_redo1_carry__1_O_UNCONNECTED[3:0]),
        .S({redo1_carry__1_i_1_n_0,redo1_carry__1_i_2_n_0,redo1_carry__1_i_3_n_0,redo1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    redo1_carry__1_i_1
       (.I0(\len_copy_reg_reg_n_0_[22] ),
        .I1(\len_copy_reg_reg_n_0_[23] ),
        .O(redo1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    redo1_carry__1_i_2
       (.I0(\len_copy_reg_reg_n_0_[20] ),
        .I1(\len_copy_reg_reg_n_0_[21] ),
        .O(redo1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    redo1_carry__1_i_3
       (.I0(\len_copy_reg_reg_n_0_[18] ),
        .I1(\len_copy_reg_reg_n_0_[19] ),
        .O(redo1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    redo1_carry__1_i_4
       (.I0(\len_copy_reg_reg_n_0_[16] ),
        .I1(\len_copy_reg_reg_n_0_[17] ),
        .O(redo1_carry__1_i_4_n_0));
  CARRY4 redo1_carry__2
       (.CI(redo1_carry__1_n_0),
        .CO({redo1_carry__2_n_0,redo1_carry__2_n_1,redo1_carry__2_n_2,redo1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_redo1_carry__2_O_UNCONNECTED[3:0]),
        .S({redo1_carry__2_i_1_n_0,redo1_carry__2_i_2_n_0,redo1_carry__2_i_3_n_0,redo1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    redo1_carry__2_i_1
       (.I0(\len_copy_reg_reg_n_0_[31] ),
        .I1(\len_copy_reg_reg_n_0_[30] ),
        .O(redo1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    redo1_carry__2_i_2
       (.I0(\len_copy_reg_reg_n_0_[28] ),
        .I1(\len_copy_reg_reg_n_0_[29] ),
        .O(redo1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    redo1_carry__2_i_3
       (.I0(\len_copy_reg_reg_n_0_[26] ),
        .I1(\len_copy_reg_reg_n_0_[27] ),
        .O(redo1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    redo1_carry__2_i_4
       (.I0(\len_copy_reg_reg_n_0_[25] ),
        .I1(\len_copy_reg_reg_n_0_[24] ),
        .O(redo1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    redo1_carry_i_1
       (.I0(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .I1(\len_copy_reg_reg_n_0_[2] ),
        .O(redo1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h022F)) 
    redo1_carry_i_2
       (.I0(redo1_carry_i_6_n_0),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .O(redo1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h00005D555D555D55)) 
    redo1_carry_i_3
       (.I0(sel0[2]),
        .I1(redo1_carry_i_6_n_0),
        .I2(sel0[3]),
        .I3(redo1_carry_i_7_n_0),
        .I4(sel0[1]),
        .I5(\m00_axi_arlen[2] ),
        .O(redo1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000233333339)) 
    redo1_carry_i_4
       (.I0(\m00_axi_arlen[3]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\len_copy_reg_reg_n_0_[2] ),
        .O(redo1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    redo1_carry_i_5
       (.I0(\len_copy_reg_reg_n_0_[1] ),
        .I1(\len_copy_reg_reg_n_0_[0] ),
        .O(redo1_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h1)) 
    redo1_carry_i_6
       (.I0(\m00_axi_arlen[7] ),
        .I1(sel0[6]),
        .O(redo1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    redo1_carry_i_7
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .O(redo1_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'hFFAA0400)) 
    redo_i_1
       (.I0(mst_exec_state[0]),
        .I1(writes_done),
        .I2(redo1_carry__2_n_0),
        .I3(mst_exec_state[1]),
        .I4(redo_reg_n_0),
        .O(redo_i_1_n_0));
  FDRE redo_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(redo_i_1_n_0),
        .Q(redo_reg_n_0),
        .R(init_txn_ff_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    rnext_inferred_i_1
       (.I0(m00_axi_rvalid),
        .I1(m00_axi_rready),
        .O(rnext));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[0]_i_1 
       (.I0(\src_addr_reg_reg_n_0_[0] ),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [0]),
        .O(\src_addr_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[10]_i_1 
       (.I0(src_addr_reg0[10]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [10]),
        .O(\src_addr_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[11]_i_1 
       (.I0(src_addr_reg0[11]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [11]),
        .O(\src_addr_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[12]_i_1 
       (.I0(src_addr_reg0[12]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [12]),
        .O(\src_addr_reg[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[12]_i_3 
       (.I0(\src_addr_reg_reg_n_0_[12] ),
        .O(\src_addr_reg[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[12]_i_4 
       (.I0(\src_addr_reg_reg_n_0_[11] ),
        .O(\src_addr_reg[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \src_addr_reg[12]_i_5 
       (.I0(\src_addr_reg_reg_n_0_[10] ),
        .I1(\m00_axi_arlen[7] ),
        .O(\src_addr_reg[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \src_addr_reg[12]_i_6 
       (.I0(\src_addr_reg_reg_n_0_[9] ),
        .I1(axi_wlast3_carry_i_5_n_0),
        .O(\src_addr_reg[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[13]_i_1 
       (.I0(src_addr_reg0[13]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [13]),
        .O(\src_addr_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[14]_i_1 
       (.I0(src_addr_reg0[14]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [14]),
        .O(\src_addr_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[15]_i_1 
       (.I0(src_addr_reg0[15]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [15]),
        .O(\src_addr_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[16]_i_1 
       (.I0(src_addr_reg0[16]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [16]),
        .O(\src_addr_reg[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[16]_i_3 
       (.I0(\src_addr_reg_reg_n_0_[16] ),
        .O(\src_addr_reg[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[16]_i_4 
       (.I0(\src_addr_reg_reg_n_0_[15] ),
        .O(\src_addr_reg[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[16]_i_5 
       (.I0(\src_addr_reg_reg_n_0_[14] ),
        .O(\src_addr_reg[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[16]_i_6 
       (.I0(\src_addr_reg_reg_n_0_[13] ),
        .O(\src_addr_reg[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[17]_i_1 
       (.I0(src_addr_reg0[17]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [17]),
        .O(\src_addr_reg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[18]_i_1 
       (.I0(src_addr_reg0[18]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [18]),
        .O(\src_addr_reg[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[19]_i_1 
       (.I0(src_addr_reg0[19]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [19]),
        .O(\src_addr_reg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[1]_i_1 
       (.I0(src_addr_reg0[1]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [1]),
        .O(\src_addr_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[20]_i_1 
       (.I0(src_addr_reg0[20]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [20]),
        .O(\src_addr_reg[20]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[20]_i_3 
       (.I0(\src_addr_reg_reg_n_0_[20] ),
        .O(\src_addr_reg[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[20]_i_4 
       (.I0(\src_addr_reg_reg_n_0_[19] ),
        .O(\src_addr_reg[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[20]_i_5 
       (.I0(\src_addr_reg_reg_n_0_[18] ),
        .O(\src_addr_reg[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[20]_i_6 
       (.I0(\src_addr_reg_reg_n_0_[17] ),
        .O(\src_addr_reg[20]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[21]_i_1 
       (.I0(src_addr_reg0[21]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [21]),
        .O(\src_addr_reg[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[22]_i_1 
       (.I0(src_addr_reg0[22]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [22]),
        .O(\src_addr_reg[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[23]_i_1 
       (.I0(src_addr_reg0[23]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [23]),
        .O(\src_addr_reg[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[24]_i_1 
       (.I0(src_addr_reg0[24]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [24]),
        .O(\src_addr_reg[24]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[24]_i_3 
       (.I0(\src_addr_reg_reg_n_0_[24] ),
        .O(\src_addr_reg[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[24]_i_4 
       (.I0(\src_addr_reg_reg_n_0_[23] ),
        .O(\src_addr_reg[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[24]_i_5 
       (.I0(\src_addr_reg_reg_n_0_[22] ),
        .O(\src_addr_reg[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[24]_i_6 
       (.I0(\src_addr_reg_reg_n_0_[21] ),
        .O(\src_addr_reg[24]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[25]_i_1 
       (.I0(src_addr_reg0[25]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [25]),
        .O(\src_addr_reg[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[26]_i_1 
       (.I0(src_addr_reg0[26]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [26]),
        .O(\src_addr_reg[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[27]_i_1 
       (.I0(src_addr_reg0[27]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [27]),
        .O(\src_addr_reg[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[28]_i_1 
       (.I0(src_addr_reg0[28]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [28]),
        .O(\src_addr_reg[28]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[28]_i_3 
       (.I0(\src_addr_reg_reg_n_0_[28] ),
        .O(\src_addr_reg[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[28]_i_4 
       (.I0(\src_addr_reg_reg_n_0_[27] ),
        .O(\src_addr_reg[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[28]_i_5 
       (.I0(\src_addr_reg_reg_n_0_[26] ),
        .O(\src_addr_reg[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[28]_i_6 
       (.I0(\src_addr_reg_reg_n_0_[25] ),
        .O(\src_addr_reg[28]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[29]_i_1 
       (.I0(src_addr_reg0[29]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [29]),
        .O(\src_addr_reg[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[2]_i_1 
       (.I0(src_addr_reg0[2]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [2]),
        .O(\src_addr_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[30]_i_1 
       (.I0(src_addr_reg0[30]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [30]),
        .O(\src_addr_reg[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[31]_i_1 
       (.I0(src_addr_reg0[31]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [31]),
        .O(\src_addr_reg[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[31]_i_3 
       (.I0(\src_addr_reg_reg_n_0_[31] ),
        .O(\src_addr_reg[31]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[31]_i_4 
       (.I0(\src_addr_reg_reg_n_0_[30] ),
        .O(\src_addr_reg[31]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[31]_i_5 
       (.I0(\src_addr_reg_reg_n_0_[29] ),
        .O(\src_addr_reg[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[3]_i_1 
       (.I0(src_addr_reg0[3]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [3]),
        .O(\src_addr_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[4]_i_1 
       (.I0(src_addr_reg0[4]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [4]),
        .O(\src_addr_reg[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \src_addr_reg[4]_i_3 
       (.I0(\src_addr_reg_reg_n_0_[4] ),
        .I1(\m00_axi_arlen[2] ),
        .I2(sel0[1]),
        .O(\src_addr_reg[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA9AA)) 
    \src_addr_reg[4]_i_4 
       (.I0(\src_addr_reg_reg_n_0_[3] ),
        .I1(sel0[1]),
        .I2(\m00_axi_arlen[2] ),
        .I3(sel0[0]),
        .O(\src_addr_reg[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \src_addr_reg[4]_i_5 
       (.I0(\src_addr_reg_reg_n_0_[2] ),
        .I1(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .O(\src_addr_reg[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \src_addr_reg[4]_i_6 
       (.I0(\src_addr_reg_reg_n_0_[1] ),
        .O(\src_addr_reg[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[5]_i_1 
       (.I0(src_addr_reg0[5]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [5]),
        .O(\src_addr_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[6]_i_1 
       (.I0(src_addr_reg0[6]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [6]),
        .O(\src_addr_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[7]_i_1 
       (.I0(src_addr_reg0[7]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [7]),
        .O(\src_addr_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[8]_i_1 
       (.I0(src_addr_reg0[8]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [8]),
        .O(\src_addr_reg[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD02)) 
    \src_addr_reg[8]_i_3 
       (.I0(sel0[5]),
        .I1(\m00_axi_arlen[7] ),
        .I2(sel0[6]),
        .I3(\src_addr_reg_reg_n_0_[8] ),
        .O(\src_addr_reg[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \src_addr_reg[8]_i_4 
       (.I0(\src_addr_reg_reg_n_0_[7] ),
        .I1(\m00_axi_awlen[5] ),
        .I2(sel0[4]),
        .O(\src_addr_reg[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \src_addr_reg[8]_i_5 
       (.I0(\src_addr_reg_reg_n_0_[6] ),
        .I1(\m00_axi_arlen[4] ),
        .I2(sel0[3]),
        .O(\src_addr_reg[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hA6AA)) 
    \src_addr_reg[8]_i_6 
       (.I0(\src_addr_reg_reg_n_0_[5] ),
        .I1(\m00_axi_arlen[3]_INST_0_i_1_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .O(\src_addr_reg[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \src_addr_reg[9]_i_1 
       (.I0(src_addr_reg0[9]),
        .I1(mst_exec_state[1]),
        .I2(\slv_reg2_reg[31] [9]),
        .O(\src_addr_reg[9]_i_1_n_0 ));
  FDRE \src_addr_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[0]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[10] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[10]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[11] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[11]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[12] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[12]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \src_addr_reg_reg[12]_i_2 
       (.CI(\src_addr_reg_reg[8]_i_2_n_0 ),
        .CO({\src_addr_reg_reg[12]_i_2_n_0 ,\src_addr_reg_reg[12]_i_2_n_1 ,\src_addr_reg_reg[12]_i_2_n_2 ,\src_addr_reg_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\src_addr_reg_reg_n_0_[10] ,\src_addr_reg_reg_n_0_[9] }),
        .O(src_addr_reg0[12:9]),
        .S({\src_addr_reg[12]_i_3_n_0 ,\src_addr_reg[12]_i_4_n_0 ,\src_addr_reg[12]_i_5_n_0 ,\src_addr_reg[12]_i_6_n_0 }));
  FDRE \src_addr_reg_reg[13] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[13]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[14] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[14]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[15] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[15]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[16] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[16]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[16] ),
        .R(1'b0));
  CARRY4 \src_addr_reg_reg[16]_i_2 
       (.CI(\src_addr_reg_reg[12]_i_2_n_0 ),
        .CO({\src_addr_reg_reg[16]_i_2_n_0 ,\src_addr_reg_reg[16]_i_2_n_1 ,\src_addr_reg_reg[16]_i_2_n_2 ,\src_addr_reg_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(src_addr_reg0[16:13]),
        .S({\src_addr_reg[16]_i_3_n_0 ,\src_addr_reg[16]_i_4_n_0 ,\src_addr_reg[16]_i_5_n_0 ,\src_addr_reg[16]_i_6_n_0 }));
  FDRE \src_addr_reg_reg[17] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[17]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[18] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[18]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[19] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[19]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[1]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[20] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[20]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[20] ),
        .R(1'b0));
  CARRY4 \src_addr_reg_reg[20]_i_2 
       (.CI(\src_addr_reg_reg[16]_i_2_n_0 ),
        .CO({\src_addr_reg_reg[20]_i_2_n_0 ,\src_addr_reg_reg[20]_i_2_n_1 ,\src_addr_reg_reg[20]_i_2_n_2 ,\src_addr_reg_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(src_addr_reg0[20:17]),
        .S({\src_addr_reg[20]_i_3_n_0 ,\src_addr_reg[20]_i_4_n_0 ,\src_addr_reg[20]_i_5_n_0 ,\src_addr_reg[20]_i_6_n_0 }));
  FDRE \src_addr_reg_reg[21] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[21]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[22] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[22]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[23] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[23]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[24] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[24]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[24] ),
        .R(1'b0));
  CARRY4 \src_addr_reg_reg[24]_i_2 
       (.CI(\src_addr_reg_reg[20]_i_2_n_0 ),
        .CO({\src_addr_reg_reg[24]_i_2_n_0 ,\src_addr_reg_reg[24]_i_2_n_1 ,\src_addr_reg_reg[24]_i_2_n_2 ,\src_addr_reg_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(src_addr_reg0[24:21]),
        .S({\src_addr_reg[24]_i_3_n_0 ,\src_addr_reg[24]_i_4_n_0 ,\src_addr_reg[24]_i_5_n_0 ,\src_addr_reg[24]_i_6_n_0 }));
  FDRE \src_addr_reg_reg[25] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[25]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[26] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[26]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[27] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[27]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[28] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[28]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[28] ),
        .R(1'b0));
  CARRY4 \src_addr_reg_reg[28]_i_2 
       (.CI(\src_addr_reg_reg[24]_i_2_n_0 ),
        .CO({\src_addr_reg_reg[28]_i_2_n_0 ,\src_addr_reg_reg[28]_i_2_n_1 ,\src_addr_reg_reg[28]_i_2_n_2 ,\src_addr_reg_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(src_addr_reg0[28:25]),
        .S({\src_addr_reg[28]_i_3_n_0 ,\src_addr_reg[28]_i_4_n_0 ,\src_addr_reg[28]_i_5_n_0 ,\src_addr_reg[28]_i_6_n_0 }));
  FDRE \src_addr_reg_reg[29] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[29]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[2]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[30] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[30]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[31] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[31]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[31] ),
        .R(1'b0));
  CARRY4 \src_addr_reg_reg[31]_i_2 
       (.CI(\src_addr_reg_reg[28]_i_2_n_0 ),
        .CO({\NLW_src_addr_reg_reg[31]_i_2_CO_UNCONNECTED [3:2],\src_addr_reg_reg[31]_i_2_n_2 ,\src_addr_reg_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_src_addr_reg_reg[31]_i_2_O_UNCONNECTED [3],src_addr_reg0[31:29]}),
        .S({1'b0,\src_addr_reg[31]_i_3_n_0 ,\src_addr_reg[31]_i_4_n_0 ,\src_addr_reg[31]_i_5_n_0 }));
  FDRE \src_addr_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[3]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[4] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[4]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \src_addr_reg_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\src_addr_reg_reg[4]_i_2_n_0 ,\src_addr_reg_reg[4]_i_2_n_1 ,\src_addr_reg_reg[4]_i_2_n_2 ,\src_addr_reg_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\src_addr_reg_reg_n_0_[4] ,\src_addr_reg_reg_n_0_[3] ,\src_addr_reg_reg_n_0_[2] ,1'b0}),
        .O(src_addr_reg0[4:1]),
        .S({\src_addr_reg[4]_i_3_n_0 ,\src_addr_reg[4]_i_4_n_0 ,\src_addr_reg[4]_i_5_n_0 ,\src_addr_reg[4]_i_6_n_0 }));
  FDRE \src_addr_reg_reg[5] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[5]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[6] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[6]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[7] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[7]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \src_addr_reg_reg[8] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[8]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \src_addr_reg_reg[8]_i_2 
       (.CI(\src_addr_reg_reg[4]_i_2_n_0 ),
        .CO({\src_addr_reg_reg[8]_i_2_n_0 ,\src_addr_reg_reg[8]_i_2_n_1 ,\src_addr_reg_reg[8]_i_2_n_2 ,\src_addr_reg_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\src_addr_reg_reg_n_0_[8] ,\src_addr_reg_reg_n_0_[7] ,\src_addr_reg_reg_n_0_[6] ,\src_addr_reg_reg_n_0_[5] }),
        .O(src_addr_reg0[8:5]),
        .S({\src_addr_reg[8]_i_3_n_0 ,\src_addr_reg[8]_i_4_n_0 ,\src_addr_reg[8]_i_5_n_0 ,\src_addr_reg[8]_i_6_n_0 }));
  FDRE \src_addr_reg_reg[9] 
       (.C(m00_axi_aclk),
        .CE(src_addr_reg),
        .D(\src_addr_reg[9]_i_1_n_0 ),
        .Q(\src_addr_reg_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF0FF00000100)) 
    start_single_burst_read_i_1
       (.I0(burst_read_active),
        .I1(m00_axi_arvalid),
        .I2(mst_exec_state[1]),
        .I3(mst_exec_state[0]),
        .I4(reads_done),
        .I5(start_single_burst_read),
        .O(start_single_burst_read_i_1_n_0));
  FDRE start_single_burst_read_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(start_single_burst_read_i_1_n_0),
        .Q(start_single_burst_read),
        .R(init_txn_ff_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF0FF00000100)) 
    start_single_burst_write_i_1
       (.I0(burst_write_active),
        .I1(m00_axi_awvalid),
        .I2(mst_exec_state[0]),
        .I3(mst_exec_state[1]),
        .I4(writes_done),
        .I5(start_single_burst_write),
        .O(start_single_burst_write_i_1_n_0));
  FDRE start_single_burst_write_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(start_single_burst_write_i_1_n_0),
        .Q(start_single_burst_write),
        .R(init_txn_ff_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    wnext_inferred_i_1
       (.I0(m00_axi_wready),
        .I1(m00_axi_wvalid),
        .O(wnext));
  LUT3 #(
    .INIT(8'hFB)) 
    \write_index[0]_i_1 
       (.I0(start_single_burst_write),
        .I1(m00_axi_aresetn),
        .I2(init_txn_pulse),
        .O(\write_index[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \write_index[0]_i_10 
       (.I0(write_index_reg[30]),
        .I1(write_index_reg[31]),
        .O(\write_index[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \write_index[0]_i_11 
       (.I0(write_index_reg[29]),
        .I1(write_index_reg[27]),
        .I2(write_index_reg[28]),
        .O(\write_index[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \write_index[0]_i_12 
       (.I0(write_index_reg[26]),
        .I1(write_index_reg[24]),
        .I2(write_index_reg[25]),
        .O(\write_index[0]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \write_index[0]_i_14 
       (.I0(write_index_reg[23]),
        .I1(write_index_reg[21]),
        .I2(write_index_reg[22]),
        .O(\write_index[0]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \write_index[0]_i_15 
       (.I0(write_index_reg[20]),
        .I1(write_index_reg[18]),
        .I2(write_index_reg[19]),
        .O(\write_index[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \write_index[0]_i_16 
       (.I0(write_index_reg[17]),
        .I1(write_index_reg[15]),
        .I2(write_index_reg[16]),
        .O(\write_index[0]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \write_index[0]_i_17 
       (.I0(write_index_reg[14]),
        .I1(write_index_reg[12]),
        .I2(write_index_reg[13]),
        .O(\write_index[0]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \write_index[0]_i_18 
       (.I0(write_index_reg[11]),
        .I1(write_index_reg[9]),
        .I2(write_index_reg[10]),
        .O(\write_index[0]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h21200001)) 
    \write_index[0]_i_19 
       (.I0(write_index_reg[7]),
        .I1(write_index_reg[8]),
        .I2(\m00_axi_arlen[7] ),
        .I3(sel0[6]),
        .I4(write_index_reg[6]),
        .O(\write_index[0]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \write_index[0]_i_2 
       (.I0(wnext),
        .I1(write_index1),
        .O(write_index0));
  LUT6 #(
    .INIT(64'h09C00000000009C0)) 
    \write_index[0]_i_20 
       (.I0(sel0[3]),
        .I1(write_index_reg[3]),
        .I2(write_index_reg[4]),
        .I3(\m00_axi_arlen[3]_INST_0_i_1_n_0 ),
        .I4(write_index_reg[5]),
        .I5(\m00_axi_awlen[5] ),
        .O(\write_index[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h2828140000000014)) 
    \write_index[0]_i_21 
       (.I0(write_index_reg[2]),
        .I1(write_index_reg[0]),
        .I2(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .I3(sel0[1]),
        .I4(\m00_axi_arlen[2] ),
        .I5(write_index_reg[1]),
        .O(\write_index[0]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[0]_i_5 
       (.I0(write_index_reg[3]),
        .O(\write_index[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[0]_i_6 
       (.I0(write_index_reg[2]),
        .O(\write_index[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[0]_i_7 
       (.I0(write_index_reg[1]),
        .O(\write_index[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \write_index[0]_i_8 
       (.I0(write_index_reg[0]),
        .O(buffer_rd_addr1));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[12]_i_2 
       (.I0(write_index_reg[15]),
        .O(\write_index[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[12]_i_3 
       (.I0(write_index_reg[14]),
        .O(\write_index[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[12]_i_4 
       (.I0(write_index_reg[13]),
        .O(\write_index[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[12]_i_5 
       (.I0(write_index_reg[12]),
        .O(\write_index[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[16]_i_2 
       (.I0(write_index_reg[19]),
        .O(\write_index[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[16]_i_3 
       (.I0(write_index_reg[18]),
        .O(\write_index[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[16]_i_4 
       (.I0(write_index_reg[17]),
        .O(\write_index[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[16]_i_5 
       (.I0(write_index_reg[16]),
        .O(\write_index[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[20]_i_2 
       (.I0(write_index_reg[23]),
        .O(\write_index[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[20]_i_3 
       (.I0(write_index_reg[22]),
        .O(\write_index[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[20]_i_4 
       (.I0(write_index_reg[21]),
        .O(\write_index[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[20]_i_5 
       (.I0(write_index_reg[20]),
        .O(\write_index[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[24]_i_2 
       (.I0(write_index_reg[27]),
        .O(\write_index[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[24]_i_3 
       (.I0(write_index_reg[26]),
        .O(\write_index[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[24]_i_4 
       (.I0(write_index_reg[25]),
        .O(\write_index[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[24]_i_5 
       (.I0(write_index_reg[24]),
        .O(\write_index[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[28]_i_2 
       (.I0(write_index_reg[31]),
        .O(\write_index[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[28]_i_3 
       (.I0(write_index_reg[30]),
        .O(\write_index[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[28]_i_4 
       (.I0(write_index_reg[29]),
        .O(\write_index[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[28]_i_5 
       (.I0(write_index_reg[28]),
        .O(\write_index[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[4]_i_2 
       (.I0(write_index_reg[7]),
        .O(\write_index[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[4]_i_3 
       (.I0(write_index_reg[6]),
        .O(\write_index[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[4]_i_4 
       (.I0(write_index_reg[5]),
        .O(\write_index[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[4]_i_5 
       (.I0(write_index_reg[4]),
        .O(\write_index[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[8]_i_2 
       (.I0(write_index_reg[11]),
        .O(\write_index[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[8]_i_3 
       (.I0(write_index_reg[10]),
        .O(\write_index[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[8]_i_4 
       (.I0(write_index_reg[9]),
        .O(\write_index[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_index[8]_i_5 
       (.I0(write_index_reg[8]),
        .O(\write_index[8]_i_5_n_0 ));
  FDRE \write_index_reg[0] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[0]_i_3_n_7 ),
        .Q(write_index_reg[0]),
        .R(\write_index[0]_i_1_n_0 ));
  CARRY4 \write_index_reg[0]_i_13 
       (.CI(1'b0),
        .CO({\write_index_reg[0]_i_13_n_0 ,\write_index_reg[0]_i_13_n_1 ,\write_index_reg[0]_i_13_n_2 ,\write_index_reg[0]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_write_index_reg[0]_i_13_O_UNCONNECTED [3:0]),
        .S({\write_index[0]_i_18_n_0 ,\write_index[0]_i_19_n_0 ,\write_index[0]_i_20_n_0 ,\write_index[0]_i_21_n_0 }));
  CARRY4 \write_index_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\write_index_reg[0]_i_3_n_0 ,\write_index_reg[0]_i_3_n_1 ,\write_index_reg[0]_i_3_n_2 ,\write_index_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\write_index_reg[0]_i_3_n_4 ,\write_index_reg[0]_i_3_n_5 ,\write_index_reg[0]_i_3_n_6 ,\write_index_reg[0]_i_3_n_7 }),
        .S({\write_index[0]_i_5_n_0 ,\write_index[0]_i_6_n_0 ,\write_index[0]_i_7_n_0 ,buffer_rd_addr1}));
  CARRY4 \write_index_reg[0]_i_4 
       (.CI(\write_index_reg[0]_i_9_n_0 ),
        .CO({\NLW_write_index_reg[0]_i_4_CO_UNCONNECTED [3],write_index1,\write_index_reg[0]_i_4_n_2 ,\write_index_reg[0]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(\NLW_write_index_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,\write_index[0]_i_10_n_0 ,\write_index[0]_i_11_n_0 ,\write_index[0]_i_12_n_0 }));
  CARRY4 \write_index_reg[0]_i_9 
       (.CI(\write_index_reg[0]_i_13_n_0 ),
        .CO({\write_index_reg[0]_i_9_n_0 ,\write_index_reg[0]_i_9_n_1 ,\write_index_reg[0]_i_9_n_2 ,\write_index_reg[0]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_write_index_reg[0]_i_9_O_UNCONNECTED [3:0]),
        .S({\write_index[0]_i_14_n_0 ,\write_index[0]_i_15_n_0 ,\write_index[0]_i_16_n_0 ,\write_index[0]_i_17_n_0 }));
  FDRE \write_index_reg[10] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[8]_i_1_n_5 ),
        .Q(write_index_reg[10]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[11] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[8]_i_1_n_4 ),
        .Q(write_index_reg[11]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[12] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[12]_i_1_n_7 ),
        .Q(write_index_reg[12]),
        .R(\write_index[0]_i_1_n_0 ));
  CARRY4 \write_index_reg[12]_i_1 
       (.CI(\write_index_reg[8]_i_1_n_0 ),
        .CO({\write_index_reg[12]_i_1_n_0 ,\write_index_reg[12]_i_1_n_1 ,\write_index_reg[12]_i_1_n_2 ,\write_index_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_index_reg[12]_i_1_n_4 ,\write_index_reg[12]_i_1_n_5 ,\write_index_reg[12]_i_1_n_6 ,\write_index_reg[12]_i_1_n_7 }),
        .S({\write_index[12]_i_2_n_0 ,\write_index[12]_i_3_n_0 ,\write_index[12]_i_4_n_0 ,\write_index[12]_i_5_n_0 }));
  FDRE \write_index_reg[13] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[12]_i_1_n_6 ),
        .Q(write_index_reg[13]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[14] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[12]_i_1_n_5 ),
        .Q(write_index_reg[14]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[15] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[12]_i_1_n_4 ),
        .Q(write_index_reg[15]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[16] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[16]_i_1_n_7 ),
        .Q(write_index_reg[16]),
        .R(\write_index[0]_i_1_n_0 ));
  CARRY4 \write_index_reg[16]_i_1 
       (.CI(\write_index_reg[12]_i_1_n_0 ),
        .CO({\write_index_reg[16]_i_1_n_0 ,\write_index_reg[16]_i_1_n_1 ,\write_index_reg[16]_i_1_n_2 ,\write_index_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_index_reg[16]_i_1_n_4 ,\write_index_reg[16]_i_1_n_5 ,\write_index_reg[16]_i_1_n_6 ,\write_index_reg[16]_i_1_n_7 }),
        .S({\write_index[16]_i_2_n_0 ,\write_index[16]_i_3_n_0 ,\write_index[16]_i_4_n_0 ,\write_index[16]_i_5_n_0 }));
  FDRE \write_index_reg[17] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[16]_i_1_n_6 ),
        .Q(write_index_reg[17]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[18] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[16]_i_1_n_5 ),
        .Q(write_index_reg[18]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[19] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[16]_i_1_n_4 ),
        .Q(write_index_reg[19]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[1] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[0]_i_3_n_6 ),
        .Q(write_index_reg[1]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[20] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[20]_i_1_n_7 ),
        .Q(write_index_reg[20]),
        .R(\write_index[0]_i_1_n_0 ));
  CARRY4 \write_index_reg[20]_i_1 
       (.CI(\write_index_reg[16]_i_1_n_0 ),
        .CO({\write_index_reg[20]_i_1_n_0 ,\write_index_reg[20]_i_1_n_1 ,\write_index_reg[20]_i_1_n_2 ,\write_index_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_index_reg[20]_i_1_n_4 ,\write_index_reg[20]_i_1_n_5 ,\write_index_reg[20]_i_1_n_6 ,\write_index_reg[20]_i_1_n_7 }),
        .S({\write_index[20]_i_2_n_0 ,\write_index[20]_i_3_n_0 ,\write_index[20]_i_4_n_0 ,\write_index[20]_i_5_n_0 }));
  FDRE \write_index_reg[21] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[20]_i_1_n_6 ),
        .Q(write_index_reg[21]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[22] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[20]_i_1_n_5 ),
        .Q(write_index_reg[22]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[23] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[20]_i_1_n_4 ),
        .Q(write_index_reg[23]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[24] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[24]_i_1_n_7 ),
        .Q(write_index_reg[24]),
        .R(\write_index[0]_i_1_n_0 ));
  CARRY4 \write_index_reg[24]_i_1 
       (.CI(\write_index_reg[20]_i_1_n_0 ),
        .CO({\write_index_reg[24]_i_1_n_0 ,\write_index_reg[24]_i_1_n_1 ,\write_index_reg[24]_i_1_n_2 ,\write_index_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_index_reg[24]_i_1_n_4 ,\write_index_reg[24]_i_1_n_5 ,\write_index_reg[24]_i_1_n_6 ,\write_index_reg[24]_i_1_n_7 }),
        .S({\write_index[24]_i_2_n_0 ,\write_index[24]_i_3_n_0 ,\write_index[24]_i_4_n_0 ,\write_index[24]_i_5_n_0 }));
  FDRE \write_index_reg[25] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[24]_i_1_n_6 ),
        .Q(write_index_reg[25]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[26] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[24]_i_1_n_5 ),
        .Q(write_index_reg[26]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[27] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[24]_i_1_n_4 ),
        .Q(write_index_reg[27]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[28] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[28]_i_1_n_7 ),
        .Q(write_index_reg[28]),
        .R(\write_index[0]_i_1_n_0 ));
  CARRY4 \write_index_reg[28]_i_1 
       (.CI(\write_index_reg[24]_i_1_n_0 ),
        .CO({\NLW_write_index_reg[28]_i_1_CO_UNCONNECTED [3],\write_index_reg[28]_i_1_n_1 ,\write_index_reg[28]_i_1_n_2 ,\write_index_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_index_reg[28]_i_1_n_4 ,\write_index_reg[28]_i_1_n_5 ,\write_index_reg[28]_i_1_n_6 ,\write_index_reg[28]_i_1_n_7 }),
        .S({\write_index[28]_i_2_n_0 ,\write_index[28]_i_3_n_0 ,\write_index[28]_i_4_n_0 ,\write_index[28]_i_5_n_0 }));
  FDRE \write_index_reg[29] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[28]_i_1_n_6 ),
        .Q(write_index_reg[29]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[2] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[0]_i_3_n_5 ),
        .Q(write_index_reg[2]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[30] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[28]_i_1_n_5 ),
        .Q(write_index_reg[30]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[31] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[28]_i_1_n_4 ),
        .Q(write_index_reg[31]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[3] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[0]_i_3_n_4 ),
        .Q(write_index_reg[3]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[4] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[4]_i_1_n_7 ),
        .Q(write_index_reg[4]),
        .R(\write_index[0]_i_1_n_0 ));
  CARRY4 \write_index_reg[4]_i_1 
       (.CI(\write_index_reg[0]_i_3_n_0 ),
        .CO({\write_index_reg[4]_i_1_n_0 ,\write_index_reg[4]_i_1_n_1 ,\write_index_reg[4]_i_1_n_2 ,\write_index_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_index_reg[4]_i_1_n_4 ,\write_index_reg[4]_i_1_n_5 ,\write_index_reg[4]_i_1_n_6 ,\write_index_reg[4]_i_1_n_7 }),
        .S({\write_index[4]_i_2_n_0 ,\write_index[4]_i_3_n_0 ,\write_index[4]_i_4_n_0 ,\write_index[4]_i_5_n_0 }));
  FDRE \write_index_reg[5] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[4]_i_1_n_6 ),
        .Q(write_index_reg[5]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[6] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[4]_i_1_n_5 ),
        .Q(write_index_reg[6]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[7] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[4]_i_1_n_4 ),
        .Q(write_index_reg[7]),
        .R(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[8] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[8]_i_1_n_7 ),
        .Q(write_index_reg[8]),
        .R(\write_index[0]_i_1_n_0 ));
  CARRY4 \write_index_reg[8]_i_1 
       (.CI(\write_index_reg[4]_i_1_n_0 ),
        .CO({\write_index_reg[8]_i_1_n_0 ,\write_index_reg[8]_i_1_n_1 ,\write_index_reg[8]_i_1_n_2 ,\write_index_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_index_reg[8]_i_1_n_4 ,\write_index_reg[8]_i_1_n_5 ,\write_index_reg[8]_i_1_n_6 ,\write_index_reg[8]_i_1_n_7 }),
        .S({\write_index[8]_i_2_n_0 ,\write_index[8]_i_3_n_0 ,\write_index[8]_i_4_n_0 ,\write_index[8]_i_5_n_0 }));
  FDRE \write_index_reg[9] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\write_index_reg[8]_i_1_n_6 ),
        .Q(write_index_reg[9]),
        .R(\write_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    writes_done_i_1
       (.I0(m00_axi_bvalid),
        .I1(m00_axi_bready),
        .I2(writes_done1),
        .I3(writes_done),
        .O(writes_done_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    writes_done_i_10
       (.I0(write_index_reg[17]),
        .I1(write_index_reg[15]),
        .I2(write_index_reg[16]),
        .O(writes_done_i_10_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    writes_done_i_11
       (.I0(write_index_reg[14]),
        .I1(write_index_reg[12]),
        .I2(write_index_reg[13]),
        .O(writes_done_i_11_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    writes_done_i_12
       (.I0(write_index_reg[11]),
        .I1(write_index_reg[9]),
        .I2(write_index_reg[10]),
        .O(writes_done_i_12_n_0));
  LUT5 #(
    .INIT(32'h21200001)) 
    writes_done_i_13
       (.I0(write_index_reg[7]),
        .I1(write_index_reg[8]),
        .I2(\m00_axi_arlen[7] ),
        .I3(sel0[6]),
        .I4(write_index_reg[6]),
        .O(writes_done_i_13_n_0));
  LUT6 #(
    .INIT(64'h09C00000000009C0)) 
    writes_done_i_14
       (.I0(sel0[3]),
        .I1(write_index_reg[3]),
        .I2(write_index_reg[4]),
        .I3(\m00_axi_arlen[3]_INST_0_i_1_n_0 ),
        .I4(write_index_reg[5]),
        .I5(\m00_axi_awlen[5] ),
        .O(writes_done_i_14_n_0));
  LUT6 #(
    .INIT(64'h2828140000000014)) 
    writes_done_i_15
       (.I0(write_index_reg[2]),
        .I1(write_index_reg[0]),
        .I2(\m00_axi_arlen[0]_INST_0_i_1_n_0 ),
        .I3(sel0[1]),
        .I4(\m00_axi_arlen[2] ),
        .I5(write_index_reg[1]),
        .O(writes_done_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    writes_done_i_4
       (.I0(write_index_reg[30]),
        .I1(write_index_reg[31]),
        .O(writes_done_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    writes_done_i_5
       (.I0(write_index_reg[29]),
        .I1(write_index_reg[27]),
        .I2(write_index_reg[28]),
        .O(writes_done_i_5_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    writes_done_i_6
       (.I0(write_index_reg[26]),
        .I1(write_index_reg[24]),
        .I2(write_index_reg[25]),
        .O(writes_done_i_6_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    writes_done_i_8
       (.I0(write_index_reg[23]),
        .I1(write_index_reg[21]),
        .I2(write_index_reg[22]),
        .O(writes_done_i_8_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    writes_done_i_9
       (.I0(write_index_reg[20]),
        .I1(write_index_reg[18]),
        .I2(write_index_reg[19]),
        .O(writes_done_i_9_n_0));
  FDRE writes_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  CARRY4 writes_done_reg_i_2
       (.CI(writes_done_reg_i_3_n_0),
        .CO({NLW_writes_done_reg_i_2_CO_UNCONNECTED[3],writes_done1,writes_done_reg_i_2_n_2,writes_done_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_writes_done_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,writes_done_i_4_n_0,writes_done_i_5_n_0,writes_done_i_6_n_0}));
  CARRY4 writes_done_reg_i_3
       (.CI(writes_done_reg_i_7_n_0),
        .CO({writes_done_reg_i_3_n_0,writes_done_reg_i_3_n_1,writes_done_reg_i_3_n_2,writes_done_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_writes_done_reg_i_3_O_UNCONNECTED[3:0]),
        .S({writes_done_i_8_n_0,writes_done_i_9_n_0,writes_done_i_10_n_0,writes_done_i_11_n_0}));
  CARRY4 writes_done_reg_i_7
       (.CI(1'b0),
        .CO({writes_done_reg_i_7_n_0,writes_done_reg_i_7_n_1,writes_done_reg_i_7_n_2,writes_done_reg_i_7_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_writes_done_reg_i_7_O_UNCONNECTED[3:0]),
        .S({writes_done_i_12_n_0,writes_done_i_13_n_0,writes_done_i_14_n_0,writes_done_i_15_n_0}));
endmodule

(* ORIG_REF_NAME = "my_dma_v1_0_S00_AXI" *) 
module lab4_my_dma_0_0_my_dma_v1_0_S00_AXI
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rvalid,
    s00_axi_bvalid,
    Q,
    \axi_rdata_reg[31]_0 ,
    \axi_rdata_reg[31]_1 ,
    hw_active,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wstrb,
    hw_done,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output [31:0]Q;
  output [31:0]\axi_rdata_reg[31]_0 ;
  output [31:0]\axi_rdata_reg[31]_1 ;
  output hw_active;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input hw_done;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;

  wire [31:0]Q;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_bvalid_i_1_n_0;
  wire [31:0]\axi_rdata_reg[31]_0 ;
  wire [31:0]\axi_rdata_reg[31]_1 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire hw_active;
  wire hw_done;
  wire init_txn_ff_i_10_n_0;
  wire init_txn_ff_i_3_n_0;
  wire init_txn_ff_i_4_n_0;
  wire init_txn_ff_i_5_n_0;
  wire init_txn_ff_i_6_n_0;
  wire init_txn_ff_i_7_n_0;
  wire init_txn_ff_i_8_n_0;
  wire init_txn_ff_i_9_n_0;
  wire [1:0]p_0_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
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
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[31]_i_2_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awready),
        .I4(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awready),
        .I4(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(s00_axi_awready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .I3(s00_axi_awready),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg0[0]),
        .I1(Q[0]),
        .I2(\axi_rdata_reg[31]_0 [0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_rdata_reg[31]_1 [0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[10]_i_1 
       (.I0(Q[10]),
        .I1(\axi_rdata_reg[31]_0 [10]),
        .I2(slv_reg0[10]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_1 [10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg0[11]),
        .I1(Q[11]),
        .I2(\axi_rdata_reg[31]_1 [11]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_0 [11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg0[12]),
        .I1(Q[12]),
        .I2(\axi_rdata_reg[31]_1 [12]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_0 [12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg0[13]),
        .I1(Q[13]),
        .I2(\axi_rdata_reg[31]_0 [13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_rdata_reg[31]_1 [13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[14]_i_1 
       (.I0(Q[14]),
        .I1(\axi_rdata_reg[31]_0 [14]),
        .I2(slv_reg0[14]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_1 [14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[15]_i_1 
       (.I0(Q[15]),
        .I1(\axi_rdata_reg[31]_0 [15]),
        .I2(slv_reg0[15]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_1 [15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg0[16]),
        .I1(Q[16]),
        .I2(\axi_rdata_reg[31]_0 [16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_rdata_reg[31]_1 [16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[17]_i_1 
       (.I0(Q[17]),
        .I1(\axi_rdata_reg[31]_0 [17]),
        .I2(slv_reg0[17]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_1 [17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[18]_i_1 
       (.I0(Q[18]),
        .I1(\axi_rdata_reg[31]_0 [18]),
        .I2(slv_reg0[18]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_1 [18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg0[19]),
        .I1(Q[19]),
        .I2(\axi_rdata_reg[31]_1 [19]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_0 [19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[1]_i_1 
       (.I0(Q[1]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(slv_reg0[1]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_1 [1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg0[20]),
        .I1(Q[20]),
        .I2(\axi_rdata_reg[31]_1 [20]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_0 [20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg0[21]),
        .I1(Q[21]),
        .I2(\axi_rdata_reg[31]_0 [21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_rdata_reg[31]_1 [21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[22]_i_1 
       (.I0(Q[22]),
        .I1(\axi_rdata_reg[31]_0 [22]),
        .I2(slv_reg0[22]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_1 [22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[23]_i_1 
       (.I0(Q[23]),
        .I1(\axi_rdata_reg[31]_0 [23]),
        .I2(slv_reg0[23]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_1 [23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg0[24]),
        .I1(Q[24]),
        .I2(\axi_rdata_reg[31]_0 [24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_rdata_reg[31]_1 [24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[25]_i_1 
       (.I0(Q[25]),
        .I1(\axi_rdata_reg[31]_0 [25]),
        .I2(slv_reg0[25]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_1 [25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[26]_i_1 
       (.I0(Q[26]),
        .I1(\axi_rdata_reg[31]_0 [26]),
        .I2(slv_reg0[26]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_1 [26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg0[27]),
        .I1(Q[27]),
        .I2(\axi_rdata_reg[31]_1 [27]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_0 [27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg0[28]),
        .I1(Q[28]),
        .I2(\axi_rdata_reg[31]_1 [28]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_0 [28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg0[29]),
        .I1(Q[29]),
        .I2(\axi_rdata_reg[31]_0 [29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_rdata_reg[31]_1 [29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[2]_i_1 
       (.I0(Q[2]),
        .I1(\axi_rdata_reg[31]_0 [2]),
        .I2(slv_reg0[2]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_1 [2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[30]_i_1 
       (.I0(Q[30]),
        .I1(\axi_rdata_reg[31]_0 [30]),
        .I2(slv_reg0[30]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_1 [30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg0[31]),
        .I1(Q[31]),
        .I2(\axi_rdata_reg[31]_0 [31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_rdata_reg[31]_1 [31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg0[3]),
        .I1(Q[3]),
        .I2(\axi_rdata_reg[31]_1 [3]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_0 [3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg0[4]),
        .I1(Q[4]),
        .I2(\axi_rdata_reg[31]_1 [4]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_0 [4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg0[5]),
        .I1(Q[5]),
        .I2(\axi_rdata_reg[31]_0 [5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_rdata_reg[31]_1 [5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[6]_i_1 
       (.I0(Q[6]),
        .I1(\axi_rdata_reg[31]_0 [6]),
        .I2(slv_reg0[6]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_1 [6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[7]_i_1 
       (.I0(Q[7]),
        .I1(\axi_rdata_reg[31]_0 [7]),
        .I2(slv_reg0[7]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_1 [7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg0[8]),
        .I1(Q[8]),
        .I2(\axi_rdata_reg[31]_0 [8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_rdata_reg[31]_1 [8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[9]_i_1 
       (.I0(Q[9]),
        .I1(\axi_rdata_reg[31]_0 [9]),
        .I2(slv_reg0[9]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[31]_1 [9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
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
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(s00_axi_rvalid),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    init_txn_ff_i_10
       (.I0(slv_reg0[17]),
        .I1(slv_reg0[16]),
        .I2(slv_reg0[19]),
        .I3(slv_reg0[18]),
        .O(init_txn_ff_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    init_txn_ff_i_2
       (.I0(init_txn_ff_i_3_n_0),
        .I1(init_txn_ff_i_4_n_0),
        .I2(init_txn_ff_i_5_n_0),
        .I3(init_txn_ff_i_6_n_0),
        .O(hw_active));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    init_txn_ff_i_3
       (.I0(slv_reg0[8]),
        .I1(slv_reg0[11]),
        .I2(slv_reg0[9]),
        .I3(slv_reg0[10]),
        .I4(init_txn_ff_i_7_n_0),
        .O(init_txn_ff_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    init_txn_ff_i_4
       (.I0(slv_reg0[5]),
        .I1(slv_reg0[6]),
        .I2(slv_reg0[4]),
        .I3(slv_reg0[7]),
        .I4(init_txn_ff_i_8_n_0),
        .O(init_txn_ff_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    init_txn_ff_i_5
       (.I0(slv_reg0[24]),
        .I1(slv_reg0[25]),
        .I2(slv_reg0[26]),
        .I3(slv_reg0[27]),
        .I4(init_txn_ff_i_9_n_0),
        .O(init_txn_ff_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    init_txn_ff_i_6
       (.I0(slv_reg0[20]),
        .I1(slv_reg0[23]),
        .I2(slv_reg0[21]),
        .I3(slv_reg0[22]),
        .I4(init_txn_ff_i_10_n_0),
        .O(init_txn_ff_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    init_txn_ff_i_7
       (.I0(slv_reg0[14]),
        .I1(slv_reg0[13]),
        .I2(slv_reg0[15]),
        .I3(slv_reg0[12]),
        .O(init_txn_ff_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    init_txn_ff_i_8
       (.I0(slv_reg0[1]),
        .I1(slv_reg0[0]),
        .I2(slv_reg0[3]),
        .I3(slv_reg0[2]),
        .O(init_txn_ff_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    init_txn_ff_i_9
       (.I0(slv_reg0[29]),
        .I1(slv_reg0[28]),
        .I2(slv_reg0[31]),
        .I3(slv_reg0[30]),
        .O(init_txn_ff_i_9_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    \slv_reg0[15]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[1]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \slv_reg0[23]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[2]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAFFFFFFFF)) 
    \slv_reg0[31]_i_1 
       (.I0(hw_done),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_wready),
        .I4(s00_axi_awready),
        .I5(s00_axi_aresetn),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \slv_reg0[31]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[3]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \slv_reg0[7]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[0]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg1[15]_i_1 
       (.I0(p_0_in[1]),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg1[23]_i_1 
       (.I0(p_0_in[1]),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg1[31]_i_1 
       (.I0(p_0_in[1]),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg1[7]_i_1 
       (.I0(p_0_in[1]),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(Q[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(Q[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(Q[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(Q[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(Q[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(Q[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(Q[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(Q[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(Q[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(Q[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(Q[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(Q[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(Q[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(Q[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(Q[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(Q[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(Q[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(Q[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(Q[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(Q[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(Q[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(Q[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(Q[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(Q[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(Q[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(Q[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(Q[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(Q[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(Q[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(Q[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(Q[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(Q[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg2[15]_i_1 
       (.I0(p_0_in[1]),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg2[23]_i_1 
       (.I0(p_0_in[1]),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg2[31]_i_1 
       (.I0(p_0_in[1]),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg2[7]_i_1 
       (.I0(p_0_in[1]),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[31]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_rdata_reg[31]_0 [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_rdata_reg[31]_0 [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_rdata_reg[31]_0 [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_rdata_reg[31]_0 [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_rdata_reg[31]_0 [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_rdata_reg[31]_0 [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_rdata_reg[31]_0 [16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_rdata_reg[31]_0 [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_rdata_reg[31]_0 [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_rdata_reg[31]_0 [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[31]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_rdata_reg[31]_0 [20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_rdata_reg[31]_0 [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_rdata_reg[31]_0 [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_rdata_reg[31]_0 [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_rdata_reg[31]_0 [24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_rdata_reg[31]_0 [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_rdata_reg[31]_0 [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_rdata_reg[31]_0 [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_rdata_reg[31]_0 [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_rdata_reg[31]_0 [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_rdata_reg[31]_0 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_rdata_reg[31]_0 [30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_rdata_reg[31]_0 [31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_rdata_reg[31]_0 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_rdata_reg[31]_0 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_rdata_reg[31]_0 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_rdata_reg[31]_0 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_rdata_reg[31]_0 [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_rdata_reg[31]_0 [8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_rdata_reg[31]_0 [9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg3[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg3[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg3[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \slv_reg3[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .I3(s00_axi_awready),
        .O(\slv_reg3[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg3[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[31]_1 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_rdata_reg[31]_1 [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_rdata_reg[31]_1 [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_rdata_reg[31]_1 [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_rdata_reg[31]_1 [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_rdata_reg[31]_1 [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_rdata_reg[31]_1 [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_rdata_reg[31]_1 [16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_rdata_reg[31]_1 [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_rdata_reg[31]_1 [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_rdata_reg[31]_1 [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[31]_1 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_rdata_reg[31]_1 [20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_rdata_reg[31]_1 [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_rdata_reg[31]_1 [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_rdata_reg[31]_1 [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_rdata_reg[31]_1 [24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_rdata_reg[31]_1 [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_rdata_reg[31]_1 [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_rdata_reg[31]_1 [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_rdata_reg[31]_1 [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_rdata_reg[31]_1 [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_rdata_reg[31]_1 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_rdata_reg[31]_1 [30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_rdata_reg[31]_1 [31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_rdata_reg[31]_1 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_rdata_reg[31]_1 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_rdata_reg[31]_1 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_rdata_reg[31]_1 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_rdata_reg[31]_1 [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_rdata_reg[31]_1 [8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_rdata_reg[31]_1 [9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    slv_reg_rden
       (.I0(s00_axi_rvalid),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .O(slv_reg_rden__0));
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
