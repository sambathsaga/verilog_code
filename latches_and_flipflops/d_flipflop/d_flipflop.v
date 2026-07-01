module d_flipflop(
input clk,rst,d,
output reg q,q_bar
);
always@(posedge clk)begin
    if (rst)begin
        q<=1'b0;
        q_bar<=1'b1;
    end
    else begin
    case(d)
        1'b0:begin
            q<=d;
            q_bar<=~d;
        end
        1'b1:begin
            q<=d;
            q_bar<=~d;
        end
        default:begin
            q<=1'bx;
            q_bar<=1'bx;
        end
    endcase
end
end
endmodule
