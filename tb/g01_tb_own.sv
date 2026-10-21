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

    initial begin
        $dumpfile("/tmp/g01/g01_tb_own.vcd");
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
        $display("G01 OWN TB ALL PASS");
        $finish;
    end
endmodule
