module sr_flipflop(
input s,r,clk,
output reg q,q_bar
);
always@(posedge clk)begin
    case({s,r})
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
            q<=1'bz;
            q_bar<=1'bz;
        end
    default:begin
            q <= 1'bx;
            q_bar <= 1'bx;
        end
    endcase
end
endmodule
