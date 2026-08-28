module t_latch (
    input en,
    input rst,
    input t,
    output q
);

	always @(*) begin
    	if (rst)
        	q = 1'b0;
    	else if (en) begin
        	if (t)
            	q = ~q;
    	end
	end
endmodule
