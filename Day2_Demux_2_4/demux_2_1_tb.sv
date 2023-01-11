module demux_2_1_tb();

logic [1:0]y[3:0];
logic [1:0]data;
logic [1:0]select;

demux_2_1 tb(.y(y), .data(data), .select(select));
initial
begin
data[0]=1'b0;
data[1]=1'b0;
select[0]=1'b0;
select[1]=1'b0;
#100 $finish;
end
always #15 data[0]=~data[0];
always #10 data[1]=~data[1];
always #20 select[0]=~select[0];
always #25 select[1]=~select[1];
always@(data or select)
$monitor("At time = %t, Ouput = %p", $time, y);
endmodule;
