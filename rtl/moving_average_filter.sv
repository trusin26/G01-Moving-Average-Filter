`default_nettype none

module moving_average_filter (
    input  wire       clk,
    input  wire       rst_n,
    input  wire [7:0] ui_in,    // Data_In
    input  wire [7:0] uio_in,   // uio_in[0] đóng vai trò Valid_In
    output wire [7:0] uo_out,   // Data_Out
    output wire [7:0] uio_out,  // uio_out[1] đóng vai trò Valid_Out
    output wire [7:0] uio_oe    // Kích hoạt ngõ ra (bắt buộc cho template Tiny Tapeout)
);

    // ==========================================
    // 1. ÁNH XẠ GIAO DIỆN VÀ KHAI BÁO TÍN HIỆU
    // ==========================================
    wire       valid_in  = uio_in[0];
    wire [7:0] data_in   = ui_in;
    
    // Cấu hình uio_oe: Bit 1 là 1 (Output cho Valid_Out), các bit khác là 0 (Input)
    assign uio_oe = 8'b0000_0010; 
    
    // Gắn chặt các bit không dùng của uio_out xuống mức 0 để tránh nhiễu
    assign uio_out[0]   = 1'b0;
    assign uio_out[7:2] = 6'b000000;

    // Các tín hiệu nội bộ (Dây nối và trạng thái thanh ghi)
    logic [1:0] count_q;
    logic [7:0] r0_q, r1_q, r2_q, r3_q;
    logic [9:0] sum_q;

    logic [9:0] ext_data_in, ext_r3;
    logic [9:0] mux_out;
    logic [9:0] sum_add;
    logic [9:0] alu_out; // S_next
    logic       window_full;

    // ==========================================
    // 2. MẠCH TỔ HỢP (Combinational Logic)
    // Ánh xạ: Các khối Toán học, Logic Gate và MUX
    // ==========================================
    
    // So sánh: Cờ window_full bật lên 1 khi Counter đếm đến 3
    assign window_full = (count_q == 2'd3);

    // Mở rộng dữ liệu 8-bit lên 10-bit để cộng trừ không bị tràn
    assign ext_data_in = {2'b00, data_in};
    assign ext_r3      = {2'b00, r3_q};

    // 10-bit MUX 2:1: Chọn trừ mẫu cũ nhất (r3) nếu đầy cửa sổ, ngược lại trừ 0
    assign mux_out = window_full ? ext_r3 : 10'd0;

    // 10-bit Adder (+): Cộng mẫu mới vào tổng tích lũy hiện tại
    assign sum_add = sum_q + ext_data_in;

    // 10-bit Subtractor (-): Trừ đi dữ liệu từ MUX
    assign alu_out = sum_add - mux_out; // Kết quả alu_out chính là S_next

    // Dịch phải 2 bit (chia 4) để lấy trung bình: Bóc tách bit [9:2]
    assign uo_out = sum_q[9:2];

    // Cổng AND Gate tạo ngõ ra Valid_Out
    assign uio_out[1] = valid_in & window_full;


    // ==========================================
    // 3. MẠCH TUẦN TỰ (Sequential Logic)
    // Ánh xạ: Các hộp D-Flip Flop (Bộ đếm, Cửa sổ mẫu, Accumulator)
    // ==========================================
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // Reset bất đồng bộ, xóa sạch toàn bộ thanh ghi về 0
            count_q <= 2'b00;
            r0_q    <= 8'b0;
            r1_q    <= 8'b0;
            r2_q    <= 8'b0;
            r3_q    <= 8'b0;
            sum_q   <= 10'b0;
        end else if (valid_in) begin
            // Chỉ cập nhật trạng thái khi chân 'en' (valid_in) ở mức 1
            
            // a. Cập nhật Counter bão hòa ở mức 3
            if (count_q < 2'd3) begin
                count_q <= count_q + 1'b1;
            end
            
            // b. Dịch chuyển cửa sổ dữ liệu
            r0_q <= data_in;
            r1_q <= r0_q;
            r2_q <= r1_q;
            r3_q <= r2_q;
            
            // c. Cập nhật thanh ghi Tích lũy (Accumulator)
            sum_q <= alu_out;
        end
    end

endmodule