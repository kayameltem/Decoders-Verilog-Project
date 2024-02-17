`timescale 1ns / 1ps
`include "decoder_4x16.v"

module decoder_4x16_tb;
    reg [3:0] tInput;
    wire [15:0] tOutputs ;
    integer i; //neded for itereating for loop
    
    decoder_4x16 UUT(.outputs(tOutputs),.inputs(tInput));
    
    initial begin
    tInput = 4'b0;  //initial input
    for(i =  0;i <16;i = i+1) begin
        #20
        tInput = tInput +1; //increasing input by 1
        
    end
end
endmodule