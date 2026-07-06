module tb;
reg clk,rst;
reg serial_in;
wire serial_out;
siso_register uut(.clk(clk),.rst(rst),.serial_in(serial_in),.serial_out(serial_out));
initial clk=0;
always #5 clk=~clk;
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t clk=%b rst=%b serial__in=%b shift_reg=%b serial_out=%b",
          $time,clk,rst,serial_in,uut.shift_reg,serial_out);
#5;
rst=1;
serial_in=1'b0;#10;
rst=0;
serial_in=1;#10;
serial_in=1;#10;
serial_in=0;#10;
serial_in=1;#10;
serial_in=0;#40;
$finish;
end
endmodule
