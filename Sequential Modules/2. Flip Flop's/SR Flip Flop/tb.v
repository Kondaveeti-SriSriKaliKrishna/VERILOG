`timescale 1ns/1ps
`include "sr_ff.v"

module tb;
	reg clk, rst, s, r;
	wire q, qb;

srff dut (.*);

	initial begin
		clk = 0;
		forever #5 clk = ~clk;
	end

	initial begin
		rst = 0;
		forever #7 rst = ~rst;
	end


	initial begin
		s = 0;
		r = 0;
		repeat (30) begin
			#($urandom_range(10,15)) s = ~s;
			#($urandom_range(5,15)) r = ~r;
		end
	end

	initial begin
		#500 $finish;
	end
endmodule






