`timescale 1ns / 1ps
`include "decoder_3x8.v"

module decoder_4x16(
    input [3:0] inputs,
    output [15:0] outputs
);
//explicit association
 decoder_3x8 Decoder1(.B(inputs[1]),.D(outputs[15:8]),.C(inputs[0]),.EN(inputs[3]),.A(inputs[2])); // D0-D7
 decoder_3x8 Decoder2(.B(inputs[1]),.D(outputs[7:0]),.C(inputs[0]),.EN(~inputs[3]),.A(inputs[2])); // D8-D15

 


endmodule
