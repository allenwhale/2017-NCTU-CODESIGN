module lab2_testbench( );
reg clk = 0;
lab2_tb_wrapper uut(
.reset_rtl_0(1),
.reset_rtl_0_1(1),
.sys_clock(clk)
);
always
#10 clk <= ~clk;
endmodule