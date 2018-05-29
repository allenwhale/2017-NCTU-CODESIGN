
`timescale 1 ns / 1 ps
    module p_ram_t # (
        parameter DATA_WIDTH = 3,
        parameter ADDR_WIDTH = 10
    ) (
        input wire clk,
        input wire [ADDR_WIDTH - 1 : 0] addr1,
        input wire [ADDR_WIDTH - 1 : 0] addr2,
        input wire wr_en1,
        input wire wr_en2,
        input wire [(1 << DATA_WIDTH) - 1 : 0] wr_data1,
        input wire [(1 << DATA_WIDTH) - 1 : 0] wr_data2,
        output wire [(1 << DATA_WIDTH) - 1 : 0] rd_data1,
        output wire [(1 << DATA_WIDTH) - 1 : 0] rd_data2
    );
        reg [(1 << DATA_WIDTH) - 1 : 0] mem [(1 << ADDR_WIDTH) - 1 : 0];
        reg [(1 << DATA_WIDTH) - 1 : 0] rd_data_reg1;
        reg [(1 << DATA_WIDTH) - 1 : 0] rd_data_reg2;
        assign rd_data1 = rd_data_reg1;
        assign rd_data2 = rd_data_reg2;
        always @(posedge clk) begin
            if(wr_en1) begin
                mem[addr1] <= wr_data1;
                rd_data_reg1 <= wr_data1;
            end else begin 
                rd_data_reg1 <= mem[addr1];
            end
        end
        always @(posedge clk) begin
            if(wr_en2) begin
                mem[addr2] <= wr_data2;
                rd_data_reg2 <= wr_data2;
            end else begin 
                rd_data_reg2 <= mem[addr2];
            end
        end
    endmodule
    module ram_t # (
        parameter DATA_WIDTH = 7,
        parameter ADDR_WIDTH = 10,
        parameter PARTITION_WIDTH = 4
    ) (
        input wire clk,
        input wire [ADDR_WIDTH - 1 : 0] addr1,
        input wire [ADDR_WIDTH - 1 : 0] addr2,
        input wire [ADDR_WIDTH - 1 : 0] offset_x1,
        input wire [ADDR_WIDTH - 1 : 0] offset_x2,
        input wire [ADDR_WIDTH - 1 : 0] offset_y1,
        input wire [ADDR_WIDTH - 1 : 0] offset_y2,
        input wire [(1 << PARTITION_WIDTH) - 1 : 0] wr_en1,
        input wire [(1 << PARTITION_WIDTH) - 1 : 0] wr_en2,
        input wire [(1 << DATA_WIDTH) - 1 : 0] wr_data1,
        input wire [(1 << DATA_WIDTH) - 1 : 0] wr_data2,
        output wire [(1 << DATA_WIDTH) - 1 : 0] rd_data1,
        output wire [(1 << DATA_WIDTH) - 1 : 0] rd_data2
    );
        reg [ADDR_WIDTH - 1 : 0] r_addr1;
        wire [ADDR_WIDTH - PARTITION_WIDTH - 1 : 0] p_addr1 [(1 << PARTITION_WIDTH) - 1 : 0];
        wire p_wr_en1 [(1 << PARTITION_WIDTH) - 1 : 0];
        wire [(1 << (DATA_WIDTH - PARTITION_WIDTH)) - 1 : 0] p_wr_data1 [(1 << PARTITION_WIDTH) - 1 : 0];
        wire [(1 << (DATA_WIDTH - PARTITION_WIDTH)) - 1 : 0] p_rd_data1 [(1 << PARTITION_WIDTH) - 1 : 0];
        wire [ADDR_WIDTH - PARTITION_WIDTH - 1 : 0] p_addr_next1, p_addr_curr1;
        wire [PARTITION_WIDTH - 1: 0] offset1;
        assign offset1 = r_addr1[PARTITION_WIDTH - 1 : 0]; 
        assign p_addr_next1 = (&r_addr1[ADDR_WIDTH / 2 - 1 : PARTITION_WIDTH]) ? {r_addr1[ADDR_WIDTH - 1 : ADDR_WIDTH / 2], {(ADDR_WIDTH / 2 - PARTITION_WIDTH){1'b0}}} : r_addr1[ADDR_WIDTH - 1 : PARTITION_WIDTH] + 1;
        assign p_addr_curr1 = r_addr1[ADDR_WIDTH - 1 : PARTITION_WIDTH];
        reg [ADDR_WIDTH - 1 : 0] r_addr2;
        wire [ADDR_WIDTH - PARTITION_WIDTH - 1 : 0] p_addr2 [(1 << PARTITION_WIDTH) - 1 : 0];
        wire p_wr_en2 [(1 << PARTITION_WIDTH) - 1 : 0];
        wire [(1 << (DATA_WIDTH - PARTITION_WIDTH)) - 1 : 0] p_wr_data2 [(1 << PARTITION_WIDTH) - 1 : 0];
        wire [(1 << (DATA_WIDTH - PARTITION_WIDTH)) - 1 : 0] p_rd_data2 [(1 << PARTITION_WIDTH) - 1 : 0];
        wire [ADDR_WIDTH - PARTITION_WIDTH - 1 : 0] p_addr_next2, p_addr_curr2;
        wire [PARTITION_WIDTH - 1: 0] offset2;
        assign offset2 = r_addr2[PARTITION_WIDTH - 1 : 0]; 
        assign p_addr_next2 = (&r_addr2[ADDR_WIDTH / 2 - 1 : PARTITION_WIDTH]) ? {r_addr2[ADDR_WIDTH - 1 : ADDR_WIDTH / 2], {(ADDR_WIDTH / 2 - PARTITION_WIDTH){1'b0}}} : r_addr2[ADDR_WIDTH - 1 : PARTITION_WIDTH] + 1;
        assign p_addr_curr2 = r_addr2[ADDR_WIDTH - 1 : PARTITION_WIDTH];
        always @(*) begin
            if({(ADDR_WIDTH / 2){1'b1}} - addr1[ADDR_WIDTH / 2 - 1 : 0] >= offset_x1) begin
                r_addr1[ADDR_WIDTH / 2 - 1 : 0] = addr1[ADDR_WIDTH / 2 - 1 : 0] + offset_x1;
            end else begin
                r_addr1[ADDR_WIDTH / 2 - 1 : 0] = offset_x1 - ((1 << (ADDR_WIDTH / 2)) - addr1[ADDR_WIDTH / 2 - 1 : 0]);
            end
            if({(ADDR_WIDTH / 2){1'b1}} - addr1[ADDR_WIDTH - 1 : ADDR_WIDTH / 2] >= offset_y1) begin
                r_addr1[ADDR_WIDTH - 1 : ADDR_WIDTH / 2] = addr1[ADDR_WIDTH - 1 : ADDR_WIDTH / 2] + offset_y1;
            end else begin
                r_addr1[ADDR_WIDTH - 1 : ADDR_WIDTH / 2] = offset_y1 - ((1 << (ADDR_WIDTH / 2)) - addr1[ADDR_WIDTH - 1 : ADDR_WIDTH / 2]);
            end
        end
        always @(*) begin
            if({(ADDR_WIDTH / 2){1'b1}} - addr2[ADDR_WIDTH / 2 - 1 : 0] >= offset_x2) begin
                r_addr2[ADDR_WIDTH / 2 - 1 : 0] = addr2[ADDR_WIDTH / 2 - 1 : 0] + offset_x2;
            end else begin
                r_addr2[ADDR_WIDTH / 2 - 1 : 0] = offset_x2 - ((1 << (ADDR_WIDTH / 2)) - addr2[ADDR_WIDTH / 2 - 1 : 0]);
            end
            if({(ADDR_WIDTH / 2){1'b1}} - addr2[ADDR_WIDTH - 1 : ADDR_WIDTH / 2] >= offset_y2) begin
                r_addr2[ADDR_WIDTH - 1 : ADDR_WIDTH / 2] = addr2[ADDR_WIDTH - 1 : ADDR_WIDTH / 2] + offset_y2;
            end else begin
                r_addr2[ADDR_WIDTH - 1 : ADDR_WIDTH / 2] = offset_y2 - ((1 << (ADDR_WIDTH / 2)) - addr2[ADDR_WIDTH - 1 : ADDR_WIDTH / 2]);
            end
        end
        genvar i;
        generate
            for(i = 0 ; i < (1 << PARTITION_WIDTH) ; i = i + 1) begin: gen_p_addr1
                assign p_addr1[i] = (i < offset1) ? p_addr_next1 : p_addr_curr1;
            end
            for(i = 0 ; i < (1 << PARTITION_WIDTH) ; i = i + 1) begin: gen_p_addr2
                assign p_addr2[i] = (i < offset2) ? p_addr_next2 : p_addr_curr2;
            end
            for(i = 0 ; i < (1 << PARTITION_WIDTH) ; i = i + 1) begin: gen_p_wr_wn1
                assign p_wr_en1[i] = wr_en1[(i < offset1) ?
                                            (i + (1 << PARTITION_WIDTH) - offset1) :
                                            (i - offset1)];
            end
            for(i = 0 ; i < (1 << PARTITION_WIDTH) ; i = i + 1) begin: gen_wr_en2
                assign p_wr_en2[i] = wr_en2[(i < offset2) ?
                                            (i + (1 << PARTITION_WIDTH) - offset2) :
                                            (i - offset2)];
            end
            for(i = 0 ; i < (1 << PARTITION_WIDTH) ; i = i + 1) begin: gen_p_wr_data1
                assign p_wr_data1[i] = wr_data1[((i < offset1) ? 
                                                (i + (1 << PARTITION_WIDTH) - offset1) : 
                                                (i - offset1)) << (DATA_WIDTH - PARTITION_WIDTH) +: 1 << (DATA_WIDTH - PARTITION_WIDTH)];
            end
            for(i = 0 ; i < (1 << PARTITION_WIDTH) ; i = i + 1) begin: gen_p_wr_data2
                assign p_wr_data2[i] = wr_data2[((i < offset2) ? 
                                                (i + (1 << PARTITION_WIDTH) - offset2) : 
                                                (i - offset2)) << (DATA_WIDTH - PARTITION_WIDTH) +: 1 << (DATA_WIDTH - PARTITION_WIDTH)];
            end
            for(i = 0 ; i < (1 << PARTITION_WIDTH) ; i = i + 1) begin: gen_ram
                p_ram_t # (.DATA_WIDTH((DATA_WIDTH - PARTITION_WIDTH)), .ADDR_WIDTH(ADDR_WIDTH - PARTITION_WIDTH)) ram (
                    .clk(clk),
                    .addr1(p_addr1[i]),
                    .addr2(p_addr2[i]),
                    .wr_en1(p_wr_en1[i]),
                    .wr_en2(p_wr_en2[i]),
                    .wr_data1(p_wr_data1[i]),
                    .wr_data2(p_wr_data2[i]),
                    .rd_data1(p_rd_data1[i]),
                    .rd_data2(p_rd_data2[i])
                );
            end
            for(i = 0 ; i < (1 << PARTITION_WIDTH) ; i = i + 1) begin: gen_p_rd_data1
                assign rd_data1[i << (DATA_WIDTH - PARTITION_WIDTH) +: 1 << (DATA_WIDTH - PARTITION_WIDTH)] = 
                    p_rd_data1[ (i < ((1 << (PARTITION_WIDTH)) - offset1)) ? 
                                (i + offset1) : 
                                (i - (1 << PARTITION_WIDTH) + offset1)];
            end
            for(i = 0 ; i < (1 << PARTITION_WIDTH) ; i = i + 1) begin: gen_p_rd_data2
                assign rd_data2[i << (DATA_WIDTH - PARTITION_WIDTH) +: 1 << (DATA_WIDTH - PARTITION_WIDTH)] = 
                    p_rd_data2[ (i < ((1 << (PARTITION_WIDTH)) - offset2)) ? 
                                (i + offset2) : 
                                (i - (1 << PARTITION_WIDTH) + offset2)];
            end
        endgenerate
    endmodule
    
    module match_pipeline # (
        parameter RAM_ADDR_WIDTH = 12,
        parameter PIPELINE_NUM = 2
    )(
        input wire clk,
        input wire hw_active,
        input wire [128 * 16 - 1 : 0] curr_pix_raw,
        input wire [256 - 1 : 0] rd_data,
        output wire [RAM_ADDR_WIDTH - 1 : 0] rd_addr,
        output wire [RAM_ADDR_WIDTH / 2 - 1 : 0] mvx,
        output wire [RAM_ADDR_WIDTH / 2 - 1 : 0] mvy,
        output wire [32 - 1 : 0] sad,
        output wire hw_done
    );
//        reg last_hw_active;
//        wire active_pulse;
//        assign active_pulse = !last_hw_active && hw_active;
//        always @(posedge clk) begin
//            last_hw_active <= hw_active;
//        end
        function integer log2(input integer x); begin
            for(log2 = 0 ; x > 0 ; log2 = log2 + 1) begin
                x = x >> 1;
            end
            log2 = log2 - 1;
        end endfunction
        genvar pipeline_id, mintree_id;
        integer i, j, k;
        reg [128 - 1 : 0] curr_pix [16 - 1 : 0];
        always @(*) begin
            for(i = 0 ; i < 16 ; i = i + 1) begin
                curr_pix[i] = curr_pix_raw[128 * i +: 128];
            end
        end
        reg [RAM_ADDR_WIDTH / 2 - 1 : 0] mintree_mvx [log2(PIPELINE_NUM) : 0][PIPELINE_NUM - 1 : 0];
        reg [RAM_ADDR_WIDTH / 2 - 1 : 0] mintree_mvx_next [log2(PIPELINE_NUM) : 0][PIPELINE_NUM - 1 : 0];
        reg [RAM_ADDR_WIDTH / 2 - 1 : 0] mintree_mvy [log2(PIPELINE_NUM) : 0][PIPELINE_NUM - 1 : 0];
        reg [RAM_ADDR_WIDTH / 2 - 1 : 0] mintree_mvy_next [log2(PIPELINE_NUM) : 0][PIPELINE_NUM - 1 : 0];
        reg [16 - 1 : 0] mintree_sad [log2(PIPELINE_NUM) : 0][PIPELINE_NUM - 1 : 0];
        reg [16 - 1 : 0] mintree_sad_next [log2(PIPELINE_NUM) : 0][PIPELINE_NUM - 1 : 0];
        generate for(pipeline_id = 0 ; pipeline_id < PIPELINE_NUM ; pipeline_id = pipeline_id + 1) begin: pipeline
            localparam  DIR_DOWN = 1'b0,
                        DIR_UP = 1'b1; 
            // fetch stage
            reg dir, dir_next;
            reg [128 + PIPELINE_NUM * 8 - 1 : 0] prev_pix [16 - 1 : 0], prev_pix_next [16 - 1 : 0];
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] x, x_next;
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] y, y_next;
            // fetch stage
            reg fetch_dir, fetch_dir_next;
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] fetch_x, fetch_x_next;
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] fetch_y, fetch_y_next;
            if(pipeline_id == 0) begin
                assign rd_addr = {(dir == DIR_DOWN ? y_next : (y_next - 15)), x_next};
            end
            // abs stage
            reg [128 - 1 : 0] abs_prev_pix [16 - 1 : 0], abs_prev_pix_next [16 - 1 : 0];
            reg [8 - 1 : 0] abs_abs [16 - 1 : 0][16 - 1 : 0];
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] abs_x, abs_x_next;
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] abs_y, abs_y_next;
            // adder1 stage
            reg [10 - 1 : 0] adder11_abs [16 - 1 : 0][16 - 1 : 0], adder11_abs_next [16 - 1 : 0][16 - 1 : 0];
            reg [10 - 1 : 0] adder11_sub_row_sad [16 - 1 : 0][4 - 1 : 0];
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] adder11_x, adder11_x_next;
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] adder11_y, adder11_y_next;
            // adder1 stage
            reg [12 - 1 : 0] adder1_sub_row_sad [16 - 1 : 0][4 - 1 : 0], adder1_sub_row_sad_next [16 - 1 : 0][4 - 1 : 0];
            reg [12 - 1 : 0] adder1_row_sad [16 - 1 : 0];
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] adder1_x, adder1_x_next;
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] adder1_y, adder1_y_next;
            // adder2 stage
            reg [14 - 1 : 0] adder22_row_sad [16 - 1 : 0], adder22_row_sad_next [16 - 1 : 0];
            reg [14 - 1 : 0] adder22_sub_sad [4 - 1 : 0];
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] adder22_x, adder22_x_next;
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] adder22_y, adder22_y_next;
            // adder2 stage
            reg [16 - 1 : 0] adder2_sub_sad [4 - 1 : 0], adder2_sub_sad_next [4 - 1 : 0];
            reg [16 - 1 : 0] adder2_sad;
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] adder2_x, adder2_x_next;
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] adder2_y, adder2_y_next;
            // fetch stage clk 
            always @(posedge clk) begin
                x <= x_next;
                y <= y_next;
                dir <= dir_next;
            end
            // fetch stage logic
            wire fetch_next_col;
            assign fetch_next_col = (dir == DIR_DOWN) ? (y == 47) : (y == 14 && x != pipeline_id);
            always @(*) begin
                if(hw_active) begin
					x_next = fetch_next_col ? (x + PIPELINE_NUM) : x;
					y_next = fetch_next_col ? y : (dir == DIR_DOWN ? y + 1 : y - 1);
					dir_next = fetch_next_col ? ~dir : dir;
                end else begin
                    x_next = pipeline_id;
                    y_next = 0;
                    dir_next = DIR_DOWN;
                end
            end
            // fetch-fetch done logic
            always @(*) begin
               fetch_x_next = hw_active ? x : 0;
               fetch_y_next = hw_active ? y : 0;
               fetch_dir_next = dir;
            end
            // fetch done stage clk
            always @(posedge clk) begin
               for(i = 0 ; i < 16 ; i = i + 1) begin
                   prev_pix[i] <= prev_pix_next[i];
               end
               fetch_x <= fetch_x_next;
               fetch_y <= fetch_y_next;
               fetch_dir <= fetch_dir_next;
            end
            // fetch done logic
            always @(*) begin
               if((fetch_y_next == 14 && fetch_x_next != pipeline_id && fetch_dir_next == DIR_DOWN) || (fetch_y_next == 47 && fetch_dir_next == DIR_UP)) begin
                   for(i = 0 ; i < 16 ; i = i + 1) begin
                       prev_pix_next[i] = {{(8 * PIPELINE_NUM){1'b0}}, prev_pix[i][8 * PIPELINE_NUM +: 128]};
                   end
               end else if(fetch_dir_next == DIR_DOWN) begin
                   for(i = 0 ; i < 15 ; i = i + 1) begin
                       prev_pix_next[i] = prev_pix[i + 1];
                   end
                   prev_pix_next[15] = rd_data[pipeline_id * 8 +: 128 + PIPELINE_NUM * 8];
               end else begin
                   for(i = 1 ; i < 16 ; i = i + 1) begin
                       prev_pix_next[i] = prev_pix[i - 1];
                   end
                   prev_pix_next[0] = rd_data[pipeline_id * 8 +: 128 + PIPELINE_NUM * 8];
               end
            end
            // fetch-abs logic
            always @(*) begin
                for(i = 0 ; i < 16 ; i = i + 1) begin
                    abs_prev_pix_next[i] = prev_pix[i][128 - 1 : 0];
                end
                abs_x_next = hw_active ? fetch_x : 0;
                abs_y_next = hw_active ? fetch_y : 0;
            end
            // abs stage clk
            always @(posedge clk) begin
                for(i = 0 ; i < 16 ; i = i + 1) begin
                    abs_prev_pix[i] <= abs_prev_pix_next[i];
                end
                abs_x <= abs_x_next;
                abs_y <= abs_y_next;
            end
            // abs logic
            always @(*) begin
                for(i = 0 ; i < 16 ; i = i + 1) begin
                    for(j = 0 ; j < 16 ; j = j + 1) begin
                        abs_abs[i][j] = (   (abs_prev_pix[i][j * 8 +: 8] > curr_pix[i][j * 8 +: 8]) ?
                                            (abs_prev_pix[i][j * 8 +: 8] - curr_pix[i][j * 8 +: 8]) :
                                            (curr_pix[i][j * 8 +: 8] - abs_prev_pix[i][j * 8 +: 8]));
                    end
                end
            end
            // abs-adder11 logic
            always @(*) begin
                for(i = 0 ; i < 16 ; i = i + 1) begin
                    for(j = 0 ; j < 16 ; j = j + 1) begin
                        adder11_abs_next[i][j] = abs_abs[i][j];
                    end
                end
                adder11_x_next = hw_active ? abs_x : 0;
                adder11_y_next = hw_active ? abs_y : 0;
            end
            // adder11 clk
            always @(posedge clk) begin
                for(i = 0 ; i < 16 ; i = i + 1) begin
                    for(j = 0 ; j < 16 ; j = j + 1) begin
                        adder11_abs[i][j] <= adder11_abs_next[i][j];
                    end
                end
                adder11_x <= adder11_x_next;
                adder11_y <= adder11_y_next;
            end
            // adder11 logic
            always @(*) begin
                for(i = 0 ; i < 16 ; i = i + 1) begin
                    for(j = 0 ; j < 4 ; j = j + 1) begin: adder11
                        reg [16 - 1 : 0] layer [3 - 1 : 0];
                        layer[2] = adder11_abs[i][j * 4 + 0] + adder11_abs[i][j * 4 + 1];
                        layer[1] = adder11_abs[i][j * 4 + 2] + adder11_abs[i][j * 4 + 3];
                        layer[0] = layer[2] + layer[1];
                        adder11_sub_row_sad[i][j] = layer[0];
                    end
                end
            end
            // adder11-adder1 logic
            always @(*) begin
                for(i = 0 ; i < 16 ; i = i + 1) begin
                    for(j = 0 ; j < 4 ; j = j + 1) begin
                        adder1_sub_row_sad_next[i][j] = adder11_sub_row_sad[i][j]; 
                    end
                end
                adder1_x_next = hw_active ? adder11_x : 0;
                adder1_y_next = hw_active ? adder11_y : 0;
            end
            // adder1 stage clk
            always @(posedge clk) begin
                for(i = 0 ; i < 16 ; i = i + 1) begin
                    for(j = 0 ; j < 4 ; j = j + 1) begin
                        adder1_sub_row_sad[i][j] <= adder1_sub_row_sad_next[i][j];
                    end
                end
                adder1_x <= adder1_x_next;
                adder1_y <= adder1_y_next;
            end
            // adder1 logic
            always @(*) begin
                for(i = 0 ; i < 16 ; i = i + 1) begin: adder1
                    reg [16 - 1 : 0] layer [3 - 1 : 0];
                    layer[2] = adder1_sub_row_sad[i][0] + adder1_sub_row_sad[i][1];
                    layer[1] = adder1_sub_row_sad[i][2] + adder1_sub_row_sad[i][3];
                    layer[0] = layer[2] + layer[1];
                    adder1_row_sad[i] = layer[0];
                end
            end
            // adder1-adder22 logic
            always @(*) begin
                for(i = 0 ; i < 16 ; i = i + 1) begin
                    adder22_row_sad_next[i] = adder1_row_sad[i];
                end
                adder22_x_next = hw_active ? adder1_x : 0;
                adder22_y_next = hw_active ? adder1_y : 0;
            end
            // adder22 clk
            always @(posedge clk) begin
                for(i = 0 ; i< 16 ; i = i + 1) begin
                    adder22_row_sad[i] <= adder22_row_sad_next[i];
                end
                adder22_x <= adder22_x_next;
                adder22_y <= adder22_y_next;
            end
            // adder22 logic
            always @(*) begin
                for(i = 0 ; i < 4 ; i = i + 1) begin: adder22
                    reg [16 - 1 : 0] layer [3 - 1 : 0];
                    layer[2] = adder22_row_sad[i * 4 + 0] + adder22_row_sad[i * 4 + 1];
                    layer[1] = adder22_row_sad[i * 4 + 2] + adder22_row_sad[i * 4 + 3];
                    layer[0] = layer[2] + layer[1];
                    adder22_sub_sad[i] = layer[0];
                end
            end
            // adder22-adder2 logic
            always @(*) begin
                for(i = 0 ; i < 4 ; i = i + 1) begin
                    adder2_sub_sad_next[i] = adder22_sub_sad[i];
                end
                adder2_x_next = hw_active ? adder22_x : 0;
                adder2_y_next = hw_active ? adder22_y : 0;
            end
            // adder2 stage clk
            always @(posedge clk) begin
                for(i = 0 ; i < 4 ; i = i + 1) begin
                    adder2_sub_sad[i] <= adder2_sub_sad_next[i];
                end
                adder2_x <= adder2_x_next;
                adder2_y <= adder2_y_next;
            end
            // adder2 logic
            always @(*) begin: adder2
                reg [16 - 1 : 0] layer [3 - 1 : 0];
                layer[2] = adder2_sub_sad[0] + adder2_sub_sad[1];
                layer[1] = adder2_sub_sad[2] + adder2_sub_sad[3];
                layer[0] = layer[2] + layer[1];
                adder2_sad = layer[0];
				if(hw_active) begin
					mintree_sad_next[log2(PIPELINE_NUM)][pipeline_id] = adder2_sad;
					mintree_mvx_next[log2(PIPELINE_NUM)][pipeline_id] = adder2_x;
					mintree_mvy_next[log2(PIPELINE_NUM)][pipeline_id] = adder2_y;
				end else begin
					mintree_sad_next[log2(PIPELINE_NUM)][pipeline_id] = 2147483647;
					mintree_mvx_next[log2(PIPELINE_NUM)][pipeline_id] = 0;
					mintree_mvy_next[log2(PIPELINE_NUM)][pipeline_id] = 0;
				end
            end
        end endgenerate
       
        always @(posedge clk) begin
            for(i = 0 ; i < PIPELINE_NUM ; i = i + 1) begin
                mintree_sad[log2(PIPELINE_NUM)][i] <= mintree_sad_next[log2(PIPELINE_NUM)][i];
                mintree_mvx[log2(PIPELINE_NUM)][i] <= mintree_mvx_next[log2(PIPELINE_NUM)][i];
                mintree_mvy[log2(PIPELINE_NUM)][i] <= mintree_mvy_next[log2(PIPELINE_NUM)][i];
            end
        end
        generate for(mintree_id = log2(PIPELINE_NUM) - 1 ; mintree_id >= 0 ; mintree_id = mintree_id - 1) begin
            always @(*) begin
                for(i = 0 ; i < (1 << mintree_id) ; i = i + 1) begin
					if(hw_active) begin
						if(mintree_sad[mintree_id + 1][i * 2] < mintree_sad[mintree_id + 1][i * 2 + 1]) begin
							mintree_sad_next[mintree_id][i] = mintree_sad[mintree_id + 1][i * 2];
							mintree_mvx_next[mintree_id][i] = mintree_mvx[mintree_id + 1][i * 2];
							mintree_mvy_next[mintree_id][i] = mintree_mvy[mintree_id + 1][i * 2];
						end else begin
							mintree_sad_next[mintree_id][i] = mintree_sad[mintree_id + 1][i * 2 + 1];
							mintree_mvx_next[mintree_id][i] = mintree_mvx[mintree_id + 1][i * 2 + 1];
							mintree_mvy_next[mintree_id][i] = mintree_mvy[mintree_id + 1][i * 2 + 1];
						end 
					end else begin 
						mintree_sad_next[mintree_id][i] = 2147483647;
						mintree_mvx_next[mintree_id][i] = 0;
						mintree_mvy_next[mintree_id][i] = 0;
					end 
                end
            end
            always @(posedge clk) begin
                for(i = 0 ; i < (1 << mintree_id) ; i = i + 1) begin
                    mintree_sad[mintree_id][i] <= mintree_sad_next[mintree_id][i];
                    mintree_mvx[mintree_id][i] <= mintree_mvx_next[mintree_id][i];
                    mintree_mvy[mintree_id][i] <= mintree_mvy_next[mintree_id][i];
                end
            end
        end endgenerate
        reg done, done_next;
        reg [16 - 1 : 0] min_sad, min_sad_next;
        reg [RAM_ADDR_WIDTH / 2 - 1 : 0] min_mvx, min_mvx_next;
        reg [RAM_ADDR_WIDTH / 2 - 1 : 0] min_mvy, min_mvy_next;
        assign hw_done = done;
        assign sad = min_sad;
        assign mvx = min_mvx;
        assign mvy = min_mvy;
        always @(*) begin
            if(hw_active) begin
                if(15 <= mintree_mvy[0][0] && mintree_mvy[0][0] <= 46 && mintree_sad[0][0] < min_sad && !done) begin
                    min_sad_next = mintree_sad[0][0];
                    min_mvx_next = mintree_mvx[0][0];
                    min_mvy_next = mintree_mvy[0][0];
                end else begin
                    min_sad_next = min_sad;
                    min_mvx_next = min_mvx;
                    min_mvy_next = min_mvy;
                end
                if(31 - PIPELINE_NUM + 1 <= mintree_mvx[0][0] && mintree_mvx[0][0] <= 31 && mintree_mvy[0][0] == 15) begin
                    done_next = 1;
                end else begin
                    done_next = done;
                end
            end else begin
                done_next = 0;
                min_sad_next = 2147483647;
                min_mvx_next = 0;
                min_mvy_next = 0;
            end
        end
        always @(posedge clk) begin
            done <= done_next;
            min_sad <= min_sad_next;
            min_mvx <= min_mvx_next;
            min_mvy <= min_mvy_next;
        end
    endmodule
    
	module full_search_v1_0_S00_AXI #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 5
	)
	(
		// Users to add ports here
		output reg master_hw_active,
		input wire master_hw_done,
		output reg master_dir,
		output reg [3 - 1 : 0] master_action,
        output reg [32 - 1 : 0] master_prev_addr,
        output reg [32 - 1 : 0] master_curr_addr,
        output reg [32 - 1 : 0] master_mvx_addr,
        output reg [32 - 1 : 0] master_mvy_addr,
        output reg [32 - 1 : 0] master_sad_addr,
        input wire [12 - 1 : 0] master_prev_wr_addr,
        input wire [256 - 1 : 0] master_prev_wr_data,
        input wire [32 - 1 : 0] master_prev_wr_en,
        output reg [6 - 1 : 0] master_prev_num,
        input wire [14 - 1 : 0] master_mvx_rd_addr,
        input wire [14 - 1 : 0] master_mvy_rd_addr,
        input wire [14 - 1 : 0] master_sad_rd_addr,
        output wire [32 - 1 : 0] master_mvx_rd_data,
        output wire [32 - 1 : 0] master_mvy_rd_data,
        output wire [32 - 1 : 0] master_sad_rd_data,
//        input wire [12 - 1 : 0] master_curr_wr_addr,
//        input wire [256 - 1 : 0] master_curr_wr_data,
//        input wire [32 - 1 : 0] master_curr_wr_en,
        input wire [192 * 16 - 1 : 0] master_curr_data,
        output reg [6 - 1 : 0] master_curr_num,
		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY
	);
    
	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 2;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 8
    wire hw_active;
    wire [C_S_AXI_DATA_WIDTH - 1 : 0] orig_prev_addr, orig_curr_addr, orig_mvx_addr, orig_mvy_addr, orig_sad_addr;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg0;
	assign orig_prev_addr = slv_reg0;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg1;
	assign orig_curr_addr = slv_reg1;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg2;
	assign orig_mvx_addr = slv_reg2;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg3;
	assign orig_mvy_addr = slv_reg3;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg4;
	assign orig_sad_addr = slv_reg4;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg5;
	assign hw_active = |slv_reg5;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg6;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg7;
	wire	 slv_reg_rden;
	wire	 slv_reg_wren;
	reg [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
	integer	 byte_index;
	reg	 aw_en;

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RDATA	= axi_rdata;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;
	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.
	wire [12 - 1 : 0] prev_rd_addr1, prev_rd_addr2, prev_wr_addr1, prev_wr_addr2, prev_addr1, prev_addr2;
	wire [256 - 1 : 0] prev_rd_data1, prev_rd_data2, prev_wr_data1, prev_wr_data2;
	wire [32 - 1 : 0] prev_wr_en1, prev_wr_en2;
	reg [12 - 1 : 0] prev_offset_x1, prev_offset_y1;
	reg[12 - 1 : 0] prev_offset_x2, prev_offset_y2; 
	assign prev_wr_addr2 = master_prev_wr_addr;
	assign prev_wr_data2 = master_prev_wr_data;
	assign prev_wr_en2 = master_prev_wr_en;
	assign prev_addr1 = prev_rd_addr1;
	assign prev_addr2 = prev_wr_addr2;
    ram_t #(
        .DATA_WIDTH(8),
        .ADDR_WIDTH(12),
        .PARTITION_WIDTH(5)
    ) prev_ram (
        .clk(S_AXI_ACLK),
        .addr1(prev_addr1),
        .wr_en1(0),
        .offset_x1(prev_offset_x1),
        .offset_y1(prev_offset_y1),
        .addr2(prev_addr2),
        .wr_en2(prev_wr_en2),
        .offset_x2(prev_offset_x2),
        .offset_y2(prev_offset_y2),
        .wr_data2(prev_wr_data2),
        .rd_data1(prev_rd_data1)
    );
    wire [14 - 1 : 0] mvx_addr, mvx_rd_addr;
    reg [14 - 1 : 0] mvx_wr_addr;
    reg [32 - 1 : 0] mvx_wr_data;
    wire [32 - 1 : 0] mvx_rd_data;
    reg [4 - 1 : 0] mvx_wr_en;
    assign mvx_addr = mvx_wr_en ? mvx_wr_addr : mvx_rd_addr;
    assign mvx_rd_addr = master_mvx_rd_addr;
    assign master_mvx_rd_data = mvx_rd_data;
    ram_t # (
        .DATA_WIDTH(5),
        .ADDR_WIDTH(14),
        .PARTITION_WIDTH(2)
    ) mvx (
        .clk(S_AXI_ACLK),
        .addr1(mvx_addr),
        .wr_data1(mvx_wr_data),
        .wr_en1(mvx_wr_en),
        .rd_data1(mvx_rd_data),
        .offset_x1(0),
        .offset_y1(0)
    );
    wire [14 - 1 : 0] mvy_addr, mvy_rd_addr;
    reg [14 - 1 : 0] mvy_wr_addr;
    reg [32 - 1 : 0] mvy_wr_data;
    wire [32 - 1 : 0] mvy_rd_data;
    reg [4 - 1 : 0] mvy_wr_en;
    assign mvy_addr = mvy_wr_en ? mvy_wr_addr : mvy_rd_addr;
    assign mvy_rd_addr = master_mvy_rd_addr;
    assign master_mvy_rd_data = mvy_rd_data;
    ram_t # (
        .DATA_WIDTH(5),
        .ADDR_WIDTH(14),
        .PARTITION_WIDTH(2)
    ) mvy (
        .clk(S_AXI_ACLK),
        .addr1(mvy_addr),
        .wr_data1(mvy_wr_data),
        .wr_en1(mvy_wr_en),
        .rd_data1(mvy_rd_data),
        .offset_x1(0),
        .offset_y1(0)
    );
    wire [14 - 1 : 0] sad_addr,  sad_rd_addr;
    reg [14 - 1 : 0] sad_wr_addr;
    reg [14 - 1 : 0] sad_wr_data;
    wire [32 - 1 : 0] sad_rd_data;
    reg [2 - 1 : 0] sad_wr_en;
    assign sad_addr = sad_wr_en ? sad_wr_addr : sad_rd_addr;
    assign sad_rd_addr = master_sad_rd_addr;
    assign master_sad_rd_data = sad_rd_data;
    ram_t # (
        .DATA_WIDTH(5),
        .ADDR_WIDTH(14),
        .PARTITION_WIDTH(1)
    ) sad (
        .clk(S_AXI_ACLK),
        .addr1(sad_addr),
        .wr_data1(sad_wr_data),
        .wr_en1(sad_wr_en),
        .rd_data1(sad_rd_data),
        .offset_x1(0),
        .offset_y1(0)
    );
//    wire [12 - 1 : 0] curr_rd_addr1, curr_rd_addr2, curr_wr_addr1, curr_wr_addr2;
//    wire [256 - 1 : 0] curr_rd_data1, curr_rd_data2, curr_wr_data1, curr_wr_data2;
//    wire [32 - 1 : 0] curr_wr_en1, curr_wr_en2;
//    reg [6 - 1 : 0] curr_offset_x1, curr_offset_y1, curr_offset_x2, curr_offset_y2; 
//    assign curr_wr_addr2 = master_curr_wr_addr;
//    assign curr_wr_data2 = master_curr_wr_data;
//    assign curr_wr_en2 = master_curr_wr_en;
//    ram_t #(
//        .DATA_WIDTH(8),
//        .ADDR_WIDTH(12),
//        .PARTITION_WIDTH(5)
//    ) curr_ram (
//        .clk(S_AXI_ACLK),
//        .rd_addr1(curr_rd_addr1),
//        .wr_addr1(curr_wr_addr1),
//        .wr_en1(curr_wr_en1),
//        .offset_x1(curr_offset_x1),
//        .offset_y1(curr_offset_y1),
//        .rd_addr2(curr_rd_addr2),
//        .wr_addr2(curr_wr_addr2),
//        .wr_en2(curr_wr_en2),
//        .offset_x2(curr_offset_x2),
//        .offset_y2(curr_offset_y2)
//    );
    reg pipeline_hw_active;
    wire [128 * 16 - 1 : 0] pipeline_curr_pix_raw;
    reg [192 * 16 - 1 : 0] curr_data;
    wire [256 - 1 : 0] pipeline_rd_data;
    wire [12 - 1 : 0] pipeline_rd_addr;
    wire [6 - 1 : 0] pipeline_mvx, pipeline_mvy;
    wire [32 - 1 : 0] pipeline_sad;
    wire pipeline_hw_done;
    genvar gi;
    generate for(gi = 0 ; gi < 16 ; gi = gi + 1) begin
        assign pipeline_curr_pix_raw[gi * 128 +: 128] = curr_data[gi * 192 +: 128];
    end endgenerate
    assign pipeline_rd_data = prev_rd_data1;
    assign prev_rd_addr1 = pipeline_rd_addr;
    assign prev_wr_en1 = 0;
    match_pipeline #(
        .RAM_ADDR_WIDTH(12),
        .PIPELINE_NUM(1)
    ) pipeline (
        .clk(S_AXI_ACLK),
        .hw_active(pipeline_hw_active),
        .curr_pix_raw(pipeline_curr_pix_raw),
        .rd_data(pipeline_rd_data),
        .rd_addr(pipeline_rd_addr),
        .mvx(pipeline_mvx),
        .mvy(pipeline_mvy),
        .sad(pipeline_sad),
        .hw_done(pipeline_hw_done)
    );
    localparam [5 - 1 : 0]  STATE_IDLE = 0,
                            STATE_PREFETCH_PREV = 1,
                            STATE_PREFETCH_PREV_WAIT = 2, 
                            STATE_PREFETCH_CURR = 3,
                            STATE_PREFETCH_CURR_WAIT = 4,
                            STATE_PIPELINE = 5,
                            STATE_FETCH_PREV = 6,
                            STATE_FETCH_PREV_WAIT = 7,
                            STATE_FETCH_CURR = 8,
                            STATE_FETCH_CURR_WAIT = 9,
                            STATE_PIPELINE_WAIT = 10,
                            STATE_WRITE_MVX = 11,
                            STATE_WRITE_MVX_WAIT = 12,
                            STATE_WRITE_MVY = 13,
                            STATE_WRITE_MVY_WAIT = 14,
                            STATE_WRITE_SAD = 15,
                            STATE_WRITE_SAD_WAIT = 16,
                            STATE_DONE = 17,
                            STATE_WRITE_RESULT = 18,
							STATE_STALL = 19;
    reg [5 - 1 : 0] state;
	reg [5 - 1 : 0] stall_next_state;
    reg [10 - 1 : 0] x, y;
    reg dir;
    integer i;
    reg all_done;
	always @(posedge S_AXI_ACLK) begin
		if(state == STATE_PIPELINE) begin
			if(x == 16 && y == 16) begin
				curr_data <= master_curr_data;
			end else if((y == 16 && dir == 1'b0) || (y == 440 && dir == 1'b1)) begin
				for(i = 0 ; i < 16 ; i = i + 1) begin
					curr_data[192 * i +: 128] <= curr_data[192 * i + 64 +: 128];
				end
			end else begin
				if(dir == 0) begin
					for(i = 0 ; i < 8 ; i = i + 1) begin
						curr_data[192 * i +: 192] <= curr_data[192 * (i + 8) +: 192];
						curr_data[192 * (i + 8) +: 192] <= master_curr_data[192 * i +: 192];
					end
				end else begin
					for(i = 0 ; i < 8 ; i = i + 1) begin
						curr_data[192 * i +: 192] <= master_curr_data[192 * i +: 192];
						curr_data[192 * (i + 8) +: 192] <= curr_data[192 * i +: 192];
					end
				end
			end
		end else begin
			curr_data <= curr_data;
		end
	end
	always @(posedge S_AXI_ACLK) begin
		if(state == STATE_PREFETCH_PREV) begin
			prev_offset_x2 <= 0;
			prev_offset_y2 <= 0;
		end else if(state == STATE_PREFETCH_PREV_WAIT && master_hw_done) begin
			prev_offset_x2 <= 0;
            prev_offset_y2 <= 48;
		end else if(state == STATE_WRITE_RESULT) begin
			if((dir == 0 && y == 440) || (dir == 1 && y == 16)) begin
				if(dir == 0) begin//-=56
					prev_offset_y2 <= prev_offset_y2 >= 56 ? prev_offset_y2 - 56 : 64 - (56 - prev_offset_y2);
				end else begin//+=56
					prev_offset_y2 <= prev_offset_y2 <= 63 - 56 ? prev_offset_y2 + 56 : prev_offset_y2 - (64 - 56);
				end
                prev_offset_x2 <= prev_offset_x2 == 56 ? 0 : prev_offset_x2 + 8;
			end else begin
				prev_offset_x2 <= prev_offset_x2;
                prev_offset_y2 <= (dir == 0) ? (prev_offset_y2 == 56 ? 0 : prev_offset_y2 + 8) : (prev_offset_y2 == 0 ? 56 : prev_offset_y2 - 8);
			end
		end else begin
			prev_offset_x2 <= prev_offset_x2;
			prev_offset_y2 <= prev_offset_y2;
		end
	end
	always @(posedge S_AXI_ACLK) begin
		if(state == STATE_IDLE && hw_active && !all_done) begin
			prev_offset_x1 <= 0;
            prev_offset_y1 <= 0;
		end else if(state == STATE_WRITE_RESULT) begin
			if((dir == 0 && y == 440) || (dir == 1 && y == 16)) begin
				prev_offset_y1 <= prev_offset_y1;
                prev_offset_x1 <= prev_offset_x1 == 56 ? 0 : prev_offset_x1 + 8;
			end else begin
				prev_offset_x1 <= prev_offset_x1;
                prev_offset_y1 <= (dir == 0) ? (prev_offset_y1 == 56 ? 0 : prev_offset_y1 + 8) : (prev_offset_y1 == 0 ? 56 : prev_offset_y1 - 8);
			end
		end
	end
	always @(posedge S_AXI_ACLK) begin
		if(state == STATE_PREFETCH_PREV) begin
			master_prev_addr <= orig_prev_addr;
			master_prev_num <= 48;
		end else if(state == STATE_FETCH_PREV) begin
			if(dir == 0 && y != 440) begin
				master_prev_addr <= (orig_prev_addr + x - 16) + (y + 32) * 720;
				master_prev_num <= 8;
			end else if(dir == 1 && y != 16) begin
				master_prev_addr <= (orig_prev_addr + x - 16) + (y - 17) * 720;
				master_prev_num <= 8;
			end
		end
	end
	always @(posedge S_AXI_ACLK) begin
		if(state == STATE_PREFETCH_CURR) begin
			master_curr_addr <= orig_curr_addr + 16 * 720 + 16;
			master_curr_num <= 16;
		end else if(state == STATE_FETCH_CURR) begin
			if(dir == 0 && y != 440) begin
				master_curr_addr <= (orig_curr_addr + x) + (y + 16) * 720;
				master_curr_num <= 8;
			end else if(dir == 1 && y != 16) begin
				master_curr_addr <= (orig_curr_addr + x) + (y - 1) * 720;
				master_curr_num <= 8;
			end
		end
	end 
	always @(posedge S_AXI_ACLK) begin
		if(state == STATE_IDLE && hw_active && !all_done) begin
			x <= 16;
			y <= 16;
		end else if(state == STATE_WRITE_RESULT) begin
			if((dir == 0 && y == 440) || (dir == 1 && y == 16)) begin
				y <= y;
				x <= x + 8;
			end else begin
				x <= x;
				y = dir == 0 ? y + 8 : y - 8;
			end
		end 
	end
	always @(posedge S_AXI_ACLK) begin
		if(S_AXI_ARESETN == 1'b0) begin
			all_done <= 0;
		end else begin
			if(state == STATE_IDLE) begin
				all_done <= 0;
			end else if(state == STATE_DONE) begin
				all_done <= 1;
			end
		end
	end 
	always @(posedge S_AXI_ACLK) begin
		if(state == STATE_IDLE && hw_active && !all_done) begin
			dir <= 0;
		end else if(state == STATE_WRITE_RESULT) begin
			if((dir == 0 && y == 440) || (dir == 1 && y == 16)) begin
				dir <= !dir;
			end else begin
				dir <= dir;
			end
		end
	end 
	always @(posedge S_AXI_ACLK) begin
		if(state == STATE_PIPELINE) begin
			pipeline_hw_active <= 1;
		end else if(state == STATE_PIPELINE_WAIT && pipeline_hw_done) begin
			pipeline_hw_active <= 0;
		end 
	end
	always @(posedge S_AXI_ACLK) begin
		if(state == STATE_PIPELINE_WAIT && pipeline_hw_done) begin
			mvx_wr_addr <= {6'b0, y[3 +: 7], 7'b0} + x[3 +: 7];
			mvx_wr_data <= {26'b0, pipeline_mvx};
			mvx_wr_en <= 4'b0001;
			mvy_wr_addr <= {6'b0, y[3 +: 7], 7'b0} + x[3 +: 7];
			mvy_wr_data <= {26'b0, pipeline_mvy - 15};
			mvy_wr_en <= 4'b0001;
			sad_wr_addr <= {6'b0, y[3 +: 7], 7'b0} + x[3 +: 7];
			sad_wr_data <= {16'b0, pipeline_sad[16 - 1 : 0]};
			sad_wr_en <= 2'b01;
		end else if(state == STATE_WRITE_RESULT) begin
			mvx_wr_en <= 0;
			mvy_wr_en <= 0;
			sad_wr_en <= 0;
		end
	end
	always @(*) begin
		master_mvx_addr = orig_mvx_addr;
		master_mvy_addr = orig_mvy_addr;
		master_sad_addr = orig_sad_addr;
	end 
    always @(posedge S_AXI_ACLK) begin
        if(S_AXI_ARESETN == 1'b0) begin
            state <= STATE_IDLE;
        end else begin
            case(state)
                STATE_IDLE: begin
                    if(hw_active && !all_done) begin
                        state <= STATE_PREFETCH_PREV;
                    end else begin
                        state <= STATE_IDLE;
                    end
                end
                STATE_PREFETCH_PREV: begin
                    master_action <= 3'b000;
                    master_hw_active <= 1;
                    master_dir <= 0;
					state <= STATE_STALL;
					stall_next_state <= STATE_PREFETCH_PREV_WAIT;
                end
                STATE_PREFETCH_PREV_WAIT: begin
                    if(master_hw_done) begin
                        state <= STATE_PREFETCH_CURR;
                        master_hw_active <= 0;
                    end else begin
                        state <= STATE_PREFETCH_PREV_WAIT;
                    end
                end
                STATE_PREFETCH_CURR: begin
                    master_action <= 3'b001;
                    master_hw_active <= 1;
                    master_dir <= 0;
					state <= STATE_STALL;
					stall_next_state <= STATE_PREFETCH_CURR_WAIT;
                end
                STATE_PREFETCH_CURR_WAIT: begin
                    if(master_hw_done) begin
                        state <= STATE_PIPELINE;
                        master_hw_active <= 0;
                    end else begin
                        state <= STATE_PREFETCH_CURR_WAIT;
                    end
                end
                STATE_PIPELINE: begin
					state <= ((dir == 0 && y == 440) || (dir == 1 && y == 16)) ? STATE_PIPELINE_WAIT : STATE_FETCH_PREV;
                end
                STATE_FETCH_PREV: begin
					master_dir <= dir;
					master_hw_active <= 1;
					master_action <= 3'b000;
					state <= STATE_STALL;
					stall_next_state <= STATE_FETCH_PREV_WAIT;
                end
                STATE_FETCH_PREV_WAIT: begin
                    if(master_hw_done) begin
                        state <= STATE_FETCH_CURR;
                        master_hw_active <= 0;
                    end else begin
                        state <= STATE_FETCH_PREV_WAIT;
                    end
                end
                STATE_FETCH_CURR: begin
					master_action <= 3'b001;
					master_dir <= dir;
					master_hw_active <= 1;
					state <= STATE_STALL;
					stall_next_state <= STATE_FETCH_CURR_WAIT;
                end
                STATE_FETCH_CURR_WAIT: begin
                    if(master_hw_done) begin
                        state <= STATE_PIPELINE_WAIT;
                        master_hw_active <= 0;
                    end else begin
                        state <= STATE_FETCH_CURR_WAIT;
                    end
                end
                STATE_PIPELINE_WAIT: begin
                    if(pipeline_hw_done) begin
                        state <= STATE_WRITE_RESULT;
                    end else begin
                        state <= STATE_PIPELINE_WAIT;
                    end
                end
                STATE_WRITE_RESULT: begin
                    if(y == 16 && x == 680) begin
                        state <= STATE_WRITE_MVX;
                    end else begin
                        state <= STATE_PIPELINE;
                    end
                end
                STATE_WRITE_MVX: begin
                    master_action <= 3'b010;
                    master_hw_active <= 1;
					state <= STATE_STALL;
					stall_next_state <= STATE_WRITE_MVX_WAIT;
                end
                STATE_WRITE_MVX_WAIT: begin
                    if(master_hw_done) begin
                        state <= STATE_WRITE_MVY;
                        master_hw_active <= 0;
                    end else begin
                        state <= STATE_WRITE_MVX_WAIT;
                    end
                end
                STATE_WRITE_MVY: begin
                    master_action <= 3'b011;
                    master_hw_active <= 1;
					state <= STATE_STALL;
					stall_next_state <= STATE_WRITE_MVY_WAIT;
                end
                STATE_WRITE_MVY_WAIT: begin
                    if(master_hw_done) begin
                        state <= STATE_WRITE_SAD;
                        master_hw_active <= 0;
                    end else begin
                        state <= STATE_WRITE_MVY_WAIT;
                    end
                end
                STATE_WRITE_SAD: begin
                    master_action <= 3'b100;
                    master_hw_active <= 1;
					state <= STATE_STALL;
					stall_next_state <= STATE_WRITE_SAD_WAIT;
                end
                STATE_WRITE_SAD_WAIT: begin
                    if(master_hw_done) begin
                        state <= STATE_DONE;
                        master_hw_active <= 0;
                    end else begin
                        state <= STATE_WRITE_SAD_WAIT;
                    end
                end
                STATE_DONE: begin
                    state <= STATE_IDLE;
                end
				STATE_STALL: begin
					state <= stall_next_state;
				end
                default: begin
                    state <= STATE_IDLE;
                end
            endcase
        end
    end
    
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	      aw_en <= 1'b1;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // slave is ready to accept write address when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_awready <= 1'b1;
	          aw_en <= 1'b0;
	        end
	        else if (S_AXI_BREADY && axi_bvalid)
	            begin
	              aw_en <= 1'b1;
	              axi_awready <= 1'b0;
	            end
	      else           
	        begin
	          axi_awready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_AWVALID and S_AXI_WVALID are valid. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // Write Address latching 
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	// de-asserted when reset is low. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      slv_reg0 <= 0;
	      slv_reg1 <= 0;
	      slv_reg2 <= 0;
	      slv_reg3 <= 0;
	      slv_reg4 <= 0;
	      slv_reg5 <= 0;
	      slv_reg6 <= 0;
	      slv_reg7 <= 0;
	    end 
	  else begin
	    if (slv_reg_wren)
	      begin
	        case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	          3'h0:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 0
	                slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          3'h1:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 1
	                slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          3'h2:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 2
	                slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          3'h3:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 3
	                slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          3'h4:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 4
	                slv_reg4[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          3'h5:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 5
	                slv_reg5[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          3'h6:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 6
	                slv_reg6[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          3'h7:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 7
	                slv_reg7[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          default : begin
	                      slv_reg0 <= slv_reg0;
	                      slv_reg1 <= slv_reg1;
	                      slv_reg2 <= slv_reg2;
	                      slv_reg3 <= slv_reg3;
	                      slv_reg4 <= slv_reg4;
	                      slv_reg5 <= slv_reg5;
	                      slv_reg6 <= slv_reg6;
	                      slv_reg7 <= slv_reg7;
	                    end
	        endcase
	      end else begin
			if(all_done) begin
				slv_reg5 <= 0;
			end else begin
				slv_reg5 <= slv_reg5;
			end
	      end
	  end
	end    

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end 
	  else
	    begin    
	      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
	        begin
	          // indicates a valid write response is available
	          axi_bvalid <= 1'b1;
	          axi_bresp  <= 2'b0; // 'OKAY' response 
	        end                   // work error responses in future
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid) 
	            //check if bready is asserted while bvalid is high) 
	            //(there is a possibility that bready is always asserted high)   
	            begin
	              axi_bvalid <= 1'b0; 
	            end  
	        end
	    end
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_ARVALID is 
	// asserted. axi_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 32'b0;
	    end 
	  else
	    begin    
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_arready <= 1'b1;
	          // Read address latching
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axi_rvalid <= 1'b1;
	          axi_rresp  <= 2'b0; // 'OKAY' response
	        end   
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_rvalid <= 1'b0;
	        end                
	    end
	end    

	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	always @(*)
	begin
	      // Address decoding for reading registers
	      case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	        3'h0   : reg_data_out <= slv_reg0;
	        3'h1   : reg_data_out <= slv_reg1;
	        3'h2   : reg_data_out <= slv_reg2;
	        3'h3   : reg_data_out <= slv_reg3;
	        3'h4   : reg_data_out <= slv_reg4;
	        3'h5   : reg_data_out <= slv_reg5;
	        3'h6   : reg_data_out <= slv_reg6;
	        3'h7   : reg_data_out <= slv_reg7;
	        default : reg_data_out <= 0;
	      endcase
	end

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end 
	  else
	    begin    
	      // When there is a valid read address (S_AXI_ARVALID) with 
	      // acceptance of read address by the slave (axi_arready), 
	      // output the read dada 
	      if (slv_reg_rden)
	        begin
	          axi_rdata <= reg_data_out;     // register read data
	        end   
	    end
	end    

	// Add user logic here

	// User logic ends

	endmodule
