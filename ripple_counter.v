module ripple_counter(
    input reset,
    input clock,
    output [2:0] state
    );
    
    wire w9;
    wire w10;
    wire w11;
    
    T_flip_flop stage_one(
        .T('b1),
        .clock(clock),
        .reset(reset),
        .Q(w9)
    );
    
    T_flip_flop stage_two(
        .T('b1),
        .clock(w9),
        .reset(reset),
        .Q(w10)
    );
    
    T_flip_flop stage_three(
        .T('b1),
        .clock(w10),
        .reset(reset),
        .Q(w11)
    );
    
    assign state[0] = w9;
    assign state[1] = w10;
    assign state[2] = w11;
    
endmodule
