//ROM

module ROM #(
    parameter FILE_NAME = "initData.txt"
)(
    input [3:0] DirL,
    output [31:0] Data
);

reg [31:0] srom [0:15];
assign Data = srom[DirL];

initial begin
    $readmemh(FILE_NAME, srom);
end

endmodule
