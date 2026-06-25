module tb;
reg [3:0]bin;
wire[3:0]gray;

binary_to_gray uut(.bin(bin),.gray(gray));

initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t  bin=%b  gray=%b ",$time,bin,gray);

bin = 4'd6;#10;
bin = 4'd4;#10;
bin = 4'd8;#10;
bin = 4'd9;#10;
bin = 4'd5;#10;
$finish;
end
endmodule
