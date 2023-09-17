`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2023 04:30:30 AM
// Design Name: 
// Module Name: Signal_gen_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Signal_gen_tb(
    );
    
 // Inputs
    reg clk = 0;        // 10ns clock
    reg rst = 0;        // Reset signal

    // Outputs
    wire signal;        // Output signal

    // Instantiate the Signal_gen module
    Signal_gen dut (
        .clk(clk),
        .rst(rst),
        .signal(signal)
    );

    // Clock generation
    always begin
        #5 clk = ~clk; // Create a 10ns clock
    end

    initial begin

        // Reset initialization
        rst = 1;
        #10 rst = 0;
        #100;
        rst = 1;
        #10 rst = 0;
    end

endmodule
