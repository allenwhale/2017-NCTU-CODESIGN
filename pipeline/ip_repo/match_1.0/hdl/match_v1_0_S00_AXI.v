
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
        input wire wr_en1,
        input wire wr_en2,
        input wire [(1 << DATA_WIDTH) - 1 : 0] wr_data1,
        input wire [(1 << DATA_WIDTH) - 1 : 0] wr_data2,
        output wire [(1 << DATA_WIDTH) - 1 : 0] rd_data1,
        output wire [(1 << DATA_WIDTH) - 1 : 0] rd_data2
    );
        wire [ADDR_WIDTH - PARTITION_WIDTH - 1 : 0] p_addr1 [(1 << PARTITION_WIDTH) - 1 : 0];
        wire p_wr_en1 [(1 << PARTITION_WIDTH) - 1 : 0];
        wire [(1 << (DATA_WIDTH - PARTITION_WIDTH)) - 1 : 0] p_wr_data1 [(1 << PARTITION_WIDTH) - 1 : 0];
        wire [(1 << (DATA_WIDTH - PARTITION_WIDTH)) - 1 : 0] p_rd_data1 [(1 << PARTITION_WIDTH) - 1 : 0];
        wire [ADDR_WIDTH - PARTITION_WIDTH - 1 : 0] p_addr_next1, p_addr_curr1;
        wire [PARTITION_WIDTH - 1: 0] offset1;
        assign offset1 = addr1[PARTITION_WIDTH - 1 : 0]; 
        assign p_addr_next1 = addr1[ADDR_WIDTH - 1 : PARTITION_WIDTH] + 1;
        assign p_addr_curr1 = addr1[ADDR_WIDTH - 1 : PARTITION_WIDTH];
        wire [ADDR_WIDTH - PARTITION_WIDTH - 1 : 0] p_addr2 [(1 << PARTITION_WIDTH) - 1 : 0];
        wire p_wr_en2 [(1 << PARTITION_WIDTH) - 1 : 0];
        wire [(1 << (DATA_WIDTH - PARTITION_WIDTH)) - 1 : 0] p_wr_data2 [(1 << PARTITION_WIDTH) - 1 : 0];
        wire [(1 << (DATA_WIDTH - PARTITION_WIDTH)) - 1 : 0] p_rd_data2 [(1 << PARTITION_WIDTH) - 1 : 0];
        wire [ADDR_WIDTH - PARTITION_WIDTH - 1 : 0] p_addr_next2, p_addr_curr2;
        wire [PARTITION_WIDTH - 1: 0] offset2;
        assign offset2 = addr2[PARTITION_WIDTH - 1 : 0]; 
        assign p_addr_next2 = addr2[ADDR_WIDTH - 1 : PARTITION_WIDTH] + 1;
        assign p_addr_curr2 = addr2[ADDR_WIDTH - 1 : PARTITION_WIDTH];
        genvar i;
        generate
            for(i = 0 ; i < (1 << PARTITION_WIDTH) ; i = i + 1) begin: gen_p_addr1
                assign p_addr1[i] = (i < offset1) ? p_addr_next1 : p_addr_curr1;
            end
            for(i = 0 ; i < (1 << PARTITION_WIDTH) ; i = i + 1) begin: gen_p_addr2
                assign p_addr2[i] = (i < offset2) ? p_addr_next2 : p_addr_curr2;
            end
            for(i = 0 ; i < (1 << PARTITION_WIDTH) ; i = i + 1) begin: gen_p_wr_wn1
                assign p_wr_en1[i] = wr_en1;
            end
            for(i = 0 ; i < (1 << PARTITION_WIDTH) ; i = i + 1) begin: gen_wr_en2
                assign p_wr_en2[i] = wr_en2;
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
        input wire [32 - 1 : 0] hw_active,
        input wire [128 * 16 - 1 : 0] curr_pix_raw,
        input wire [256 - 1 : 0] rd_data,
        output wire [RAM_ADDR_WIDTH - 1 : 0] rd_addr,
        output wire [RAM_ADDR_WIDTH / 2 - 1 : 0] mvx,
        output wire [RAM_ADDR_WIDTH / 2 - 1 : 0] mvy,
        output wire [32 - 1 : 0] sad,
        output wire hw_done
    );
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
                assign rd_addr = {dir == DIR_DOWN ? y_next : (y_next - 15), x_next};
            end
            // abs stage
            reg [128 - 1 : 0] abs_prev_pix [16 - 1 : 0], abs_prev_pix_next [16 - 1 : 0];
            reg [16 - 1 : 0] abs_abs [16 - 1 : 0][16 - 1 : 0];
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] abs_x, abs_x_next;
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] abs_y, abs_y_next;
            // adder1 stage
            reg [16 - 1 : 0] adder11_abs [16 - 1 : 0][16 - 1 : 0], adder11_abs_next [16 - 1 : 0][16 - 1 : 0];
            reg [16 - 1 : 0] adder11_sub_row_sad [16 - 1 : 0][4 - 1 : 0];
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] adder11_x, adder11_x_next;
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] adder11_y, adder11_y_next;
            // adder1 stage
            reg [16 - 1 : 0] adder1_sub_row_sad [16 - 1 : 0][4 - 1 : 0], adder1_sub_row_sad_next [16 - 1 : 0][4 - 1 : 0];
            reg [16 - 1 : 0] adder1_row_sad [16 - 1 : 0];
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] adder1_x, adder1_x_next;
            reg [RAM_ADDR_WIDTH / 2 - 1 : 0] adder1_y, adder1_y_next;
            // adder2 stage
            reg [16 - 1 : 0] adder22_row_sad [16 - 1 : 0], adder22_row_sad_next [16 - 1 : 0];
            reg [16 - 1 : 0] adder22_sub_sad [4 - 1 : 0];
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
            // fetch-fetch done logix
            always @(*) begin
               fetch_x_next = x;
               fetch_y_next = y;
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
                abs_x_next = fetch_x;
                abs_y_next = fetch_y;
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
                adder11_x_next = abs_x;
                adder11_y_next = abs_y;
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
                adder1_x_next = adder11_x;
                adder1_y_next = adder11_y;
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
                adder22_x_next = adder1_x;
                adder22_y_next = adder1_y;
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
                adder2_x_next = adder22_x;
                adder2_y_next = adder22_y;
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
                mintree_sad_next[log2(PIPELINE_NUM)][pipeline_id] = adder2_sad;
                mintree_mvx_next[log2(PIPELINE_NUM)][pipeline_id] = adder2_x;
                mintree_mvy_next[log2(PIPELINE_NUM)][pipeline_id] = adder2_y;
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
                    if(mintree_sad[mintree_id + 1][i * 2] < mintree_sad[mintree_id + 1][i * 2 + 1]) begin
                        mintree_sad_next[mintree_id][i] = mintree_sad[mintree_id + 1][i * 2];
                        mintree_mvx_next[mintree_id][i] = mintree_mvx[mintree_id + 1][i * 2];
                        mintree_mvy_next[mintree_id][i] = mintree_mvy[mintree_id + 1][i * 2];
                    end else begin
                        mintree_sad_next[mintree_id][i] = mintree_sad[mintree_id + 1][i * 2 + 1];
                        mintree_mvx_next[mintree_id][i] = mintree_mvx[mintree_id + 1][i * 2 + 1];
                        mintree_mvy_next[mintree_id][i] = mintree_mvy[mintree_id + 1][i * 2 + 1];
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
                if(15 <= mintree_mvy[0][0] && mintree_mvy[0][0] <= 46 && mintree_sad[0][0] < min_sad) begin
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
                    done_next = 0;
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
    
	module match_v1_0_S00_AXI #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 7
	)
	(
		// Users to add ports here

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
	localparam integer OPT_MEM_ADDR_BITS = 4;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 16
	reg [C_S_AXI_DATA_WIDTH - 1 : 0] slv_reg [17 - 1 : 0];
	wire	 slv_reg_rden;
	wire	 slv_reg_wren;
	reg [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
	integer	 byte_index;

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

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID)
	        begin
	          // slave is ready to accept write address when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_awready <= 1'b1;
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
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID)
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
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID)
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
	wire [C_S_AXI_DATA_WIDTH - 1 : 0] bank;
	assign bank = slv_reg[12];
	wire [C_S_AXI_DATA_WIDTH - 1 : 0] hw_active;
	assign hw_active = slv_reg[13];
	reg [12 - 1 : 0] ram1_wr_addr1;
	wire [12 - 1 : 0] ram1_rd_addr1;
	wire [12 - 1 : 0] ram1_addr1;
	reg [256 - 1 : 0] ram1_wr_data1;
	reg ram1_wr_en1;
	wire [256 - 1 : 0] ram1_rd_data1;
    assign ram1_addr1 = ram1_wr_en1 ? ram1_wr_addr1 : ram1_rd_addr1;
    reg [12 - 1 : 0] ram1_wr_addr2;
    wire [12 - 1 : 0] ram1_rd_addr2;
    wire [12 - 1 : 0] ram1_addr2;
    wire [256 - 1 : 0] ram1_wr_data2;
    wire ram1_wr_en2;
    assign ram1_wr_en2 = 0;
    assign ram1_wr_data2 = 0;
    wire [256 - 1 : 0] ram1_rd_data2;
    assign ram1_addr2 = ram1_wr_en2 ? ram1_wr_addr2 : ram1_rd_addr2;
    ram_t #(.DATA_WIDTH(8), .ADDR_WIDTH(12), .PARTITION_WIDTH(5)) ram1 (
        .clk(S_AXI_ACLK),
        .wr_en1(ram1_wr_en1),
        .wr_data1(ram1_wr_data1),
        .rd_data1(ram1_rd_data1),
        .addr1(ram1_addr1),
        .wr_en2(ram1_wr_en2),
        .wr_data2(ram1_wr_data2),
        .rd_data2(ram1_rd_data2),
        .addr2(ram1_addr2)
    );
	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;
	reg [128 - 1 : 0] curr_pix [16 - 1 : 0];
	reg [128 * 16 - 1 : 0] curr_pix_raw;
	integer i, j, k;
	always @(*) begin
        for(i = 0 ; i < 16 ; i = i + 1) begin
           curr_pix_raw[i * 128 +: 128] = curr_pix[i];
        end
	end
	wire [6 - 1 : 0] mvx1, mvy1;
	wire [32 - 1 : 0] min_sad1;
	wire done1; 
    wire [6 - 1 : 0] mvx, mvy;
    wire [32 - 1 : 0] min_sad;
    wire done;
    assign done = done1;
    assign min_sad = min_sad1;
    assign mvx = mvx1;
    assign mvy = mvy1;
    always @( posedge S_AXI_ACLK ) begin
       if ( S_AXI_ARESETN == 1'b0 ) begin
           for(i = 0 ; i < 17 ; i = i + 1) begin
               slv_reg[i] <= 0;
           end
       end 
       else begin
           if (slv_reg_wren) begin
               slv_reg[axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB]] <= S_AXI_WDATA;
               if(axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] < 12) begin
                   if(bank < 48) begin
                       ram1_wr_addr1 <= {bank[6 - 1 : 0], axi_awaddr[ADDR_LSB+3:ADDR_LSB], 2'b0};
                       ram1_wr_data1 <= {224'b0, S_AXI_WDATA};
                       ram1_wr_en1 <= 1;
                   end else begin
                       ram1_wr_en1 <= 0;
                       if(axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] < 4) begin
                          curr_pix[bank - 48][{axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB], 5'b0} +: 32] <= S_AXI_WDATA;
                      end
                   end
               end else begin
                   ram1_wr_en1 <= 0;
               end
           end else begin
               ram1_wr_en1 <= 0;
               for(i = 0 ; i < 13 ; i = i + 1) begin
                   slv_reg[i] <= slv_reg[i];
               end
               if(done) begin
                   slv_reg[13] <= 0;
                   slv_reg[14] <= mvx;
                   slv_reg[15] <= mvy - 15; 
                   slv_reg[16] <= min_sad;
               end else begin
                   for(i = 13 ; i < 17 ; i = i + 1) begin
                       slv_reg[i] <= slv_reg[i];
                   end
               end
           end
       end
    end    
	match_pipeline #(.RAM_ADDR_WIDTH(12), .PIPELINE_NUM(4)) match_pipeline_1 (
	   .clk(S_AXI_ACLK),
	   .hw_active(hw_active),
	   .curr_pix_raw(curr_pix_raw),
	   .rd_data(ram1_rd_data1),
	   .rd_addr(ram1_rd_addr1),
	   .mvx(mvx1),
	   .mvy(mvy1),
	   .sad(min_sad1),
	   .hw_done(done1)
	);
    
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
	always @(*) begin
        // Address decoding for reading registers
        if(0 <= axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] && axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] < 17) begin
            reg_data_out <= slv_reg[axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB]];
        end else begin
            reg_data_out <= 0;
        end
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
