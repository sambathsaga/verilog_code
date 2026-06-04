module not_gate(
input a,
output reg b);
always@(*)begin
b=~a;
end
endmodule
