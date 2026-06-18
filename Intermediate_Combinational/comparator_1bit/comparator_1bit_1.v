module comparator_1bit(
input a,b,
output reg [2:0]y
);
always@(*)begin
y[0]=~(a^b);
y[1]=~a&b;
y[2]=a&~b;
end
endmodule
