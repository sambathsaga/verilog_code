module mux_2to1(
input a,b,s,
output reg y);
always@(*)begin
y=s&b|~s&a;
end
endmodule
