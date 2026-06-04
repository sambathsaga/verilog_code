module fullsubtracter(
input a,b,bin,
output reg d,bo);
always@(*)begin
d=a^b^bin;
bo=a&bin | ~a&b | ~a&bin;
end 
endmodule
