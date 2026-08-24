`include "mux_4x1.v"
module mux_16x1(
	input [15:0] i,
	input [3:0] s,
	output y
);
	mux_4x1 m1 (.i(i[3:0]), .s(s[3:2]), .y(n1));
	mux_4x1 m2 (.i(i[7:4]), .s(s[3:2]), .y(n2));
	mux_4x1 m3 (.i(i[11:8]), .s(s[3:2]), .y(n3));
	mux_4x1 m4 (.i(i[15:12]), .s(s[3:2]), .y(n4));
	mux_4x1 m5 (.i({n4, n3, n2, n1}), .s(s[1:0]), .y(y));
endmodule




