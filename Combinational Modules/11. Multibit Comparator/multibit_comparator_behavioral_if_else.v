module multibit_comparator #(
    parameter N = 8
)(
    input  [N-1:0] a, b,        
    output reg  aGb, aLb, aEb    
);
	always @(*) begin
    	aGb = 1'b0;
        aLb = 1'b0;
        aEb = 1'b0;
        
        if (a > b) begin
            aGb = 1'b01;
        end
        else if (a < b) begin
            aLb = 1'b1;
        end
        else begin
            aEb = 1'b1;
        end
    end
endmodule
   


