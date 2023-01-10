`include "params.vh"
module mux_2_1 (
	input logic [num_of_bits:0]d,
	input logic s,
	output logic y
);

always @(d or s)
begin
if(s) begin
y= d[1];
end
else begin
y= d[0];
end
end
endmodule
