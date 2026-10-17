module RORO_Supreme(
    input [3:0] pc,
    output [31:0] DD,
    output ZF
);

wire [11:0] inst;

ROM_Instrucciones mem_inst(
    .dir(pc),
    .instruccion(inst)
);

RORO nucleo(
    .instruccion(inst),
    .resultado(DD),
    .ZF(ZF)
);

endmodule
