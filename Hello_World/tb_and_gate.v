`timescale 1ns/1ps

module tb_and_gate;
    reg tb_a;
    reg tb_b;
    wire tb_y;

    // Connect the testbench to your design
    and_gate uut (
        .a(tb_a),
        .b(tb_b),
        .y(tb_y)
    );

    // Provide the test signals over time
    initial begin
        tb_a = 0; tb_b = 0;
        #10 tb_a = 0; tb_b = 1;
        #10 tb_a = 1; tb_b = 0;
        #10 tb_a = 1; tb_b = 1;
        #10 $stop; 
    end
endmodule