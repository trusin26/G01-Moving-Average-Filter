`timescale 1ns/1ps

module g01_tb_own;
    logic       clk = 0;
    logic       rst_n = 0;
    logic       valid_in = 0;
    logic [7:0] sample_in = 0;
    wire        valid_out;
    wire  [7:0] avg_out;

    always #5 clk = ~clk;

    g01_moving_average4 #(.W(8)) dut (
        .clk       (clk),
        .rst_n     (rst_n),
        .valid_in  (valid_in),
        .sample_in (sample_in),
        .valid_out (valid_out),
        .avg_out   (avg_out)
    );

    task automatic send_sample(input logic [7:0] val, input logic vld);
        @(negedge clk);
        valid_in  = vld;
        sample_in = val;
        @(posedge clk);
        #1;
    endtask

    // ---------------------------------------------------------------
    // Mo hinh chuan trong testbench (doc lap voi RTL) dung cho OWN-3.
    // Giu 4 mau gan nhat bang bien 32 bit, KHONG co con tro vong, KHONG co
    // bo tich luy => khong the "sai cung loi" voi RTL.
    // ---------------------------------------------------------------
    logic [31:0] win [0:3];
    int unsigned n_model;
    logic [31:0] exp_avg;

    task automatic model_reset();
        win[0] = 32'd0; win[1] = 32'd0; win[2] = 32'd0; win[3] = 32'd0;
        n_model = 0;
    endtask

    // Gui 1 mau hop le, roi doi chieu voi mo hinh chuan
    task automatic send_and_check(input logic [7:0] val);
        begin
            win[3] = win[2]; win[2] = win[1]; win[1] = win[0];
            win[0] = {24'd0, val};
            n_model = n_model + 1;
            send_sample(val, 1'b1);
            if (n_model < 4) begin
                assert (valid_out == 1'b0)
                    else $fatal(1, "OWN-3 FAIL: mau %0d: valid_out phai = 0 khi chua du 4 mau", n_model);
            end else begin
                exp_avg = (win[0] + win[1] + win[2] + win[3]) >> 2;
                assert (valid_out == 1'b1 && avg_out == exp_avg[7:0])
                    else $fatal(1, "OWN-3 FAIL: mau %0d: ky vong %0d, thuc te %0d (valid_out=%b)",
                                n_model, exp_avg, avg_out, valid_out);
            end
        end
    endtask

    initial begin
        $dumpfile("g01_tb_own.vcd");
        $dumpvars(0, g01_tb_own);

        // Khởi tạo & Reset ban đầu
        rst_n = 0;
        repeat(2) @(posedge clk);
        #1 rst_n = 1;

        // =========================================================
        // CA 1 (OWN-1): Reset giữa chừng khi chưa đủ 4 mẫu
        // =========================================================
        $display("[OWN-1] Test mid-stream reset...");
        send_sample(8'd100, 1'b1);
        send_sample(8'd200, 1'b1);
        assert (valid_out == 1'b0) else $fatal(1, "OWN-1 FAIL: valid_out high too early");

        // Kích hoạt reset giữa chừng
        @(negedge clk);
        rst_n = 0;
        valid_in = 0;
        @(posedge clk);
        #1;
        assert (valid_out == 1'b0 && avg_out == 8'd0) else $fatal(1, "OWN-1 FAIL: reset did not clear output");

        // Nhả reset và nạp lại 4 mẫu mới (40, 40, 40, 40)
        @(negedge clk);
        rst_n = 1;
        send_sample(8'd40, 1'b1);
        assert (valid_out == 1'b0) else $fatal(1, "OWN-1 FAIL: sample 1 after reset should have valid_out=0");
        send_sample(8'd40, 1'b1);
        assert (valid_out == 1'b0) else $fatal(1, "OWN-1 FAIL: sample 2 after reset should have valid_out=0");
        send_sample(8'd40, 1'b1);
        assert (valid_out == 1'b0) else $fatal(1, "OWN-1 FAIL: sample 3 after reset should have valid_out=0");
        send_sample(8'd40, 1'b1);
        assert (valid_out == 1'b1 && avg_out == 8'd40)
            else $fatal(1, "OWN-1 FAIL: expected valid_out=1, avg_out=40, got valid=%b avg=%0d", valid_out, avg_out);
        $display("[OWN-1] PASS");

        // =========================================================
        // CA 2 (OWN-2): valid_in ngắt quãng (xen kẽ valid_in = 0)
        // =========================================================
        $display("[OWN-2] Test intermittent valid_in...");
        // Reset sạch trước khi vào Ca 2
        @(negedge clk);
        rst_n = 0; valid_in = 0;
        @(posedge clk); #1;
        @(negedge clk);
        rst_n = 1;

        send_sample(8'd10,  1'b1); // Mẫu 1
        send_sample(8'd255, 1'b0); // Nhiễu khi valid_in = 0 (mạch phải bỏ qua)
        assert (valid_out == 1'b0) else $fatal(1, "OWN-2 FAIL: unexpected valid_out on invalid cycle");

        send_sample(8'd20,  1'b1); // Mẫu 2
        send_sample(8'd255, 1'b0); // Nhiễu khi valid_in = 0
        send_sample(8'd30,  1'b1); // Mẫu 3
        send_sample(8'd255, 1'b0); // Nhiễu khi valid_in = 0
        assert (valid_out == 1'b0) else $fatal(1, "OWN-2 FAIL: valid_out high before 4th valid sample");

        send_sample(8'd40,  1'b1); // Mẫu 4 -> Kỳ vọng: (10+20+30+40)/4 = 25
        assert (valid_out == 1'b1 && avg_out == 8'd25)
            else $fatal(1, "OWN-2 FAIL: expected avg_out=25, got %0d (valid_out=%b)", avg_out, valid_out);

        // Chu kỳ tiếp theo valid_in = 0 -> valid_out phải hạ xuống 0, avg_out giữ nguyên 25
        send_sample(8'd255, 1'b0);
        assert (valid_out == 1'b0 && avg_out == 8'd25)
            else $fatal(1, "OWN-2 FAIL: valid_out did not drop to 0 when valid_in=0");

        // Mẫu 5 hợp lệ: 50 -> Cửa sổ trượt [20, 30, 40, 50] -> Kỳ vọng: 140/4 = 35
        send_sample(8'd50,  1'b1);
        assert (valid_out == 1'b1 && avg_out == 8'd35)
            else $fatal(1, "OWN-2 FAIL: expected avg_out=35, got %0d", avg_out);

        $display("[OWN-2] PASS");

        // =========================================================
        // CA 3 (OWN-3): CA BIEN SO HOC - bon mau 255 lien tiep (tong = 1020)
        // Bat loi: tich luy rong chua du W+2 bit (tran). Cac ca khac co tong
        // cua so toi da chi 255 nen KHONG bat duoc loi nay.
        // Chuoi: 255 x6, roi 0 x4
        //   mau 1..3 : valid_out = 0
        //   mau 4    : 255 (tong 1020 - sat gioi han 10 bit; tran 8 bit se ra 63)
        //   mau 5,6  : 255 (buoc on dinh: sum_q + x = 1275 > 1023 bi cat modulo
        //              2^10 roi tru mau cu 255 -> van ra 1020: kiem chung so hoc modulo)
        //   mau 7..10: 191, 127, 63, 0 (buoc nhay xuong, kiem phep tru o gia tri lon)
        // =========================================================
        $display("[OWN-3] Test bien tran: bon mau 255 (tong = 1020)...");
        @(negedge clk);
        rst_n = 0; valid_in = 0;
        @(posedge clk); #1;
        @(negedge clk);
        rst_n = 1;
        model_reset();

        repeat (6) send_and_check(8'd255);
        repeat (4) send_and_check(8'd0);
        $display("[OWN-3] PASS");

        $display("G01 OWN TB ALL PASS");
        $finish;
    end
endmodule