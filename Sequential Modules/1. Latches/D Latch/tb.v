`timescale 1ns/1ps
`include "d_latch_sync.v"
//`include "d_latch_asyn.v"

module tb;
reg en, rst, d;
wire q, qb;

d_latch dut (en, rst, d, q, qb);

initial begin
	en = 0;
	forever #5 en = ~en;
end

initial begin
	rst = 0;
	forever #12 rst = ~rst;
end

initial begin
	d = 0;
	forever #7 d = ~d;
end

initial begin
	#500 $finish;
end

endmodule

