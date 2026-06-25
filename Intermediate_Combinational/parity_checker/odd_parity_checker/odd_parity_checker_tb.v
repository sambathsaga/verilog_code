module tb;
reg [3:0]data;
reg parity;
wire error;

odd_parity_checker uut(.data(data),.parity(parity),.error(error));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t data=%b parity=%b error=%b ",$time,data,parity,error);

    data = 4'b0001; parity = 1; #10;
    data = 4'b0001; parity = 0; #10;
    data = 4'b0011; parity = 0; #10;
    data = 4'b0111; parity = 0; #10;
$finish;
end
endmodule
