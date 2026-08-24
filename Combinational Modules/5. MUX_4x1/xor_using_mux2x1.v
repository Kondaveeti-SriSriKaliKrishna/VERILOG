`include "mux_2x1.v"
module xor1(
	input a, b,
	output y
);

mux_2x1 m1(.i0(b), .i1(~b), .s(a), .y(y));

endmodule
