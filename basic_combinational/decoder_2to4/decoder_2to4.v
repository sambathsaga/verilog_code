module decoder_2to4(
input a,b,
output [3:0]m);
assign m[0]=~a&~b;
assign m[1]=~a&b;
assign m[2]=a&~b;
assign m[3]=a&b;
endmodule
