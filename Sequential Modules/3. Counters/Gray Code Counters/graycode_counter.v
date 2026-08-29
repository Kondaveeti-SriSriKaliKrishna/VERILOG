module gray_counter(
	input clk, rst,
	output reg [2:0] gray_count
);
	reg [2:0] bin;

	always @(posedge clk) begin
		if(rst) begin
			gray_count <= 3'b000;
			bin <= 3'b000;
		end
		else begin
			bin <= bin + 1'b1;
			gray_count <= bin ^ (bin >> 1'b1);
		end
	end
endmodule

