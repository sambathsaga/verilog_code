module fulladder(a,b,cin,s,co);
input a,b,cin;
output reg s,co;
wire x,y,z;
always@(*)begin
s=a^b^cin;
co=a&b|cin&(a^b);
end
endmodule
