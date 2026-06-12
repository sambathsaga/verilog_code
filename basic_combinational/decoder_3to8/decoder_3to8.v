module decoder_3to8(
input a,b,c,
output [7:0]m);
assign m= {{a&b&c},
	   {a&b&~c},
	   {a&~b&c},
	   {a&~b&~c},
	   {~a&b&c},
	   {~a&b&~c},
	   {~a&~b&c},
	   {~a&~b&~c}};
endmodule
