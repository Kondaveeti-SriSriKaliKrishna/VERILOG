module tb;
reg [2:0] a = 3'b101;
reg [4:0] b = 5'b10010;
reg c = 1'b1;
reg [18:0] catr;
reg [7:0] catp;
reg [7:0] catq;
reg [7:0] cats;
reg [7:0] catt;
parameter SIZE=4;
reg [SIZE-1:0] valid;
reg [SIZE-1:0] ready;

initial begin
	catr = {{4{a}},b,{2{c}}}; //  19'b101101101101_10010_11
	valid = {SIZE{1'b1}};
	ready = {SIZE{1'b1}};

	catp='bx;
	catq='b0;
	cats='b1;
	catt='bz;

	wait(ready=={SIZE{1'b1}}); //check if all bits of ready at 1

$display("Handshaking is done,\na=%b,\nb=%b,\nc=%b,\ncatr=%b,\nvalid=%b,\nready=%b",a,b,c,catr,valid,ready);

$display("catp=%0b,\ncatq=%0b,\ncats=%0b,\ncatt=%0b",catp,catq,cats,catt);

end
endmodule

