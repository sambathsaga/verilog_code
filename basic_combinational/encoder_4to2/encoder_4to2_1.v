module encoder_4to2(
input d0,d1,d2,d3,
output reg x,y);
always@(*)begin
x=d2|d3;
y=d1|d3;
end
endmodule
