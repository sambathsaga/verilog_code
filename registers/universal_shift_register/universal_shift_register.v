module universal_shift_register(
input clk,rst,serial_left,serial_right,
input [1:0]sel,
input [3:0]parallel_in,
output reg [3:0]q
);
always@(posedge clk)begin
    if(rst)begin
        q<=4'b0000;
    end
    else begin
        case(sel)
            2'b00:
                q<=q;
            2'b01:
                q<={q[2:0],serial_left};
            2'b10:
                q<={serial_right,q[3:1]};
            2'b11:
                q<=parallel_in;
            default:q<=4'b0000;
        endcase
    end
end
endmodule

