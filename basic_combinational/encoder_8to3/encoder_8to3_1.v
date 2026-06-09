module encoder_8to3(
input [7:0]d,
output reg x,y,z);
always@(*)begin
x=d[4]|d[5]|d[6]|d[7];
y=d[2]|d[3]|d[6]|d[7];
z=d[1]|d[3]|d[5]|d[7];
end
endmodule
