module tb;
reg clk,rst,serial_in;
wire [3:0]parallel_out;
sipo_register uut(.clk(clk),.rst(rst),.serial_in(serial_in),.parallel_out(parallel_out));
initial clk=0;
always #5 clk=~clk;
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t clk=%b rst=%b serial_in=%b parallel_out=%b",$time,clk,rst,serial_in,parallel_out);
rst=1;
serial_in=1'b0;
#10;
rst=0;
serial_in=1'b1;#10;
serial_in=1'b0;#10;
serial_in=1'b1;#10;
serial_in=1'b1;#10;
$finish;
end
endmodule
