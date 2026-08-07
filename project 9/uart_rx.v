module uart_rx(
input clk,
input rst,
input rx,
output reg [7:0] rx_data,
output reg rx_done
);

reg [3:0] bit_count;
reg [9:0] shift_reg;

always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
        bit_count <= 0;
        rx_done <= 0;
    end
    else
    begin
        shift_reg <= {rx, shift_reg[9:1]};

        if(bit_count < 10)
            bit_count <= bit_count + 1;
        else
        begin
            rx_data <= shift_reg[8:1];
            rx_done <= 1;
            bit_count <= 0;
        end
    end
end

endmodule