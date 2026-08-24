`include "hs.v"
module fs(
input a,b,bin,
output borr,diff);
wire w1,w2,w3;

hs u1(.a(a),.b(b),.diff(w1),.borr(w2));
hs u2(.a(w1),.b(bin),.diff(diff),.borr(w3));
or u3 (borr,w2,w3);

endmodule
