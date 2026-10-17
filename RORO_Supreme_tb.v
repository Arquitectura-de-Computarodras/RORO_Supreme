module RORO_Supreme_tb ();

reg [3:0] pc;
wire [31:0] DD;
wire ZF;

RORO_Supreme dut (
    .pc(pc),
    .DD(DD),
    .ZF(ZF)
);

reg [31:0] expected_DD [0:15];
reg expected_ZF [0:15];
integer i;
integer errores;

initial begin
    expected_DD[0] = 32'd17;         expected_ZF[0] = 1'b0;
    expected_DD[1] = 32'd21;         expected_ZF[1] = 1'b0;
    expected_DD[2] = 32'd35;         expected_ZF[2] = 1'b0;
    expected_DD[3] = 32'd12;         expected_ZF[3] = 1'b0;
    expected_DD[4] = 32'd60;         expected_ZF[4] = 1'b0;
    expected_DD[5] = 32'd48;         expected_ZF[5] = 1'b0;
    expected_DD[6] = 32'd0;          expected_ZF[6] = 1'b1;
    expected_DD[7] = 32'd9;          expected_ZF[7] = 1'b0;
    expected_DD[8] = 32'd51;         expected_ZF[8] = 1'b0;
    expected_DD[9] = 32'hFFFFFFF7;   expected_ZF[9] = 1'b0; 
    expected_DD[10] = 32'd97;        expected_ZF[10] = 1'b0;
    expected_DD[11] = 32'd0;         expected_ZF[11] = 1'b1;
    expected_DD[12] = 32'd0;         expected_ZF[12] = 1'b1;
    expected_DD[13] = 32'd0;         expected_ZF[13] = 1'b1;
    expected_DD[14] = 32'd1;         expected_ZF[14] = 1'b0;
    expected_DD[15] = 32'd0;         expected_ZF[15] = 1'b1;

    errores = 0;
    $display("==================================================");
    $display("INICIO DE SIMULACION: RORO SUPREME (16 INSTRUCCIONES)");
    $display("==================================================");

    for (i = 0; i < 16; i = i + 1) begin
        pc = i;
        #10; 

        if ((DD === expected_DD[i]) && (ZF === expected_ZF[i])) begin
            $display("[PASS] Dir: %0d | DD: %0d (Hex: %h) | ZF: %b", i, DD, DD, ZF);
        end else begin
            $display("[FAIL] Dir: %0d | Esperado DD: %0d, Obtenido: %0d | Esperado ZF: %b, Obtenido: %b", 
                     i, expected_DD[i], DD, expected_ZF[i], ZF);
            errores = errores + 1;
        end
    end

    $display("==================================================");
    if (errores == 0)
        $display("RESULTADO FINAL: TODAS LAS PRUEBAS FUERON EXITOSAS");
    else
        $display("RESULTADO FINAL: SE ENCONTRARON %0d FALLAS", errores);
    $display("==================================================");
    
    $finish;
end

endmodule
