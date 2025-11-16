module instruction_memory(
    input [31:0] address,
    input reset,
    output [31:0] instruction
    );

    // stack of 1024 32-bit wide registers  
    reg [31:0] Memory [1023:0];
    // If reset is 0 then the output would be 0 otherwise instruction 
    // at the location. I will explain reason behind using 
    // address[31:2] later.
    assign instruction = (reset == 1'b0) ? 32'h00000000 : Memory[address[31:2]];

endmodule