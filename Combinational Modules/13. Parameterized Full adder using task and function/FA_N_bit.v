`include "fa.v"
module fa_nbit
#(parameter WIDTH=8)
(input [WIDTH-1:0] p,q,
input c,
output [WIDTH-1:0] s,
output cout);
genvar i;
wire [WIDTH:0] w;

assign w[0]=c;
assign cout=w[WIDTH];
generate
for(i=0;i<WIDTH;i=i+1) begin:FAnbit
fa u0(.in1(p[i]),.in2(q[i]),.cin(w[i]),.sum(s[i]),.cout(w[i+1]));
end
endgenerate
endmodule
