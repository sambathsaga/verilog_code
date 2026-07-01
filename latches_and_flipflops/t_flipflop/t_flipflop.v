module t_flipflop(
input clk,rst,t,
output reg q,q_bar
);
always@(posedge clk)begin
    if (rst)begin
        q<=1'b0;
        q_bar<=1'b1;
    end
    else begin
        case(t)
            1'b0:begin
                q<=q;
                q_bar<=~q;
            end
            1'b1:begin
                q<=~q;
                q_bar<=q;
            end
            default:begin
                q<=1'bx;
                q_bar<=1'bx;
            end
        endcase
    end
end
endmodule
