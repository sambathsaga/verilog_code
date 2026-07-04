module piso_register(
input clk,rst,load,
input [3:0]d,
output reg serial_out
);
reg [3:0]shift_reg;
always@(posedge clk) begin
    if (rst) begin
        shift_reg<=4'b0000;
        serial_out<=1'b0;
    end
    else if(load)begin
        shift_reg<=d;
    end
    else begin
        serial_out<=shift_reg[3];
        shift_reg<={shift_reg[2:0],1'b0};
    end
end
endmodule
