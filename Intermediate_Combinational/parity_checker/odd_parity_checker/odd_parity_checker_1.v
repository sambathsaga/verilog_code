module odd_parity_checker(
input [3:0]data,
input parity,
output reg error
);
always@(*)begin
error=~(^{data,parity});
end
endmodule
