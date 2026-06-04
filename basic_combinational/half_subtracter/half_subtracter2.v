module half_subtracter(
input a,b,
output reg d,bo);
always@(*)begin
d=a^b;
bo=~a&b;
end
endmodule
