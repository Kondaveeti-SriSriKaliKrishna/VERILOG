`timescale 1ns/1ps
`include "dff_nand.v"
module tb;
reg clk, d;
wire q;

dff_nand dut (clk, d, q);

initial begin
	clk = 0;
	forever #5 clk = ~clk;
end

initial begin
	d = 0;
	repeat(50) begin
	#($urandom_range(1, 20)) d = ~d;
end
end

initial begin
	#500 $finish;
end

endmodule

