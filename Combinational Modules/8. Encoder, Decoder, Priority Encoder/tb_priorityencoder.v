//`include "decoder.v"
`include "priority_enc.v"
module tb;
reg [3:0] d;
wire [1:0] y;
prienc_4x2 dut(d,y);
initial begin
repeat (10) begin
d=$random;
#2;
$display("d=%b,y=%b",d,y);
end
end
endmodule

