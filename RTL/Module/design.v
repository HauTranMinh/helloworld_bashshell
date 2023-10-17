module SequenceCounter(
  input wire clk,   // Clock input
  output wire [2:0] count  // 3-bit count output
);

  reg [2:0] counter;  // 3-bit counter register

  always @(posedge clk) begin
    // Increment the counter on each clock edge
    if (counter == 3'b111)  // Reset the counter when it reaches 7 (111 in binary)
      counter <= 3'b000;
    else
      counter <= counter + 1;
  end

  assign count = counter;  // Output the counter value

endmodule
