module tb;
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]sum;
wire cout;

bcd_adder uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial begin

$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("t=%0t  a=%b  b=%b  cin=%b  sum=%b  cout=%b",$time,a,b,cin,sum,cout);

    a=4'd5; b=4'd3; cin=0; #10;
    a=4'd7; b=4'd5; cin=0; #10;
    a=4'd9; b=4'd9; cin=0; #10;
    a=4'd8; b=4'd1; cin=1; #10;

$finish;
end
endmodule
