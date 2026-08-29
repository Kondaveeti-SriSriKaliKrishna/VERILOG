module gray_counter(
	input clk, rst,
	output reg [2:0] gray_count
);
	wire [2:0] next_value;
	
	//next_value[2] logic

	and g1(a1, gray_count[1], ~gray_count[0]);
	and g2(a2, gray_count[2], gray_count[0]);
	or g3(next_value[2], a1, a2);
	
	//next_value[1] logic

	and g4(a3, ~gray_count[2], gray_count[0]);
	and g5(a4, gray_count[1], ~gray_count[0]);
	or g6(next_value[1], a3, a4);

	//next_value[0] logic
	
	xnor g7(next_value[0], gray_count[2], gray_count[1]);


	always @(posedge clk) begin
		if(rst) begin
			gray_count <= 3'b000;
		end
		else begin
			gray_count <= next_value;
		end
	end
endmodule



