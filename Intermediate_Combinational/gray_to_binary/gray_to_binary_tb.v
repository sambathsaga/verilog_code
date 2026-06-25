module tb;
reg [3:0]gray;
wire[3:0]bin;

gray_to_binary uut(.gray(gray),.bin(bin));
initial begin

$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor(" time=%0t gray=%b bin=%b ",$time,gray,bin);

gray = 4'd0;#10;
gray = 4'd1;#10;
gray = 4'd3;#10;
gray = 4'd2;#10;
gray = 4'd12;#10;
gray = 4'd13;#10;

$finish;
end
endmodule
