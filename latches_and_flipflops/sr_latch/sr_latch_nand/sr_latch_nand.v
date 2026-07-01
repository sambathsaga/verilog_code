module sr_latch(
input s,r,
output q,q_bar
);
assign q=~(s&q_bar);
assign q_bar=~(r&q);
endmodule
