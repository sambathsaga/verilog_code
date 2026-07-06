module siso_register(
input clk,rst,
input serial_in,
output reg serial_out
);
reg [3:0]shift_reg;
always@(posedge clk)begin
    if(rst)begin
        serial_out<=1'b0;
    end
    else begin
        serial_out<=shift_reg[0];
        shift_reg<={serial_in,shift_reg[3:1]};
    end
end
endmodule
