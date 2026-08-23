`include "mux8x1_dataflow.v"
module tb;
reg  A0,A1,A2,A3,A4,A5,A6,A7,S0,S1,S2;
wire Y;
mux_8x1 dut(A0,A1,A2,A3,A4,A5,A6,A7,S0,S1,S2,Y);
initial begin
repeat (10) begin
	{A7,A6,A5,A4,A3,A2,A1,A0,S2,S1,S0} = $random;
	#2;
	$display("A7=%b,A6=%b,A5=%b,A4=%b,A3=%b,A2=%b,A1=%b,A0=%b,S2=%b,S1=%b,S0=%b,Y=%b",A7,A6,A5,A4,A3,A2,A1,A0,S2,S1,S0,Y);
end
end
endmodule
