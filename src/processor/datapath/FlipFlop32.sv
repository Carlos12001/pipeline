module FlipFlop32(
    input logic reset_n,
    input logic clock,
    input logic [31:0] d,
    output logic [31:0] q
);

always_ff @(posedge clock or negedge reset_n) begin
    if (!reset_n)
        q <= 32'b0;
    else
        q <= d;
end

endmodule
