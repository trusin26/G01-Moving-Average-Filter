`default_nettype none

module tt_um_g01_moving_average4 (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 1=output, 0=input)
    input  wire       ena,      // always 1 when the design is powered
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    // --------------------------------------------------------
    // GIẢI QUYẾT NỢ KỸ THUẬT:
    // Chân uio[0] được dùng làm Input cho valid_in.
    // Chân uio[1] được dùng làm Output cho valid_out.
    // --------------------------------------------------------

    // Cấu hình hướng (Direction) cho cụm chân uio: 1 là Output, 0 là Input.
    // uio[1] = 1 (Output), các chân uio còn lại = 0 (Input)
    assign uio_oe = 8'b0000_0010;

    // Gán mức 0 cho các chân uio_out không sử dụng để tránh lỗi floating wire (dây lơ lửng)
    assign uio_out[0]   = 1'b0;
    assign uio_out[7:2] = 6'b0000_00;

    // Khởi tạo (Instantiate) lõi G01 Moving Average
    g01_moving_average4 core (
        .clk        (clk),
        .rst_n      (rst_n),
        .valid_in   (uio_in[0]),   // Lấy mẫu từ tín hiệu vào uio[0]
        .sample_in  (ui_in),       // Lấy dữ liệu mẫu từ cụm input chuyên dụng
        .valid_out  (uio_out[1]),  // Trả cờ hợp lệ ra uio[1]
        .avg_out    (uo_out)       // Trả kết quả trung bình ra cụm output chuyên dụng
    );

endmodule