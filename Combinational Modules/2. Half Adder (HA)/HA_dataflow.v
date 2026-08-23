module HA(
input [7:0] a,b,
output [7:0] s,
output co);
assign {co,s}=a+b;
endmodule
