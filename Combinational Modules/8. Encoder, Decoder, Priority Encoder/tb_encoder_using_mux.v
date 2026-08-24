`include "enc4to2.v"

module tb;
	reg i0, i1, i2, i3;
	wire y0, y1;
enc4to2 dut(.*);

	initial begin
		repeat (10) begin
			{i0, i1, i2, i3} = $random;
		#1;
		$display("i0=%b,i1=%b,i2=%b,i3=%b,y0=%b,y1=%b", i0, i1, i2, i3, y0, y1);
		end
	end
endmodule
