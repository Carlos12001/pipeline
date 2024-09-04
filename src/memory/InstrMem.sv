

module InstrMem 
#(
    parameter myPROGRAM = "C:/Users/carlos/Repos/pipeline/src/memory/prog3.txt"
)
(
    input  logic [31:0] pc,

    output logic [31:0] instr
);

logic [31:0] ram [127:0];

initial
begin
    $readmemh(myPROGRAM, ram);
end

assign instr = ram[pc>>2];

endmodule