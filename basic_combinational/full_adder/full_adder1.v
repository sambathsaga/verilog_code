module fulladder(a,b,cin,s,co);
input a,b,cin;
output s,co;
wire x,y,z;
assign s=a^b^cin;
assign co=a&b|cin&(a^b);
endmodule
