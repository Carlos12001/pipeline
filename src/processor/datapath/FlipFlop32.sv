//  KEYWORDS: FlipFlop32.
//  PURPOSE: An RTL modelling flipflop for 32bits.

module FlipFlop32

//-----------------Ports-----------------\\
(
    input logic reset_n,
    input logic clock,
    input logic [31:0] d,
	 
    output logic [31:0] q
);

//-----------------Output logic-----------------\\

always_ff @(posedge clock or negedge reset_n) begin
    if (!reset_n)
        q <= 32'b0;
    else
        q <= d;
end

endmodule
