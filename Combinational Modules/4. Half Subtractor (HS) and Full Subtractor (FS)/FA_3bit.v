`include "fs_hs.v"
module fs_3bit(
input [2:0] a,b,
input bin,
output [2:0] diff,
output borr);

wire q1,q2;

fs f1(.a(a[0]),.b(b[0]),.bin(bin),.diff(diff[0]),.borr(q1));
fs f2(.a(a[1]),.b(b[1]),.bin(q1),.diff(diff[1]),.borr(q2));
fs f3(.a(a[2]),.b(b[2]),.bin(q2),.diff(diff[2]),.borr(borr));

endmodule
