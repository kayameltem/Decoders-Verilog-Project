`timescale 1ns / 1ps

module decoder_3x8(

    input A,B,C,EN, // EN -> enable input
    output [7:0] D

 );
    //assigning outputs D0 to D7
    
    assign D[0] = EN & ~A & ~B & ~C;
    assign D[1] = EN & ~A & ~B & C;
    assign D[2] = EN & ~A & B & ~C;
    assign D[3] = EN & ~A & B & C;
    assign D[4] = EN & A & ~B & ~C;
    assign D[5] = EN & A & ~B & C;
    assign D[6] = EN & A & B & ~C;
    assign D[7] = EN & A & B & C;
endmodule
