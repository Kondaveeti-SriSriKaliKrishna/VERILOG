module upcounter(
	input clk, rst,
	output reg [2:0] current_val
);
	reg [2:0] next_val;

	always @(*) begin
		if(rst) begin
			next_val <= 3'b000;
		end
		else begin
		//	next_val[2] = (~current_val[2] & ~current_val[1]) | (current_val[2] & ~current_val[0]) | (current_val[2] & ~current_val[0]);
			next_val[2] = (current_val[0] & current_val[1]) ^ current_val[2];
			next_val[1] = current_val[1] ^ current_val[0];
			next_val[0] = ~ current_val[0];
		end
	end
	always @(posedge clk) begin
		if (rst) begin
			current_val <= 3'b000;
		end
		else begin
		current_val <= next_val;
		end
	end
endmodule
