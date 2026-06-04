module fullsubtracter(
input a,b,bin,
output d,bo);
assign d=a^b^bin;
assign bo= b&bin | ~a&bin |~a&b;
endmodule
