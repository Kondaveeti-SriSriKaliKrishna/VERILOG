//`include "multibit_comparator_dataflow.v"
//`include "nbit_comparator_behavioral.v"
`include "multibit_comparator_behavioral.v"
module tb;
	reg [3:0] a,b;
	wire aGb,aLb,aEb;
	integer i;

multibit_comparator dut(a,b,aGb,aLb,aEb);

	initial begin
 		for(i=0;i<256;i=i+1) begin
 			{a,b}=i;
 			#2;
			 $display("a=%b,b=%b,aGb=%b,aLb=%b,aEb=%b",a,b,aGb,aLb,aEb);
 		end
 	end
 endmodule




