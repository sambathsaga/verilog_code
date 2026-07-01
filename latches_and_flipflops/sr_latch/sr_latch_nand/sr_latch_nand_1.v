module sr_latch(
input s,r,
output reg q,q_bar
);
always@(*)begin
    if(!s&&!r)begin
        q=1'bz;q_bar=1'bz;
    end
    else if(!s&&r)begin
        q=1'b1;q_bar=1'b0;
    end
    else if(s&&!r)begin
        q=1'b0;q_bar=1'b1;
    end
    else begin
        q=q;q_bar=q_bar;
    end
end
endmodule
