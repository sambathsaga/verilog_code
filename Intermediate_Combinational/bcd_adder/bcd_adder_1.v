module bcd_adder(
input [3:0]a,
input [3:0]b,
input cin,
output reg [3:0]sum,
output reg cout
);

reg [4:0]temp;

always@(*)begin
temp=a+b+cin;

if(temp>9)begin
temp=temp+4'd6;
cout=1;
end
else begin
cout=0;
end
sum=temp[3:0];
end
endmodule
