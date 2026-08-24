module tb;
reg [2:0] a;
reg [7:0] b;
reg [8:0] c;
reg [5:0] d;
initial begin
 a=3'b010;
 b={2{a}}; //repetition
 c={3{a}}; //repetition
 d={a,a}; //concatination
 #2;
$display("a=%b,\nb=%b,\nc=%b,\nd=%b",a,b,c,d);
end
endmodule
