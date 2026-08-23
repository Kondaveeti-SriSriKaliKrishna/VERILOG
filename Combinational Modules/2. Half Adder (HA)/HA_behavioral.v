module HA(
input [7:0] a,b,
output reg [7:0] s,
output reg co);
always @(*) begin
{co,s}=a+b;
end
endmodule
