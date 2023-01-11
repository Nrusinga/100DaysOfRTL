module demux_2_1 ( 
	input logic [1:0]data,
	input logic [1:0]select,
	output logic [1:0]y[3:0]
);

logic [1:0]temp[3:0];
always @(data or select)
begin
temp = {2'b00,2'b00,2'b00,2'b00};
temp[select] = data;
y = temp;
end
endmodule