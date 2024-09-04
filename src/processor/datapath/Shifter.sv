//  KEYWORDS: Shifter.
//  PURPOSE: An RTL modelling for a parametrized left/right shifter.

module Shifter
//-----------------Parameters-----------------\\ 
#(
    parameter SHAMT = 2,
              DIRC  = 1,
              BUS   = 32
)
//-----------------Ports-----------------\\
(
    input  logic [(BUS-1):0] data_in,

    output logic [(BUS-1):0] data_out
);

//-----------------Output logic-----------------\\
assign data_out = DIRC? (data_in << SHAMT) : (data_in >> SHAMT);
    
endmodule