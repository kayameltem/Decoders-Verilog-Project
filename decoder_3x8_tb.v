`timescale 1ns / 1ps
`include "decoder_3x8.v"

module decoder_3x8_tb;

    reg [3:0] tInput;
    wire [7:0] tD;
    integer i;  //used for iterating for loop.
    decoder_3x8 UUT(.EN(tInput[3]),.A(tInput[2]),.B(tInput[1]),.C(tInput[0]),.D(tD)); //explicit association

initial begin
    tInput = 4'b0111;
    for(i = 0; i<9; i = i+1) begin  //iterates 10 times to produce output
        #10 //delaying time before testing
        tInput = tInput + 1;  //increasing tInput
    end 
end
endmodule
