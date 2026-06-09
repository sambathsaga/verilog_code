module encoder_4to2(
input d0,d1,d2,d3,
output x,y);
assign x=d2|d3;
assign y=d1|d3;
endmodule
