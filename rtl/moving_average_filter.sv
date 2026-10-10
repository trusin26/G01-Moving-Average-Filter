`default_nettype none

module moving_average_filter (
    input  wire       clk,
    input  wire       rst_n,
    input  wire [7:0] ui_in,    // Data_In
    input  wire [7:0] uio_in,   // uio_in[0] đóng vai trò Valid_In
    output wire [7:0] uo_out,   // Data_Out
    output wire [7:0] uio_out,  // uio_out[1] đóng vai trò Valid_Out
    output wire [7:0] uio_oe    // Kích hoạt ngõ ra
);

    wire       valid_in  = uio_in[0];
    wire [7:0] data_in   = ui_in;
    
    assign uio_oe = 8'b0000_0010; 
    assign uio_out[0]   = 1'b0;
    assign uio_out[7:2] = 6'b000000;

    logic [1:0] count_q;
    logic [7:0] r0_q, r1_q, r2_q, r3_q;
    logic [9:0] sum_q;
    logic       window_full_q; // Thay đổi quan trọng: Dùng Flip-Flop cho cờ Full

    logic [9:0] ext_data_in, ext_r3;
    logic [9:0] mux_out;
    logic [9:0] sum_add;
    logic [9:0] alu_out; 

    // ==========================================
    // MẠCH TỔ HỢP
    // ==========================================
    assign ext_data_in = {2'b00, data_in};
    assign ext_r3      = {2'b00, r3_q};

    // MUX lấy tín hiệu từ thanh ghi thay vì lệnh tính toán trực tiếp
    assign mux_out = window_full_q ? ext_r3 : 10'd0;
    assign sum_add = sum_q + ext_data_in;
    assign alu_out = sum_add - mux_out; 

    // Ép ngõ ra bằng 0 nếu cửa sổ chưa đầy (Đảm bảo qua bài kiểm tra Ca 3, 4, 5)
    assign uo_out = window_full_q ? sum_q[9:2] : 8'd0;
    assign uio_out[1] = valid_in & window_full_q;

    // ==========================================
    // MẠCH TUẦN TỰ
    // ==========================================
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count_q       <= 2'b00;
            window_full_q <= 1'b0; // Đưa cờ về 0 khi reset
            r0_q          <= 8'b0;
            r1_q          <= 8'b0;
            r2_q          <= 8'b0;
            r3_q          <= 8'b0;
            sum_q         <= 10'b0;
        end else if (valid_in) begin
            // a. Cập nhật Counter và cờ Full
            if (count_q < 2'd3) begin
                count_q <= count_q + 1'b1;
            end else begin
                // Bộ đếm đã đạt 3 ở chu kỳ trước -> Chu kỳ này cửa sổ chính thức đầy
                window_full_q <= 1'b1; 
            end
            
            // b. Dịch cửa sổ
            r0_q <= data_in;
            r1_q <= r0_q;
            r2_q <= r1_q;
            r3_q <= r2_q;
            
            // c. Tích lũy
            sum_q <= alu_out;
        end
    end
endmodule