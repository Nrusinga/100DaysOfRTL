 module srlatch_tb();
  	logic q;//output
  	logic qbar;//output
  	logic enable;//input
	logic reset;
  	logic s;//input
  	logic r;//input

  	srlatch tb(.q(q), .qbar(qbar), .enable(enable), .reset(reset), .s(s), .r(r));
	initial
	begin
	s=1'b0;
	r=1'b0;
	reset=1'b1;
	enable=1'b0;
	#100 $finish;
	end
	always #40 enable=~enable;
	always #30 s=~s;
	always #20 r=~r;

endmodule