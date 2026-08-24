`include "xor.v"

module tb;
	reg a, b;
	wire y;

xor1 dut (.*);

	initial begin
		a = 0;
		b = 0;
		#0;
		  $display("a=%b, b=%b, y=%b", a, b, y);
		a = 0;
		b = 1;
		#0;
		  $display("a=%b, b=%b, y=%b", a, b, y);
		a = 1;
		b = 0;
		#0;
		  $display("a=%b, b=%b, y=%b", a, b, y);
		a = 1;
		b = 1;
		#0;
		  $display("a=%b, b=%b, y=%b", a, b, y);
	end
endmodule
	
