module dff_with_en(
input clk,en,d,
output reg q,q_bar
);
always@(posedge clk)begin
    if(en)begin
        q<=d;
        q_bar<=~d;
    end
    else begin
        q<=q;
        q_bar<=q_bar;
    end
end
endmodule
