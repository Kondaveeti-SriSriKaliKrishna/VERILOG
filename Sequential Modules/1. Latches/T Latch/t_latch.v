module t_latch (
    input en,
    input t,
    output q
);

	always @(*) begin
    	if (en)
        	q = q ^ t;
	end
endmodule
