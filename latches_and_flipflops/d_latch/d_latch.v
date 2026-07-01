module d_latch(
input d,en,
output q,q_bar
);
assign q=en?d:q;
assign q_bar=~q;
endmodule
