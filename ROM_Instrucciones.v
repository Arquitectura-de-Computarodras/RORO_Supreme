//ROM_Instrucciones
module ROM_Instrucciones(
    input [3:0] dir,
    output [11:0] instruccion
);

reg [11:0] mem [0:15];
assign instruccion = mem[dir];

initial begin
    $readmemb("instrucciones.txt", mem);
end

endmodule
