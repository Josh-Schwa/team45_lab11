module T_flip_flop(
    input T,
    input clock,
    input reset,
    output  Q,
    output notQ
    );
    
    wire w1, w2;
    
    assign w1 = Q ^ T;
    
    D_flip_flop d_inst (
        .D(w1),
        .clock(clock),
        .Q(Q),
        .notQ(notQ),
        .reset(reset)
    );
    
endmodule