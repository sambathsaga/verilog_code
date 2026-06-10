module decoder_2to4(
input a,b,
output reg [3:0]m);
always@(*)begin
m={{a&b},{a&~b},{~a&b},{~a&~b}};
end
endmodule
