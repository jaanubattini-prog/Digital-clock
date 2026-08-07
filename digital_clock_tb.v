`timescale 1ns/1ps

module digital_clock_tb;

reg clk;
reg reset;

wire [5:0] sec;
wire [5:0] min;
wire [4:0] hour;

digital_clock uut(
    .clk(clk),
    .reset(reset),
    .sec(sec),
    .min(min),
    .hour(hour)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;

    #20;
    reset = 0;

    #700;

    $finish;
end

initial
begin
    $dumpfile("digital_clock.vcd");
    $dumpvars(0,digital_clock_tb);

    $monitor("Time=%0t Hour=%0d Min=%0d Sec=%0d",
             $time,hour,min,sec);
end

endmodule