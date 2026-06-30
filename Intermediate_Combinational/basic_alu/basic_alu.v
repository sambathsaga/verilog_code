module basic_alu(
input [3:0]a,b,
input[2:0]sel,
output [3:0]result,
output carry
);
assign {carry, result} = (sel == 3'b000) ? (a+b) :
                         (sel == 3'b001) ? (a-b) :
                         (sel == 3'b010) ? {1'b0, (a & b)} :
                         (sel == 3'b011) ? {1'b0, (a | b)} :
                         (sel == 3'b100) ? {1'b0, (a ^ b)} :
                         (sel == 3'b101) ? {1'b0, (~a)} :
                         (sel == 3'b110) ? (a << 1) :(a >> 1);

endmodule
