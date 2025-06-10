`timescale 1ns / 1ps
module carrylookaheadtb();
reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire cout;
carrylook dut(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
initial begin
a=4'b0000;
b=4'b0000;
cin=1'b0;
end
always #2 a=a+1'b1;
always #4 b=b+1'b1;
endmodule

//NB: U CAN INCLUDE FINISH SYNTAX TO STOP
