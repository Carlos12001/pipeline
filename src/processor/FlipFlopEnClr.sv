//  KEYWORDS: FlipFlopEnClr.
//  PURPOSE: An RTL modelling for a parametrized FlipFlop Enable Clear

module FlipFlopEnClr
//-----------------Parameters-----------------\\
#(
    parameter WIDTH = 32  
)
//-----------------Ports-----------------\\
(
    input logic reset_n,
    input logic clock,
	 input logic en,
	 input logic clr,
    input logic [(WIDTH-1):0] d,
	 
    output logic [(WIDTH-1):0] q
	 
);

//-----------------Output logic-----------------\\
	always_ff @(posedge clock or negedge reset_n) begin
		 if (!reset_n)
			  q <= {WIDTH{1'b0}};
		 else if (en)
			if (clr) q <= {WIDTH{1'b0}};
			else       q <= d;
	end
endmodule
