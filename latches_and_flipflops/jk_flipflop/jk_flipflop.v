module jk_flipflop(
input clk,j,k,
output reg q,q_bar
);
always@(posedge clk)begin
    case({j,k})
        2'b00:begin
            q<=q;
            q_bar<=~q;
        end
        2'b01:begin
            q<=1'b0;
            q_bar<=1'b1;
        end
        2'b10:begin
            q<=1'b1;
            q_bar<=1'b0;
        end
        2'b11:begin
            q<=~q;
            q_bar<=q;
        end
        default:begin
            q<=1'bx;
            q_bar<=1'bx;
        end
    endcase
end
endmodule
