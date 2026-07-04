module tb;
reg clk,rst,load;
reg [3:0]d;
wire serial_out;
piso_register uut(.clk(clk),.rst(rst),.load(load),.d(d),.serial_out(serial_out));
initial clk=0;
always #5 clk=~clk;
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t clk=%b rst=%b load=%b d=%b serial_out=%b",$time,clk,rst,load,d,serial_out);
    rst=1;//rst
    load=0;
    d=4'b0000;#10;

    rst=0;//load
    load=1;
    d=4'b1010;#10;

    load=0;//shift operation.
    #50;
$finish;
end
endmodule
