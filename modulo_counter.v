module modulo_counter(
    input clk,
    input reset,
    output out,
    output [2:0] state
    );
    
    wire w1, w2, w3, w4, w5, w6, w7, w8;
    
    full_adder fa_one(
        .A(w1),
        .B(1'b1),
        .Cin(1'b0),
        .Cout(w3),
        .sum(w2)
    );
    
    full_adder fa_two(
        .A(w4),
        .B('b0),
        .Cin(w3),
        .Cout(w6),
        .sum(w5)
    );
    
    full_adder fa_three(
        .A(w7),
        .B('b0),
        .Cin(w6),
        .sum(w8)
    );
    
    D_flip_flop D_flip_flop_one(
        .D(w2),
        .clock(clk),
        .Q(w1),
        .reset(dreset)
            );
    
    D_flip_flop D_flip_flop_two(
        .D(w5),
        .clock(clk),
        .Q(w4),
        .reset(dreset)
    );
    
    D_flip_flop D_flip_flop_three(
        .D(w8),
        .clock(clk),
        .Q(w7),
        .reset(dreset)
    );
    
    assign state[0] = w1;
    assign state[1] = w4;
    assign state[2] = w7;
    
    assign hitpoint = state[2] & state[1] & ~state[0];
    assign dreset = hitpoint | reset;
    assign qout = hitpoint ^ out;
    
    D_flip_flop dff_inst(
        .D(qout),
        .clock(clk),
        .reset(reset),
        .Q(out)
    );
    
endmodule

