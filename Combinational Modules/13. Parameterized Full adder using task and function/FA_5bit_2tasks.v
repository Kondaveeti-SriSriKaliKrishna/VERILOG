module fa_5bit(
input [4:0] a,b,
input cin,
output reg [4:0] s,
output reg carry);

task sum(input [4:0]a,input [4:0]b,input cin); begin
	s=a+b+cin;
	end
endtask

task cout(input [4:0]a,input [4:0]b,input cin); 
reg [5:0] v;
begin
	v=a+b+cin;
	carry=v[5];
end
endtask

always @(*) begin

  sum(a,b,cin);
  cout(a,b,cin);

end
endmodule
