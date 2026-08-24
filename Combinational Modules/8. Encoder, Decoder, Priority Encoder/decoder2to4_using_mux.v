`include "mux_2x1.v"
module dec2to4(
	input [1:0] i,
	output [3:0] y
);

	mux_2x1 m1(.i0(~i[0]), .i1(1'b0), .s(i[1]), .y(y[0]));
	mux_2x1 m2(.i0(i[0]), .i1(1'b0), .s(i[1]), .y(y[1]));
	mux_2x1 m3(.i0(1'b0), .i1(~i[0]), .s(i[1]), .y(y[2]));
	mux_2x1 m4(.i1(i[0]), .i0(1'b0), .s(i[1]), .y(y[3]));

endmodule
