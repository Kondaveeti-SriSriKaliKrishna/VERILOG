`include "dec2to4_mux.v"
module tb;
	reg [1:0] i;
	wire [3:0] y;

dec2to4 dut (i, y);

	initial begin
		repeat(10) begin
			{i} = $random;
		#1;
		$display("i=%b, y=%b", i, y);
		end
	end
endmodule
