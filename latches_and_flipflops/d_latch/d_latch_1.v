module d_latch(
input en,d,
output reg q,
output q_bar
);
always@(*)begin
    case(en)
        1'b0:q=q;
        1'b1:q=d;
    endcase
end
assign q_bar=~q;
endmodule
