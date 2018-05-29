`timescale 1 ns / 1 ps
//    module bram #(
//        parameter ADDR_WIDTH = 5,
//        parameter DATA_WIDTH = 32
//    ) (
//        input wire clk,
//        input wire [ADDR_WIDTH - 1 : 0] addr,
//        input wire [DATA_WIDTH - 1 : 0] wr_data,
//        input wire wr_en,
//        output wire [DATA_WIDTH - 1 : 0] rd_data
//    );
//        reg [DATA_WIDTH - 1 : 0] mem [(1 << ADDR_WIDTH) - 1 : 0];
//        reg [DATA_WIDTH - 1 : 0] rd_data_reg;
//        assign rd_data = rd_data_reg;
//        always @(posedge clk) begin
//            if(wr_en) begin
//                rd_data_reg <= wr_data;
//                mem[addr] <= wr_data;
//            end else begin
//                rd_data_reg <= mem[addr];
//            end 
//        end
//    endmodule
    
    module calc_burst_length(
        input wire [32 - 1 : 0] size,
        output wire [32 - 1 : 0] burst_length
    );
        reg [32 - 1 : 0] burst_length_reg;
        assign burst_length = burst_length_reg;
        always @(*) begin
			if(size[31 : 8]) begin
				burst_length_reg <= 256;
			end else if(size[7]) begin
				burst_length_reg <= 128;
			end else if(size[6]) begin
				burst_length_reg <= 64;
			end else if(size[5]) begin
				burst_length_reg <= 32;
            end else if(size[4]) begin
                burst_length_reg <= 16;
            end else if(size[3]) begin
                burst_length_reg <= 8;
            end else if(size[2]) begin
                burst_length_reg <= 4;
            end else if(size[1]) begin
                burst_length_reg <= 2;
            end else if(size[0]) begin
                burst_length_reg <= 1;
            end else begin
                burst_length_reg <= 1;
            end
        end
    endmodule
    
 	module full_search_v1_0_M00_AXI #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Base address of targeted slave
		parameter  C_M_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		// Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
//		parameter integer C_M_AXI_BURST_LEN	= 16,
		// Thread ID Width
		parameter integer C_M_AXI_ID_WIDTH	= 1,
		// Width of Address Bus
		parameter integer C_M_AXI_ADDR_WIDTH	= 32,
		// Width of Data Bus
		parameter integer C_M_AXI_DATA_WIDTH	= 32,
		// Width of User Write Address Bus
		parameter integer C_M_AXI_AWUSER_WIDTH	= 0,
		// Width of User Read Address Bus
		parameter integer C_M_AXI_ARUSER_WIDTH	= 0,
		// Width of User Write Data Bus
		parameter integer C_M_AXI_WUSER_WIDTH	= 0,
		// Width of User Read Data Bus
		parameter integer C_M_AXI_RUSER_WIDTH	= 0,
		// Width of User Response Bus
		parameter integer C_M_AXI_BUSER_WIDTH	= 0
	)
	(
		// Users to add ports here
        input wire hw_active,
        output wire hw_done,
        input wire [3 - 1 : 0] action,
        input wire dir,
        input wire [C_M_AXI_DATA_WIDTH - 1 : 0] prev_addr,
        output wire [12 - 1 : 0] prev_wr_addr,
        output wire [256 - 1 : 0] prev_wr_data,
        output wire [32 - 1 : 0] prev_wr_en,
        input wire [6 - 1 : 0] prev_num,
        input wire [C_M_AXI_DATA_WIDTH - 1 : 0] curr_addr,
//        output wire [12 - 1 : 0] curr_wr_addr,
//        output wire [256 - 1 : 0] curr_wr_data,
//        output wire [32 - 1 : 0] curr_wr_en,
        output reg [192 * 16 - 1 : 0] curr_data,
        input wire [6 - 1 : 0] curr_num, 
        input wire [C_M_AXI_DATA_WIDTH - 1 : 0] mvx_addr,
        input wire [C_M_AXI_DATA_WIDTH - 1 : 0] mvy_addr,
        input wire [C_M_AXI_DATA_WIDTH - 1 : 0] sad_addr, 
        output reg [14 - 1 : 0] mvx_rd_addr,
        output reg [14 - 1 : 0] mvy_rd_addr,
        output reg [14 - 1 : 0] sad_rd_addr,
        input wire [32 - 1 : 0] mvx_rd_data,
        input wire [32 - 1 : 0] mvy_rd_data,
        input wire [32 - 1 : 0] sad_rd_data,
//        input wire [C_M_AXI_DATA_WIDTH - 1 : 0] src_addr,
//        input wire [C_M_AXI_DATA_WIDTH - 1 : 0] dst_addr,
//        input wire [C_M_AXI_DATA_WIDTH - 1 : 0] len_copy,
//        input wire [C_M_AXI_DATA_WIDTH - 1 : 0] burst_length,
		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal.
		input wire  M_AXI_ACLK,
		// Global Reset Singal. This Signal is Active Low
		input wire  M_AXI_ARESETN,
		// Master Interface Write Address ID
		output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_AWID,
		// Master Interface Write Address
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR,
		// Burst length. The burst length gives the exact number of transfers in a burst
		output wire [7 : 0] M_AXI_AWLEN,
		// Burst size. This signal indicates the size of each transfer in the burst
		output wire [2 : 0] M_AXI_AWSIZE,
		// Burst type. The burst type and the size information, 
    // determine how the address for each transfer within the burst is calculated.
		output wire [1 : 0] M_AXI_AWBURST,
		// Lock type. Provides additional information about the
    // atomic characteristics of the transfer.
		output wire  M_AXI_AWLOCK,
		// Memory type. This signal indicates how transactions
    // are required to progress through a system.
		output wire [3 : 0] M_AXI_AWCACHE,
		// Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_AWPROT,
		// Quality of Service, QoS identifier sent for each write transaction.
		output wire [3 : 0] M_AXI_AWQOS,
		// Optional User-defined signal in the write address channel.
		output wire [C_M_AXI_AWUSER_WIDTH-1 : 0] M_AXI_AWUSER,
		// Write address valid. This signal indicates that
    // the channel is signaling valid write address and control information.
		output wire  M_AXI_AWVALID,
		// Write address ready. This signal indicates that
    // the slave is ready to accept an address and associated control signals
		input wire  M_AXI_AWREADY,
		// Master Interface Write Data.
		output wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA,
		// Write strobes. This signal indicates which byte
    // lanes hold valid data. There is one write strobe
    // bit for each eight bits of the write data bus.
		output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
		// Write last. This signal indicates the last transfer in a write burst.
		output wire  M_AXI_WLAST,
		// Optional User-defined signal in the write data channel.
		output wire [C_M_AXI_WUSER_WIDTH-1 : 0] M_AXI_WUSER,
		// Write valid. This signal indicates that valid write
    // data and strobes are available
		output wire  M_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    // can accept the write data.
		input wire  M_AXI_WREADY,
		// Master Interface Write Response.
		input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_BID,
		// Write response. This signal indicates the status of the write transaction.
		input wire [1 : 0] M_AXI_BRESP,
		// Optional User-defined signal in the write response channel
		input wire [C_M_AXI_BUSER_WIDTH-1 : 0] M_AXI_BUSER,
		// Write response valid. This signal indicates that the
    // channel is signaling a valid write response.
		input wire  M_AXI_BVALID,
		// Response ready. This signal indicates that the master
    // can accept a write response.
		output wire  M_AXI_BREADY,
		// Master Interface Read Address.
		output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_ARID,
		// Read address. This signal indicates the initial
    // address of a read burst transaction.
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,
		// Burst length. The burst length gives the exact number of transfers in a burst
		output wire [7 : 0] M_AXI_ARLEN,
		// Burst size. This signal indicates the size of each transfer in the burst
		output wire [2 : 0] M_AXI_ARSIZE,
		// Burst type. The burst type and the size information, 
    // determine how the address for each transfer within the burst is calculated.
		output wire [1 : 0] M_AXI_ARBURST,
		// Lock type. Provides additional information about the
    // atomic characteristics of the transfer.
		output wire  M_AXI_ARLOCK,
		// Memory type. This signal indicates how transactions
    // are required to progress through a system.
		output wire [3 : 0] M_AXI_ARCACHE,
		// Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_ARPROT,
		// Quality of Service, QoS identifier sent for each read transaction
		output wire [3 : 0] M_AXI_ARQOS,
		// Optional User-defined signal in the read address channel.
		output wire [C_M_AXI_ARUSER_WIDTH-1 : 0] M_AXI_ARUSER,
		// Write address valid. This signal indicates that
    // the channel is signaling valid read address and control information
		output wire  M_AXI_ARVALID,
		// Read address ready. This signal indicates that
    // the slave is ready to accept an address and associated control signals
		input wire  M_AXI_ARREADY,
		// Read ID tag. This signal is the identification tag
    // for the read data group of signals generated by the slave.
		input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_RID,
		// Master Read Data
		input wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA,
		// Read response. This signal indicates the status of the read transfer
		input wire [1 : 0] M_AXI_RRESP,
		// Read last. This signal indicates the last transfer in a read burst
		input wire  M_AXI_RLAST,
		// Optional User-defined signal in the read address channel.
		input wire [C_M_AXI_RUSER_WIDTH-1 : 0] M_AXI_RUSER,
		// Read valid. This signal indicates that the channel
    // is signaling the required read data.
		input wire  M_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    // accept the read data and response information.
		output wire  M_AXI_RREADY
	);


	// function called clogb2 that returns an integer which has the
	//value of the ceiling of the log base 2

	  // function called clogb2 that returns an integer which has the 
	  // value of the ceiling of the log base 2.                      
	  function integer clogb2 (input integer bit_depth);              
	  begin                                                           
	    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
	      bit_depth = bit_depth >> 1;                                 
	    end                                                           
	  endfunction                                                     

	// C_TRANSACTIONS_NUM is the width of the index counter for 
	// number of write or read transaction.
//	 localparam integer C_TRANSACTIONS_NUM = clogb2(C_M_AXI_BURST_LEN-1);
	 localparam integer C_TRANSACTIONS_NUM = 9;
    localparam [1 : 0]  STATE_IDLE = 2'b00,
                         STATE_READ = 2'b01,
                         STATE_WRITE = 2'b10,
                         STATE_DONE = 2'b11;
     localparam  DIR_DOWN = 1'b0,
                 DIR_UP = 1'b1; 

	reg [1:0] mst_exec_state;
    reg [16 - 1 : 0] burst_length;
    reg [C_M_AXI_DATA_WIDTH - 1 : 0] src_addr_reg, dst_addr_reg, len_copy_reg;
    reg [C_M_AXI_DATA_WIDTH - 1 : 0] prev_addr_reg, curr_addr_reg, mvx_addr_reg, mvy_addr_reg, sad_addr_reg;
    reg [12 - 1 : 0] prev_wr_addr_reg;
    reg [256 - 1 : 0] prev_wr_data_reg;
    reg [32 - 1 : 0] prev_wr_en_reg;
    assign prev_wr_addr = prev_wr_addr_reg;
    assign prev_wr_data = prev_wr_data_reg;
//    assign prev_wr_en = {28'b0, {4{mst_exec_state == STATE_READ && action == 3'b000}}};
    assign prev_wr_en = prev_wr_en_reg;
//    assign curr_wr_addr = curr_addr_reg; 
//    assign curr_wr_data = curr_wr_data;
//    assign curr_wr_en = {28'b0, {4{mst_exec_state == STATE_READ && action == 3'b001}}};
    reg [C_M_AXI_DATA_WIDTH - 1 : 0] mvx_rd_addr_base, mvy_rd_addr_base, sad_rd_addr_base;
	reg [16 - 1 : 0] mvx_remain_reg, mvy_remain_reg, sad_remain_reg, prev_idx_reg, curr_idx_reg;
    wire [16 - 1 : 0] mvx_burst_length, mvy_burst_length, sad_burst_length;
    reg [16 - 1 : 0] prev_burst_length, curr_burst_length;
    always @(*) begin
        case(action)
            3'b000: burst_length = prev_burst_length;
            3'b001: burst_length = curr_burst_length;
            3'b010: burst_length = mvx_burst_length;
            3'b011: burst_length = mvy_burst_length;
            3'b100: burst_length = sad_burst_length;
            default: burst_length = 1; 
        endcase
    end
    calc_burst_length mvx_calc_burst_length (
        .size(mvx_remain_reg),
        .burst_length(mvx_burst_length)
    );
    calc_burst_length mvy_calc_burst_length (
        .size(mvy_remain_reg),
        .burst_length(mvy_burst_length)
    );
    calc_burst_length sad_calc_burst_length (
        .size(sad_remain_reg),
        .burst_length(sad_burst_length)
    );
//    calc_burst_length calc_burst_length_uut(
//        .size(len_copy_reg),
//        .burst_length(burst_length)
//    );
	// AXI4LITE signals
	//AXI4 internal temp signals
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awvalid;
	reg [C_M_AXI_DATA_WIDTH-1 : 0] 	axi_wdata;
	always @(*) begin
	   case (action)
	       3'b010: axi_wdata = mvx_rd_data;
	       3'b011: axi_wdata = mvy_rd_data;
	       3'b100: axi_wdata = sad_rd_data;
		   default: axi_wdata = 0;
	   endcase
	end
	reg  	axi_wlast;
	reg  	axi_wvalid;
	reg  	axi_bready;
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arvalid;
	reg  	axi_rready;
	//write beat count in a burst
	reg [C_TRANSACTIONS_NUM : 0] 	write_index;
	//read beat count in a burst
	reg [C_TRANSACTIONS_NUM : 0] 	read_index;
	//size of C_M_AXI_BURST_LEN length burst in bytes
	wire [C_TRANSACTIONS_NUM+2 : 0] 	burst_size_bytes;
	//The burst counters are used to track the number of burst transfers of C_M_AXI_BURST_LEN burst length needed to transfer 2^C_MASTER_LENGTH bytes of data.
	reg  	start_single_burst_write;
	reg  	start_single_burst_read;
	reg  	writes_done;
	reg  	reads_done;
	reg  	error_reg;
	reg  	compare_done;
	reg  	read_mismatch;
	reg  	burst_write_active;
	reg  	burst_read_active;
	reg [C_M_AXI_DATA_WIDTH-1 : 0] 	expected_rdata;
	//Interface response error flags
	wire  	write_resp_error;
	wire  	read_resp_error;
	wire  	wnext;
	wire  	rnext;
	reg  	init_txn_ff;
	reg  	init_txn_ff2;
	reg  	init_txn_edge;
	wire  	init_txn_pulse;
    

	// I/O Connections assignments

	//I/O Connections. Write Address (AW)
	assign M_AXI_AWID	= 'b0;
	//The AXI address is a concatenation of the target base address + active offset range
	assign M_AXI_AWADDR	= C_M_TARGET_SLAVE_BASE_ADDR + axi_awaddr;
	//Burst LENgth is number of transaction beats, minus 1
	assign M_AXI_AWLEN	= burst_length - 1;
	//Size should be C_M_AXI_DATA_WIDTH, in 2^SIZE bytes, otherwise narrow bursts are used
	assign M_AXI_AWSIZE	= clogb2((C_M_AXI_DATA_WIDTH/8)-1);
	//INCR burst type is usually used, except for keyhole bursts
	assign M_AXI_AWBURST	= 2'b01;
	assign M_AXI_AWLOCK	= 1'b0;
	//Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache. 
	assign M_AXI_AWCACHE	= 4'b0010;
	assign M_AXI_AWPROT	= 3'h0;
	assign M_AXI_AWQOS	= 4'h0;
	assign M_AXI_AWUSER	= 'b1;
	assign M_AXI_AWVALID	= axi_awvalid;
	//Write Data(W)
	assign M_AXI_WDATA	= axi_wdata;
	//All bursts are complete and aligned in this example
	assign M_AXI_WSTRB	= {(C_M_AXI_DATA_WIDTH/8){1'b1}};
	assign M_AXI_WLAST	= axi_wlast;
	assign M_AXI_WUSER	= 'b0;
	assign M_AXI_WVALID	= axi_wvalid;
	//Write Response (B)
	assign M_AXI_BREADY	= axi_bready;
	//Read Address (AR)
	assign M_AXI_ARID	= 'b0;
	assign M_AXI_ARADDR	= C_M_TARGET_SLAVE_BASE_ADDR + axi_araddr;
	//Burst LENgth is number of transaction beats, minus 1
	assign M_AXI_ARLEN	= burst_length - 1;
	//Size should be C_M_AXI_DATA_WIDTH, in 2^n bytes, otherwise narrow bursts are used
	assign M_AXI_ARSIZE	= clogb2((C_M_AXI_DATA_WIDTH/8)-1);
	//INCR burst type is usually used, except for keyhole bursts
	assign M_AXI_ARBURST	= 2'b01;
	assign M_AXI_ARLOCK	= 1'b0;
	//Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache. 
	assign M_AXI_ARCACHE	= 4'b0010;
	assign M_AXI_ARPROT	= 3'h0;
	assign M_AXI_ARQOS	= 4'h0;
	assign M_AXI_ARUSER	= 'b1;
	assign M_AXI_ARVALID	= axi_arvalid;
	//Read and Read Response (R)
	assign M_AXI_RREADY	= axi_rready;
	//Example design I/O
	
	//Burst size in bytes
//	assign burst_size_bytes	= C_M_AXI_BURST_LEN * C_M_AXI_DATA_WIDTH/8;
    reg redo;
	assign burst_size_bytes	= burst_length << 2;
	assign init_txn_pulse	= (!init_txn_ff) && hw_active || redo;
	//assign init_txn_pulse	= (!init_txn_ff2) && init_txn_ff || redo;
    reg hw_done_reg;
    assign hw_done = hw_done_reg;
//    wire [4 - 1 : 0] buffer_addr;
//    reg [4 - 1 : 0] buffer_wr_addr, buffer_rd_addr;
//    wire buffer_wr_en;
//    assign buffer_wr_en = mst_exec_state == STATE_READ;
//    assign buffer_addr = buffer_wr_en ? buffer_wr_addr : buffer_rd_addr;
//    reg [32 - 1 : 0] buffer_wr_data;
//    wire [32 - 1 : 0] buffer_rd_data;
//    assign axi_wdata = buffer_rd_data;
//    bram #(.DATA_WIDTH(32), .ADDR_WIDTH(4)) buffer (
//        .clk(M_AXI_ACLK),
//        .addr(buffer_addr),
//        .wr_en(buffer_wr_en),
//        .wr_data(buffer_wr_data),
//        .rd_data(buffer_rd_data)
//    );

	//Generate a pulse to initiate AXI transaction.
	always @(posedge M_AXI_ACLK)										      
	  begin                                                                        
	    // Initiates AXI transaction delay    
	    if (M_AXI_ARESETN == 0 )                                                   
	      begin                                                                    
	        init_txn_ff <= 1'b0;                                                   
	        init_txn_ff2 <= 1'b0;                                                   
	      end                                                                               
	    else                                                                       
	      begin  
	        init_txn_ff <= hw_active;
	        init_txn_ff2 <= init_txn_ff;                                                                 
	      end                                                                      
	  end     


	//--------------------
	//Write Address Channel
	//--------------------

	// The purpose of the write address channel is to request the address and 
	// command information for the entire transaction.  It is a single beat
	// of information.

	// The AXI4 Write address channel in this example will continue to initiate
	// write commands as fast as it is allowed by the slave/interconnect.
	// The address will be incremented on each accepted address transaction,
	// by burst_size_byte to point to the next address. 

	  always @(posedge M_AXI_ACLK)                                   
	  begin                                                                
	                                                                       
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                           
	      begin                                                            
	        axi_awvalid <= 1'b0;                                           
	      end                                                              
	    // If previously not valid , start next transaction                
	    else if (~axi_awvalid && start_single_burst_write)                 
	      begin                                                            
	        axi_awvalid <= 1'b1;                                           
	      end                                                              
	    /* Once asserted, VALIDs cannot be deasserted, so axi_awvalid      
	    must wait until transaction is accepted */                         
	    else if (M_AXI_AWREADY && axi_awvalid)                             
	      begin                                                            
	        axi_awvalid <= 1'b0;                                           
	      end                                                              
	    else                                                               
	      axi_awvalid <= axi_awvalid;                                      
	    end                                                                
	                                                                       
	                                                                       
	// Next address after AWREADY indicates previous address acceptance    
	  always @(posedge M_AXI_ACLK)                                         
	  begin                                                                
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1) begin  
	       case(action)
	           3'b010: begin //mvx
	               axi_awaddr <= redo ? mvx_addr_reg : mvx_addr;
	           end
	           3'b011: begin //mvy
	               axi_awaddr <= redo ? mvy_addr_reg : mvy_addr;
	           end
	           3'b100: begin //sad
	               axi_awaddr <= redo ? sad_addr_reg : sad_addr;
	           end
	           default: begin
	               axi_awaddr <= 0;
	           end
	       endcase                                                                                    
	    end else begin                                                             
	      axi_awaddr <= axi_awaddr;                                        
	    end           
	  end                                                     


	//--------------------
	//Write Data Channel
	//--------------------

	//The write data will continually try to push write data across the interface.

	//The amount of data accepted will depend on the AXI slave and the AXI
	//Interconnect settings, such as if there are FIFOs enabled in interconnect.

	//Note that there is no explicit timing relationship to the write address channel.
	//The write channel has its own throttling flag, separate from the AW channel.

	//Synchronization between the channels must be determined by the user.

	//The simpliest but lowest performance would be to only issue one address write
	//and write data burst at a time.

	//In this example they are kept in sync by using the same address increment
	//and burst sizes. Then the AW and W channels have their transactions measured
	//with threshold counters as part of the user logic, to make sure neither 
	//channel gets too far ahead of each other.

	//Forward movement occurs when the write channel is valid and ready

	  assign wnext = M_AXI_WREADY & axi_wvalid;                                   
	                                                                                    
	// WVALID logic, similar to the axi_awvalid always block above                      
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                                        
	      begin                                                                         
	        axi_wvalid <= 1'b0;                                                         
	      end                                                                           
	    // If previously not valid, start next transaction                              
	    else if (~axi_wvalid && start_single_burst_write)                               
	      begin                                                                         
	        axi_wvalid <= 1'b1;                                                         
	      end                                                                           
	    /* If WREADY and too many writes, throttle WVALID                               
	    Once asserted, VALIDs cannot be deasserted, so WVALID                           
	    must wait until burst is complete with WLAST */                                 
	    else if (wnext && axi_wlast)                                                    
	      axi_wvalid <= 1'b0;                                                           
	    else                                                                            
	      axi_wvalid <= axi_wvalid;                                                     
	  end                                                                               
	                                                                                    
	                                                                                    
	//WLAST generation on the MSB of a counter underflow                                
	// WVALID logic, similar to the axi_awvalid always block above                      
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                                        
	      begin                                                                         
	        axi_wlast <= 1'b0;                                                          
	      end                                                                           
	    // axi_wlast is asserted when the write index                                   
	    // count reaches the penultimate count to synchronize                           
	    // with the last write data when write_index is b1111                           
	    // else if (&(write_index[C_TRANSACTIONS_NUM-1:1])&& ~write_index[0] && wnext)  
	    else if (((write_index == burst_length-2 && burst_length >= 2) && wnext) || (burst_length == 1 ))
	      begin                                                                         
	        axi_wlast <= 1'b1;                                                          
	      end                                                                           
	    // Deassrt axi_wlast when the last write data has been                          
	    // accepted by the slave with a valid response                                  
	    else if (wnext)                                                                 
	      axi_wlast <= 1'b0;                                                            
	    else if (axi_wlast && burst_length == 1)                                   
	      axi_wlast <= 1'b0;                                                            
	    else                                                                            
	      axi_wlast <= axi_wlast;                                                       
	  end                                                                               
	                                                                                    
	                                                                                    
	/* Burst length counter. Uses extra counter register bit to indicate terminal       
	 count to reduce decode logic */                                                    
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 || start_single_burst_write == 1'b1)    
	      begin                                                                         
	        write_index <= 0;                                                           
	      end                                                                           
	    else if (wnext && (write_index != burst_length-1))                         
	      begin                                                                         
	        write_index <= write_index + 1;                                             
	      end                                                                           
	    else                                                                            
	      write_index <= write_index;                                        
	  end                                                                               
	                                                                                    
	                                                                                    
	/* Write Data Generator                                                             
	 Data pattern is only a simple incrementing count from 0 for each burst  */         
        always @(*) begin                                                                             
            if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1) begin
                mvx_rd_addr = mvx_rd_addr_base;
                mvy_rd_addr = mvy_rd_addr_base;
                sad_rd_addr = sad_rd_addr_base;
//                buffer_rd_addr = 0;                                          
            end else if (mst_exec_state == STATE_WRITE) begin
                mvx_rd_addr = wnext ? (mvx_rd_addr_base + {write_index + 1, 2'b0}) : (mvx_rd_addr_base + {write_index, 2'b0});
                mvy_rd_addr = wnext ? (mvy_rd_addr_base + {write_index + 1, 2'b0}) : (mvy_rd_addr_base + {write_index, 2'b0});      
                sad_rd_addr = wnext ? (sad_rd_addr_base + {write_index + 1, 1'b0}) : (sad_rd_addr_base + {write_index, 1'b0});            
//                buffer_rd_addr = wnext ? write_index + 1 : 0;                                                                                       
	        end else begin
	            mvx_rd_addr = mvx_rd_addr_base;
	            mvy_rd_addr = mvx_rd_addr_base;
	            sad_rd_addr = sad_rd_addr_base;                                                                            
//	            buffer_rd_addr = buffer_rd_addr;
	        end
	    end                                                                             


	//----------------------------
	//Write Response (B) Channel
	//----------------------------

	//The write response channel provides feedback that the write has committed
	//to memory. BREADY will occur when all of the data and the write address
	//has arrived and been accepted by the slave.

	//The write issuance (number of outstanding write addresses) is started by 
	//the Address Write transfer, and is completed by a BREADY/BRESP.

	//While negating BREADY will eventually throttle the AWREADY signal, 
	//it is best not to throttle the whole data channel this way.

	//The BRESP bit [1] is used indicate any errors from the interconnect or
	//slave for the entire write burst. This example will capture the error 
	//into the ERROR output. 

	  always @(posedge M_AXI_ACLK)                                     
	  begin                                                                 
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                            
	      begin                                                             
	        axi_bready <= 1'b0;                                             
	      end                                                               
	    // accept/acknowledge bresp with axi_bready by the master           
	    // when M_AXI_BVALID is asserted by slave                           
	    else if (M_AXI_BVALID && ~axi_bready)                               
	      begin                                                             
	        axi_bready <= 1'b1;                                             
	      end                                                               
	    // deassert after one clock cycle                                   
	    else if (axi_bready)                                                
	      begin                                                             
	        axi_bready <= 1'b0;                                             
	      end                                                               
	    // retain the previous value                                        
	    else                                                                
	      axi_bready <= axi_bready;                                         
	  end                                                                   
	                                                                        
	                                                                        
	//Flag any write response errors                                        
	  assign write_resp_error = axi_bready & M_AXI_BVALID & M_AXI_BRESP[1]; 


	//----------------------------
	//Read Address Channel
	//----------------------------

	//The Read Address Channel (AW) provides a similar function to the
	//Write Address channel- to provide the tranfer qualifiers for the burst.

	//In this example, the read address increments in the same
	//manner as the write address channel.

	  always @(posedge M_AXI_ACLK)                                 
	  begin                                                              
	                                                                     
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                         
	      begin                                                          
	        axi_arvalid <= 1'b0;                                         
	      end                                                            
	    // If previously not valid , start next transaction              
	    else if (~axi_arvalid && start_single_burst_read)                
	      begin                                                          
	        axi_arvalid <= 1'b1;                                         
	      end                                                            
	    else if (M_AXI_ARREADY && axi_arvalid)                           
	      begin                                                          
	        axi_arvalid <= 1'b0;                                         
	      end                                                            
	    else                                                             
	      axi_arvalid <= axi_arvalid;                                    
	  end                                                                
	                                                                     
	                                                                     
	// Next address after ARREADY indicates previous address acceptance  
	  always @(posedge M_AXI_ACLK)                                       
	  begin                                                              
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1) begin
	       case (action)
	           3'b000: begin //prev
	               axi_araddr <= redo ? prev_addr_reg : prev_addr;
	           end 
	           3'b001: begin //curr
	               axi_araddr <= redo ? curr_addr_reg : curr_addr;
	           end
	           default: begin
	               axi_araddr <= 0;
	           end
	       endcase                                                                                  
	    end else begin                                                             
	      axi_araddr <= axi_araddr;
	    end                                      
	  end                                                                


	//--------------------------------
	//Read Data (and Response) Channel
	//--------------------------------

	 // Forward movement occurs when the channel is valid and ready   
	  assign rnext = M_AXI_RVALID && axi_rready;                            
	                                                                        
	                                                                        
	// Burst length counter. Uses extra counter register bit to indicate    
	// terminal count to reduce decode logic           
	  always @(posedge M_AXI_ACLK)                                          
	  begin                                                                 
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 || start_single_burst_read)                  
	      begin                                                             
	        read_index <= 0;                                                
	      end                                                               
	    else if (rnext && (read_index != burst_length-1))              
	      begin                                                             
	        read_index <= read_index + 1;                                   
	      end                                                               
	    else                                                                
	      read_index <= read_index;                                         
	  end                                                                   
        integer i, j;
        always @(posedge M_AXI_ACLK) begin
			if(rnext && action == 3'b001 && read_index < 6) begin
				curr_data[{(dir == DIR_DOWN ? curr_idx_reg : (curr_num - 1 - curr_idx_reg)), 7'b0} + {(dir == DIR_DOWN ? curr_idx_reg : (curr_num - 1 - curr_idx_reg)), 6'b0} + {read_index, 5'b0} +: 32] <= M_AXI_RDATA;
			end
            if(rnext && action == 3'b000 && read_index < 14) begin
				prev_wr_addr_reg <= {dir == DIR_DOWN ? prev_idx_reg : (prev_num - 1 - prev_idx_reg), read_index[4 - 1 : 0], 2'b00};
				prev_wr_data_reg <= {224'b0, M_AXI_RDATA};
				prev_wr_en_reg <= {28'b0, 4'b1111};
            end else begin
                prev_wr_en_reg <= 0;
            end
        end                                                                  
	                                                                        
	/*                                                                      
	 The Read Data channel returns the results of the read request          
	                                                                        
	 In this example the data checker is always able to accept              
	 more data, so no need to throttle the RREADY signal                    
	 */                                                                     
	  always @(posedge M_AXI_ACLK)                                          
	  begin                                                                 
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                  
	      begin                                                             
	        axi_rready <= 1'b0;                                             
	      end                                                               
	    // accept/acknowledge rdata/rresp with axi_rready by the master     
	    // when M_AXI_RVALID is asserted by slave                           
	    else if (M_AXI_RVALID)                       
	      begin                                      
	         if (M_AXI_RLAST && axi_rready)          
	          begin                                  
	            axi_rready <= 1'b0;                  
	          end                                    
	         else                                    
	           begin                                 
	             axi_rready <= 1'b1;                 
	           end                                   
	      end                                        
	    // retain the previous value                 
	  end                                            

	//--------------------------------
	//Example design throttling
	//--------------------------------

	// For maximum port throughput, this user example code will try to allow
	// each channel to run as independently and as quickly as possible.

	// However, there are times when the flow of data needs to be throtted by
	// the user application. This example application requires that data is
	// not read before it is written and that the write channels do not
	// advance beyond an arbitrary threshold (say to prevent an 
	// overrun of the current read address by the write address).

	// From AXI4 Specification, 13.13.1: "If a master requires ordering between 
	// read and write transactions, it must ensure that a response is received 
	// for the previous transaction before issuing the next transaction."

	// This example accomplishes this user application throttling through:
	// -Reads wait for writes to fully complete
	// -Address writes wait when not read + issued transaction counts pass 
	// a parameterized threshold
	// -Writes wait when a not read + active data burst count pass 
	// a parameterized threshold
	                                                                                                                                               
	                                                                                                            
	  //implement master command interface state machine                                                        
      
        
        always @(posedge M_AXI_ACLK) begin
            if(M_AXI_ARESETN == 1'b0) begin
                redo <= 0;
                mst_exec_state <= STATE_IDLE;
                start_single_burst_write <= 1'b0;                                                                   
                start_single_burst_read  <= 1'b0;           
                hw_done_reg <= 0;
            end else begin
                case(mst_exec_state)
                    STATE_IDLE: begin
                        redo <= 0;
                        if ( init_txn_pulse == 1'b1) begin      
                            hw_done_reg <= 0;             
                            if(!redo) begin
                                prev_addr_reg <= prev_addr;
                                prev_idx_reg <= 0;
                                curr_addr_reg <= curr_addr;
                                curr_idx_reg <= 0;
                                mvx_addr_reg <= mvx_addr;
                                mvy_addr_reg <= mvy_addr;
                                sad_addr_reg <= sad_addr;
								mvx_remain_reg <= 1920;
                                mvx_rd_addr_base <= 0;
								mvy_remain_reg <= 1920;
                                mvy_rd_addr_base <= 0;
                                sad_remain_reg <= 3840;
                                sad_rd_addr_base <= 0; 
                                prev_burst_length <= 16;    
                                curr_burst_length <= 8;
                            end           
                            if(action == 3'b000) begin                                                           
                                mst_exec_state  <= STATE_READ;    
                            end else if (action == 3'b001) begin
                                mst_exec_state  <= STATE_READ;
                            end else if (action == 3'b010) begin
                                mst_exec_state  <= STATE_WRITE;
                            end else if (action == 3'b011) begin
                                mst_exec_state  <= STATE_WRITE;
                            end else if (action == 3'b100) begin
                                mst_exec_state  <= STATE_WRITE;
                            end
                        end else begin               
                            hw_done_reg <= hw_done_reg;                                                                          
                            mst_exec_state  <= STATE_IDLE;                                                          
                        end 
                    end
                    STATE_READ: begin
                        if(reads_done) begin
                            if(action == 3'b000) begin
                                if(prev_idx_reg == prev_num - 1) begin
                                    mst_exec_state <= STATE_DONE;
									redo <= 0;
                                end else begin
                                    prev_idx_reg <= prev_idx_reg + 1;
                                    prev_addr_reg <= (dir == 0 ? (prev_addr_reg + 720) : (prev_addr_reg - 720));
                                    mst_exec_state <= STATE_IDLE;
                                    redo <= 1;
                                end
                            end else if(action == 3'b001) begin
                                if(curr_idx_reg == curr_num - 1) begin
                                    mst_exec_state <= STATE_DONE;
									redo <= 0;
                                end else begin
                                    curr_idx_reg <= curr_idx_reg + 1;
                                    curr_addr_reg <= (dir == 0 ? (curr_addr_reg + 720) : (curr_addr_reg - 720));
                                    mst_exec_state <= STATE_IDLE;
                                    redo <= 1;
                                end
                            end else begin
                                mst_exec_state <= STATE_DONE;
                            end
                        end else begin
                            mst_exec_state  <= STATE_READ;                                                                              
                            if (~axi_arvalid && ~burst_read_active && ~start_single_burst_read) begin                                                                                     
                                start_single_burst_read <= 1'b1;                                                        
                            end else begin                                                                                      
                                start_single_burst_read <= 1'b0; //Negate to generate a pulse                            
                            end         
                        end
                    end
                    STATE_WRITE: begin
                        if(writes_done) begin
                            if(action == 3'b010) begin
                                if(mvx_remain_reg <= mvx_burst_length) begin
                                    mst_exec_state <= STATE_DONE;
									redo <= 0;
                                end else begin
                                    mst_exec_state <= STATE_IDLE;
                                    mvx_remain_reg <= mvx_remain_reg - mvx_burst_length;
                                    mvx_rd_addr_base <= mvx_rd_addr_base + {mvx_burst_length, 2'b0};
                                    mvx_addr_reg <= mvx_addr_reg + {mvx_burst_length, 2'b0};
                                    redo <= 1;
                                end
                            end else if(action == 3'b011) begin
                                if(mvy_remain_reg <= mvy_burst_length) begin
                                    mst_exec_state <= STATE_DONE;
									redo <= 0;
                                end else begin
                                    mst_exec_state <= STATE_IDLE;
                                    mvy_remain_reg <= mvy_remain_reg - mvy_burst_length;
                                    mvy_rd_addr_base <= mvy_rd_addr_base + {mvy_burst_length, 2'b0};
                                    mvy_addr_reg <= mvy_addr_reg + {mvy_burst_length, 2'b0};
                                    redo <= 1;
                                end
                            end else if(action == 3'b100) begin
                                if(sad_remain_reg <= sad_burst_length) begin
                                    mst_exec_state <= STATE_DONE;
									redo <= 0;
                                end else begin
                                    mst_exec_state <= STATE_IDLE;
                                    sad_remain_reg <= sad_remain_reg - sad_burst_length;
                                    sad_rd_addr_base <= sad_rd_addr_base + {sad_burst_length, 1'b0};
                                    sad_addr_reg <= sad_addr_reg + {sad_burst_length, 2'b0};
                                    redo <= 1;
                                end
                            end
                        end else begin
                            mst_exec_state  <= STATE_WRITE;                                                                                           
                            if (~axi_awvalid && ~start_single_burst_write && ~burst_write_active) begin                                                                                     
                                start_single_burst_write <= 1'b1;                                                       
                            end else begin                                                                                     
                                start_single_burst_write <= 1'b0; //Negate to generate a pulse                          
                            end      
                        end
                    end
                    STATE_DONE: begin
                        hw_done_reg <= 1;
                        mst_exec_state <= STATE_IDLE;
                    end
                    default: begin
                        mst_exec_state <= STATE_IDLE;
                    end
                endcase
            end
        end                                                                                                    
	  // burst_write_active signal is asserted when there is a burst write transaction                          
	  // is initiated by the assertion of start_single_burst_write. burst_write_active                          
	  // signal remains asserted until the burst write is accepted by the slave                                 
	  always @(posedge M_AXI_ACLK)                                                                              
	  begin                                                                                                     
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                                                 
	      burst_write_active <= 1'b0;                                                                           
	                                                                                                            
	    //The burst_write_active is asserted when a write burst transaction is initiated                        
	    else if (start_single_burst_write)                                                                      
	      burst_write_active <= 1'b1;                                                                           
	    else if (M_AXI_BVALID && axi_bready)                                                                    
	      burst_write_active <= 0;                                                                              
	  end                                                                                                       
	                                                                                                            
	 // Check for last write completion.                                                                        
	                                                                                                            
	 // This logic is to qualify the last write count with the final write                                      
	 // response. This demonstrates how to confirm that a write has been                                        
	 // committed.                                                                                              
	                                                                                                            
	  always @(posedge M_AXI_ACLK)                                                                              
	  begin                                                                                                     
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                                                 
	      writes_done <= 1'b0;                                                                                  
	                                                                                                            
	    //The writes_done should be associated with a bready response                                           
	    //else if (M_AXI_BVALID && axi_bready && (write_burst_counter == {(C_NO_BURSTS_REQ-1){1}}) && axi_wlast)
	    else if (M_AXI_BVALID && axi_bready && (write_index == burst_length-1))                          
	      writes_done <= 1'b1;                                                                                  
	    else                                                                                                    
	      writes_done <= writes_done;                                                                           
	    end                                                                                                     
	                                                                                                            
	  // burst_read_active signal is asserted when there is a burst write transaction                           
	  // is initiated by the assertion of start_single_burst_write. start_single_burst_read                     
	  // signal remains asserted until the burst read is accepted by the master                                 
	  always @(posedge M_AXI_ACLK)                                                                              
	  begin                                                                                                     
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                                                 
	      burst_read_active <= 1'b0;                                                                            
	                                                                                                            
	    //The burst_write_active is asserted when a write burst transaction is initiated                        
	    else if (start_single_burst_read)                                                                       
	      burst_read_active <= 1'b1;                                                                            
	    else if (M_AXI_RVALID && axi_rready && M_AXI_RLAST)                                                     
	      burst_read_active <= 0;                                                                               
	    end                                                                                                     
	                                                                                                            
	                                                                                                            
	 // Check for last read completion.                                                                         
	                                                                                                            
	 // This logic is to qualify the last read count with the final read                                        
	 // response. This demonstrates how to confirm that a read has been                                         
	 // committed.                                                                                              
	                                                                                                            
	  always @(posedge M_AXI_ACLK)                                                                              
	  begin                                                                                                     
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                                                 
	      reads_done <= 1'b0;                                                                                   
	                                                                                                            
	    //The reads_done should be associated with a rready response                                            
	    //else if (M_AXI_BVALID && axi_bready && (write_burst_counter == {(C_NO_BURSTS_REQ-1){1}}) && axi_wlast)
	    else if (M_AXI_RVALID && axi_rready && (read_index == burst_length-1))
	      reads_done <= 1'b1;                                                                                   
	    else                                                                                                    
	      reads_done <= reads_done;                                                                             
	    end                                                                                                     

	// Add user logic here

	// User logic ends

	endmodule
