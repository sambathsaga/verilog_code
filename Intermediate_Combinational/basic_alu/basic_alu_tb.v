module tb;
reg [3:0]a;
reg [3:0]b;
reg [2:0]sel;
wire [3:0]result;
wire carry;
integer i;
basic_alu uut(.a(a),.b(b),.sel(sel),.result(result),.carry(carry));

initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t a=%b b=%b sel=%b carry=%b result=%b",$time,a,b,sel,carry,result);

$display(" test 1 -----result");

a=4'd9;b=4'd7;
for(i=0;i<8;i=i+1)begin
	    sel=i;
#10;
end

 $display("test 2 --------result");

 a=4'd4;b=4'd4;
 for(i=0;i<8;i=i+1)begin
	    sel=i;
#10;
end
 
$finish;
end
endmodule
