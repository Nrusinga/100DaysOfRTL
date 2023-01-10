module mux_2_1_tb();

`include "params.vh"
logic y;
logic [1:0]d;
logic s;
mux_2_1 tb(.y(y),.d(d),.s(s));
initial
begin
d[0]=1'b0;
d[1]=1'b0;
s=1'b0;
#100 $finish;
end
always #40 d[0]=~d[0];
always #20 d[1]=~d[1];
always #10 s=~s;
always@(d or s)
$monitor("At time = %t, Output = %d", $time, y);
endmodule;