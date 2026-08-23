`include "decoder.v"
module tb;
reg [1:0] d;
wire [3:0] y;
decoder_2x4 dut(d,y);
initial begin
repeat (10) begin
d=$random;
#2;
$display("d=%b,y=%b",d,y);
end
end
endmodule

