module t_ff (
    input clk,
    input rst,
    input t,
    output q
);
	always @(posedge clk) begin
    	if (rst)
        	q <= 1'b0;
    	else if (t)
        	q <= ~q;
	end
endmodule
