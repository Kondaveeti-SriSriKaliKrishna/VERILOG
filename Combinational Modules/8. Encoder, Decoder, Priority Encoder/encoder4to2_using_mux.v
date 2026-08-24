`include "mux_2x1.v"
module enc4to2(
	input i0, i1, i2, i3,
	output y0, y1
);

	mux_2x1 u1(.i0(i1), . i1(1'b1), .s(i3), .y(y0));
	mux_2x1 u2 (.i0(i2), . i1(1'b1), .s(i3), .y(y1));

endmodule

