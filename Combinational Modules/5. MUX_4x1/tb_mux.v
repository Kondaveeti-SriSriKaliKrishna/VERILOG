`include "mux4x1_dataflow.v"
module tb;
reg i0,i1,i2,i3;
reg [1:0] s;
wire y;
mux_4x1 dut(i0,i1,i2,i3,s,y);
initial begin
repeat (10) begin
 {i0,i1,i2,i3,s}=$random;
   #1;
 $display("i0=%b,i1=%b,i2=%b,i3=%b,s=%b,y=%b",i0,i1,i2,i3,s,y);
 end
 end
 endmodule

