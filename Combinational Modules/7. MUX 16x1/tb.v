`include "mux_16x1.v"

module tb;
	reg [15:0] i;
	reg [3:0] s;
	wire y;
mux_16x1 dut (.*);
	

	initial begin
		repeat (10) begin
			i = $random;
			s = $random;
			#1;
			$display("i=%b, s=%b, y=%b", i, s, y);
		end
	end
endmodule
