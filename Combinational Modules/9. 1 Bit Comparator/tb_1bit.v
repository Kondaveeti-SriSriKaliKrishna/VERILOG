//`include "comparator_1bit_dataflow.v"
//`include "comparator_1bit_behv.v"
`include "comparator_1bit_struc.v"
module tb;
reg a,b;
wire aGb,aLb,aEb;
integer i;
comparator_1bit_dataflow dut(a,b,aGb,aLb,aEb);
initial begin
 for(i=0;i<4;i=i+1) begin
 {a,b}=i;
 #2;
 $display("a=%b,b=%b,aGb=%b,aLb=%b,aEb=%b",a,b,aGb,aLb,aEb);
 end
 end
 endmodule


