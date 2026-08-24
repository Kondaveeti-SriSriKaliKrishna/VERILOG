module comparator_1bit_behv(
input a,b,
output reg aGb,aLb,aEb);
always @(*) begin
   aGb= (a>b);
   aLb= (a<b);
   aEb= (a==b);
 end
endmodule

   
