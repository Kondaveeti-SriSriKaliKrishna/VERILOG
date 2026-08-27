module t_ff (
    input clk,
    input rst,
    input t,
    output reg  q
);

	always @(posedge clk) begin
    	if (rst)
        	q <= 1'b0;
    	else
        	q <= q ^ t;
	end
endmodule
