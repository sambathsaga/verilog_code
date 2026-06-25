module bcd_adder(
input [3:0]a,
input [3:0]b,
input cin,
output [3:0]sum,
output cout
);
wire[4:0]binary_sum;
wire[4:0]corrected_sum;
wire correction;

assign binary_sum = a + b + cin;
assign correction = (binary_sum > 5'd9);
assign corrected_sum = correction ? (binary_sum + 5'd6) : binary_sum;
assign sum = corrected_sum[3:0];
assign cout = corrected_sum[4];

endmodule
