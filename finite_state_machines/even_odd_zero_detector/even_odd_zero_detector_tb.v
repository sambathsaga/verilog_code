module tb;
reg clk,rst;
reg[3:0]in;
wire zero,even,odd;
wire [1:0]state_dbg;
even_odd_zero_detector uut(.clk(clk),.rst(rst),.state_dbg(state_dbg),.in(in),.zero(zero),
    .even(even),.odd(odd));

initial clk=0;
always #5 clk=~clk;
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t clk=%b rst=%b in=%b state_dbg=%b zero=%b even=%b odd=%b",$time,clk,rst,in,state_dbg,zero,even,odd);
#5;
 rst = 1;
 in = 0;
 #10;
 
 rst = 0;

    in = 0;  #10;
    in = 2;  #10;
    in = 7;  #10;
    in = 4;  #10;
    in = 0;  #10;
    in = 9;  #10;
    in = 12; #10;

    #10;
    $finish;
end
endmodule
