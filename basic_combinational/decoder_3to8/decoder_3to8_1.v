module decoder_3to8(
input a,b,c,
output reg [7:0]m);
always@(*)begin
   m= {{a&b&c},
      {a&b&~c},
      {a&~b&c},
      {a&~b&~c},
      {~a&b&c},
      {~a&b&~c},
      {~a&~b&c},
      {~a&~b&~c}};
end
endmodule
