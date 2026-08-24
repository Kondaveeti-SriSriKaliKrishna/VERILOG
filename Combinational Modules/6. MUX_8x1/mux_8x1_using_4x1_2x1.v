`include "mux4x1.v"
`include "mux_2x1.v"
module mux_8x1(
input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,
output y);
wire w1,w2;

mux_4x1 m1(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.y(w1));
mux_4x1 m2(.i0(i4),.i1(i5),.i2(i6),.i3(i7),.s0(s0),.s1(s1),.y(w2));
mux2x1 m3(.i0(w1),.i1(w2),.sel(s2),.y(y));
endmodule
