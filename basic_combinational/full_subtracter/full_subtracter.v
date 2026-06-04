module fullsubtracter(
input a,b,bin,
output d,bo);
wire v,w,x,y,z;
xor g1(v,a,b);
xor g2(d,v,bin);
not g3(w,a);
and g4(x,b,w);
and g5(y,w,bin);
and g6(z,b,bin);
or g7(bo,x,y,z);
endmodule
