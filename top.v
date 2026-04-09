module top(
    input btnU,
    input btnC,
    output [6:0]led
    );
    
 ripple_counter rc_inst(
    .reset(btnU),
    .clock(btnC),
    .state(led[2:0])
     );
     
  modulo_counter mc_inst(
    .reset(btnU),
    .clk(btnC),
    .out(led[6]),
    .state(led[5:3])
     );

endmodule
