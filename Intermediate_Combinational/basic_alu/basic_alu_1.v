module basic_alu(
input [3:0]a,
input [3:0]b,
input [2:0]sel,
output reg[3:0]result,
output reg carry
);
always@(*)begin
carry=1'b0;
   case(sel)
	   3'b000: begin
             {carry,result}= a+b;
     end
     3'b001: begin
             {carry,result}=a-b;
     end
     3'b010: begin
             result = a&b;
     end
     3'b011: begin
             result = a|b;
     end
     3'b100: begin
             result = a^b;
     end
     3'b101: begin
             result = ~a;
     end
     3'b110: begin
             result = a<<1;
     end
     3'b111: begin
             result = a>>1;
     end

     default: begin
	     result = 4'b0000;
               carry = 1'b0;
       end
endcase
end
endmodule

