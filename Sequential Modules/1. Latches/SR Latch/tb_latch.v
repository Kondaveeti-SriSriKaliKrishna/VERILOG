`timescale 1ns/1ps
`include "sr_latch.v"

module tb;
	reg clk, s, r;
	wire q, qb;

sr_latch dut (.*);

	initial begin
		clk = 0;
		forever #5 clk = ~clk;
	end

	initial begin
   		 s = 0;
   		 r = 0;

   	 	// Hold
   	 	#20;

   	 	// Set
   	 	s = 1;
   	 	#10;
   	 	s = 0;

   	 	// Hold
   	 	#20;

   	 	// Reset
   	 	r = 1;
   	 	#10;
   	 	r = 0;

   	 	// Hold
   	 	#20;

   	 	// Illegal state
   	//	s = 1;
   	//	r = 1;
   	 //	#10;

   	 	s = 0;
   	 	r = 0;

   	 	#20 $finish;
	end

	always @(s or r or clk)
    $display("t=%0t, clk=%b, s=%b, r=%b, q=%b, qb=%b", $time, clk, s, r, q, qb);

endmodule






