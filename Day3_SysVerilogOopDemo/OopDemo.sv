module oopDemo (
	input logic x,
	input logic y,
	output logic sum,
	output logic carry
);

	class add;
		task addNumbers(input logic x,y);
			sum = x + y;
			carry = x*y;
		endtask
		function logic get_sum();
			return sum;
		endfunction
		function logic get_carry();
			return carry;
		endfunction 
	endclass
add aInstance = new;
initial begin
aInstance.addNumbers(1,1);
$display("Sum is %p", aInstance.get_sum());
$display("Carry is %p", aInstance.get_carry());
end
endmodule