module jk_ff (
    input clk, rst,
    input j, k,
    output reg q
);

	always @(posedge clk) begin
		if(rst)
			q <= 1'b0;
		else begin
    		if (j == 1'b0 && k == 1'b0)
        		q <= q;        // Hold
    		else if (j == 1'b0 && k == 1'b1)
        		q <= 1'b0;    // Reset
    		else if (j == 1'b1 && k == 1'b0)
        		q <= 1'b1;    // Set
   			else
        		q <= ~q;      // Toggle
		end
	end
endmodule
