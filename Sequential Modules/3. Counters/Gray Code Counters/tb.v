`timescale 1ns/1ps
`include "graycounter_gatelevel_dff.v"

module tb;
	reg clk, rst;
	wire [2:0] gray_count;

gray_counter dut (.*);

	always #5 clk = ~clk;

	initial begin
		$monitor("time=%.1f, clk=%b, rst=%b, gray_count=%b", $realtime, clk, rst, gray_count);
		clk = 0;
		rst = 1;
		#20;
		rst = 0;
		#90;
		$finish;
	end
endmodule


