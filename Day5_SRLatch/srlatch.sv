module srlatch (
	output logic q,
	output logic qbar,
	input logic enable,
	input logic reset,
	input logic s,
	input logic r
);


always @ (enable or s or r or reset) begin
if (reset) begin
  q = 0;
  qbar = 1;   
end else if (enable) begin
if (s!=r) begin
  q = s;
  qbar = r;
end else if (s==1 && r==1) begin
  q = 1'bZ;
  qbar = 1'bZ;
end
end
end
endmodule