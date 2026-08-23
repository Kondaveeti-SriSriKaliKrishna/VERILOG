//`include "multibit_comparator_dataflow.v"
`include "multibit_comparator_struc.v"
//`include "comparator_2bit_behv.v"
//`include "comparator_2bit_struc.v"
module tb;
reg [3:0] a,b;
wire aGb,aLb,aEb;
integer i;
comparator_4bit_struc dut(a,b,aGb,aLb,aEb);
initial begin
 for(i=0;i<256;i=i+1) begin
 {a,b}=i;
 #2;
 $display("a=%b,b=%b,aGb=%b,aLb=%b,aEb=%b",a,b,aGb,aLb,aEb);
 end
 end
 endmodule




