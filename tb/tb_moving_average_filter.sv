`default_nettype none
`timescale 1ns/1ps

module tb_moving_average_filter;

    // Các tín hiệu kết nối
    logic       clk;
    logic       rst_n;
    logic [7:0] ui_in;
    logic [7:0] uio_in;
    logic [7:0] uo_out;
    logic [7:0] uio_out;
    logic [7:0] uio_oe;

    // Khởi tạo DUT (Device Under Test)
    moving_average_filter uut (
        .clk(clk),
        .rst_n(rst_n),
        .ui_in(ui_in),
        .uio_in(uio_in),
        .uo_out(uo_out),
        .uio_out(uio_out),
        .uio_oe(uio_oe)
    );

    // Tạo xung nhịp 10ns
    always #5 clk = ~clk;

    // Biến đếm phục vụ tự động kiểm tra
    int fail_count = 0;
    int test_count = 0;

    // Hàm (Task) tự động so sánh và in log
    task check(input string test_name, input logic [7:0] expected_out, input logic expected_valid);
        begin
            test_count++;
            // So sánh giá trị thực tế với kỳ vọng
            if (uo_out !== expected_out || uio_out[1] !== expected_valid) begin
                $display("FAIL  %s : Ky vong out=%d valid=%b | Thuc te out=%d valid=%b", 
                         test_name, expected_out, expected_valid, uo_out, uio_out[1]);
                fail_count++;
            end else begin
                $display("ok    %s : out=%d valid=%b", test_name, uo_out, uio_out[1]);
            end
        end
    endtask

    initial begin
        // Thiết lập dạng sóng
        $dumpfile("sim/waveform.vcd");
        $dumpvars(0, tb_moving_average_filter);

        $display("================================================");
        $display(" G01 — kiem tra tu dong Moving Average Filter");
        $display("================================================");

        // Khởi tạo trạng thái ban đầu
        clk = 0;
        rst_n = 0;
        ui_in = 8'd0;
        uio_in = 8'd0; 

        // ----------------------------------------------------
        // CHẠY CÁC CA KIỂM TRA (TEST CASES)
        // ----------------------------------------------------
        
        // Ca 1: Reset - Mọi thứ phải về 0
        #15; 
        rst_n = 1;
        check("Ca 1  reset nguyen ban", 8'd0, 1'b0);

        // Ca 2: Không cấp en (valid_in = 0) dù có nhiễu ở data_in
        #10;
        ui_in = 8'd100; // Bơm nhiễu
        check("Ca 2  en=0 -> dung yen", 8'd0, 1'b0);

        // Bật Valid_In bắt đầu xử lý
        #10;
        uio_in[0] = 1'b1; 
        
        // Ca 3: Nạp mẫu 1 (Giá trị 10)
        ui_in = 8'd10;
        #10;
        check("Ca 3  Nap mau 1 (10) -> chua day", 8'd0, 1'b0);

        // Ca 4: Nạp mẫu 2 (Giá trị 20)
        ui_in = 8'd20;
        #10;
        check("Ca 4  Nap mau 2 (20) -> chua day", 8'd0, 1'b0);

        // Ca 5: Nạp mẫu 3 (Giá trị 30)
        ui_in = 8'd30;
        #10;
        check("Ca 5  Nap mau 3 (30) -> chua day", 8'd0, 1'b0);

        // Ca 6: Nạp mẫu 4 (Giá trị 40) - Cửa sổ đầy
        // Trung bình: (10 + 20 + 30 + 40) / 4 = 25
        ui_in = 8'd40;
        #10;
        check("Ca 6  Nap mau 4 (40) -> day cua so, out=25", 8'd25, 1'b1);

        // Ca 7: Nạp mẫu 5 (Giá trị 50) - Dịch cửa sổ, loại bỏ 10
        // Trung bình: (20 + 30 + 40 + 50) / 4 = 35
        ui_in = 8'd50;
        #10;
        check("Ca 7  Nap mau 5 (50) -> dich cua so, out=35", 8'd35, 1'b1);
        
        // Ca 8: Ngắt en (valid_in = 0) giữa chừng
        // Ngõ ra uo_out phải giữ nguyên 35, ngõ ra Valid_Out phải rớt về 0
        uio_in[0] = 1'b0;
        ui_in = 8'd200; // Cố tình bơm nhiễu để xem có lọt vào không
        #10;
        check("Ca 8  en=0 giua chung -> giu out=35, ngat valid", 8'd35, 1'b0); 

        // ----------------------------------------------------
        // TỔNG HỢP KẾT QUẢ ĐÁNH GIÁ
        // ----------------------------------------------------
        $display("------------------------------------------------");
        $display(" Da kiem: %0d phep so sanh", test_count);
        if (fail_count == 0)
            $display(" Ket qua: ALL TESTS PASSED");
        else
            $display(" Ket qua: FAIL (%0d loi)", fail_count);
        $display("------------------------------------------------");

        #10 $finish;
    end
endmodule