module clock_divider #(parameter DIV = 50000000)
(
    input clk,
    input reset,
    output reg clk_1hz
);

reg [31:0] count;

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        count <= 0;
        clk_1hz <= 0;
    end
    else
    begin
        if(count == DIV/2-1)
        begin
            clk_1hz <= ~clk_1hz;
            count <= 0;
        end
        else
            count <= count + 1;
    end
end

endmodule