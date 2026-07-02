module master_slave_ff(
input clk,rst,d,
output reg q,q_bar
);
reg master;
always@(clk or d or rst)begin
    if(rst)
        master<=1'b0;
    else if(clk)
        master <= d;
end
always@(clk or master or rst)begin
    if(rst)begin
        q<=1'b0;
        q_bar<=1'b1;
    end
    else if(!clk)begin
        q<=master;
        q_bar<=~master;
    end
end
endmodule
