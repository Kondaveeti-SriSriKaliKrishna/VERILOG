`timescale 1ns/1ps

`include "upcounter_gatelev_dff.v"

module tb;

	reg clk;
	reg rst;
	wire [2:0] count;

upcounter_gatelevel dut(.*);

	always #5 clk = ~clk;

	initial begin
    	clk = 0;
    	rst = 1;

    	#10;
    	rst = 0;

    	#200;
    	$finish;
	end

	initial begin
    	$monitor("TIME = %0t | CLK = %b | RST = %b | COUNT = %b",
             $time, clk, rst, count);
	end

endmodule
