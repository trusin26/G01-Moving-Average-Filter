# G01 · Phiếu phân tích: dự đoán trước khi chạy flow

**Ghi chú trung thực:** trước khi viết các dự đoán này, tôi đã xem qua số liệu trong hồ sơ mẫu của giảng viên
(thư mục `reference_sample/`). Vì vậy dự đoán dưới đây không hoàn toàn độc lập. Các mục không có trong hồ sơ mẫu
(sau layout, CTS, công suất, bản cộng thẳng) là phần tôi thật sự chưa biết trước. Mỗi dự đoán đều được lập luận từ
cấu trúc mạch (xem `03_ARCHITECTURE/architecture.md`), không chép số từ hồ sơ mẫu.

**Thời điểm viết:** 2026-10-21 12:57 +07

**Giả định chung:** thư viện `sky130_fd_sc_hd`, chu kỳ 10 ns, I/O delay 1 ns, góc typical 25 °C 1,80 V,
LibreLane Classic flow, `FP_CORE_UTIL = 40`. Kiểm sau khi có CI: số liệu synthesis ở `stat.rpt` trong thư mục
`*yosys*/reports/`; số liệu layout ở `metrics.json`; báo cáo timing ở thư mục `reports/` của run.

**Cách đọc cột tin cậy:** Cao = lập luận chắc từ cấu trúc; Vừa = hợp lý nhưng phụ thuộc công cụ; Thấp = gần như đoán.

---

## Mục 6 · Dự đoán synthesis (RTL → cell)

| # | Câu hỏi | Dự đoán | Lý do | Tin cậy | Thực tế (điền sau) | Giải thích chỗ lệch (điền sau) |
|---|---|---|---|---|---|---|
| 6.1 | Tổng số flip-flop | **56–60** | Đếm tay theo kiến trúc: 32 (cửa sổ) + 2 (`wr_ptr`) + 3 (`count_q`) + 10 (`sum_q`) + 8 (`avg_out`) + 1 (`valid_out`) = 56. Không thể ít hơn vì mọi thanh ghi đều ảnh hưởng ngõ ra. Công cụ có thể nhân bản vài thanh ghi (ví dụ con trỏ) khi tối ưu mux đọc, nên dự đoán lệch lên 0–4 FF | Cao (cận dưới), Vừa (cận trên) | | |
| 6.2 | 24 FF "dư" ngoài 32 FF cửa sổ gồm gì | `sum_q` 10, `avg_out` 8, `count_q` 3, `wr_ptr` 2, `valid_out` 1 = 24 (cộng thêm phần công cụ nhân bản, nếu có) | Mỗi biến trạng thái ngoài cửa sổ mẫu đều là một thanh ghi | Cao | | |
| 6.3 | Tổng số cell sau synthesis | **220–280, điểm giữa khoảng 250** | Ước tính: 56 FF; khoảng 32 mux2 (sky130 không có FF có enable được map sẵn nên enable ghi ô nhớ thành mux2 + FF); khoảng 30 cell cho reset đồng bộ; 8 mux4 đọc ô nhớ; khoảng 50 cell cho bộ cộng và bộ trừ 10 bit; khoảng 10 mux chọn "trừ hay không"; khoảng 20 cell điều khiển; cộng inverter/buffer | Vừa | | |
| 6.4 | Khối nào chiếm nhiều nhất | Theo **số cell**: phần lưu trữ cửa sổ cùng logic enable/reset (32 FF + mux2 + gating) nhiều hơn bộ cộng/trừ. Theo **diện tích**: flip-flop chiếm phần lớn nhất (khoảng 40–50%) vì FF lớn hơn nhiều so với cổng logic | Một FF `dfxtp` rộng gấp vài lần một cổng NAND2 | Vừa | | |
| 6.5 | Phép chia 4 (`>> 2`) tốn bao nhiêu cell | **0 cell** | Chỉ là lấy `sum_next[9:2]`, tức đổi cách đi dây. Lưu ý 8 FF của `avg_out` là chi phí của việc *đăng ký ngõ ra*, không phải của phép chia | Cao | | |
| 6.6 | Đường tới hạn bắt đầu ở đâu, đi qua khối nào | Từ **chân vào `sample_in`** hoặc từ **`wr_ptr`** → (mux đọc) → bộ cộng → bộ trừ → ngõ vào D của `sum_q` / `avg_out`. Tôi nghiêng về đường **từ chân vào `sample_in`** | Đường này đi qua hai chuỗi carry 10 bit nối tiếp và có thêm 1 ns input delay; đường từ `wr_ptr` có thêm mux đọc nhưng không có input delay. Hai đường gần ngang nhau | Thấp (50/50) | | |
| 6.7 | Slack setup ở chu kỳ 10 ns | **Dương, khoảng +3 đến +6 ns** | Cổng sky130 hd chậm cỡ vài phần mười ns mỗi tầng; hai chuỗi carry nối tiếp cộng input delay 1 ns cho tổng trễ ước 4–7 ns, nhỏ hơn 10 ns | Cao (dấu), Vừa (độ lớn) | | |

## Mục 7 · Dự đoán physical (layout)

| # | Câu hỏi | Dự đoán | Lý do | Tin cậy | Thực tế (điền sau) | Giải thích chỗ lệch (điền sau) |
|---|---|---|---|---|---|---|
| 7.1 | Diện tích cell và kích thước core | Diện tích cell khoảng **2000–2500 µm²**; core khoảng **5000–6000 µm²** (cạnh khoảng 70–80 µm) | Cell: 56 FF × khoảng 20 µm² cộng khoảng 190 cell còn lại × khoảng 5–6 µm². Core = diện tích cell / 0,40 (utilization) | Vừa | | |
| 7.2 | Số cell sau layout so với sau synthesis | **Tăng thêm khoảng 100–180 ô** (khoảng +40–70%), chưa tính filler | Thêm tap/endcap theo hàng, buffer cho các cổng vào/ra (khoảng 20), buffer cây clock, buffer sửa timing. Nếu `metrics.json` đếm cả filler thì số tăng gấp nhiều lần | Vừa | | |
| 7.3 | Cây clock (CTS) thêm bao nhiêu buffer | **4–8 buffer clock** cho khoảng 56 FF | Một nút gốc cộng vài buffer lá, mỗi buffer lá đỡ cỡ 10–20 FF | Thấp | | |
| 7.4 | Có gặp PDN-0185 không | **Khả năng gặp khoảng 40%** | Core ước khoảng 70–80 µm, nhỏ hơn bước stripe PDN mặc định (cỡ trăm µm) nên có thể không đủ chỗ. Mạch này lớn hơn các ca nhỏ chỉ vài chục cell (B02, B03) nên không chắc. Nếu gặp: lỗi ở stage Floorplan/PDN, không phải lỗi RTL | Thấp | | |
| 7.5 | Slack setup sau layout so với trước layout | **Vẫn dương, giảm khoảng 0,3–1,5 ns** | Dây thật thêm điện trở và điện dung; clock chuyển từ lý tưởng sang cây clock thật (có skew). Với cell chỉ 250 và core nhỏ, dây ngắn nên độ giảm không lớn | Vừa | | |
| 7.6 | DRC / LVS | **Sạch (0 lỗi)** nếu flow chạy tới cuối. Nếu có lỗi, nghiêng về DRC/antenna ở stage Magic hoặc KLayout, không phải LVS | Flow tự động trên mạch nhỏ, quy tắc đơn giản. "Sạch" chỉ nghĩa là qua các kiểm tra của flow này, không phải sẵn sàng chế tạo | Vừa | | |
| 7.7 | Công suất | **Cấp vài chục đến vài trăm µW**, trong đó cây clock và FF chiếm phần lớn | Mạch nhỏ, 56 FF; leakage ở 130 nm rất nhỏ. Con số phụ thuộc giả định hoạt động chuyển mạch mặc định của công cụ, không đại diện cho dữ liệu thật | Thấp | | |

## Mục 8 · Dự đoán bản cộng thẳng (hồ sơ mẫu không có số này)

So sánh `g01_direct_sum_reference.sv` với bản chính (tích luỹ trượt), cùng điều kiện synthesis. Chỉ điền cột thực tế nếu chạy được bản này.

| # | Câu hỏi | Dự đoán | Lý do | Tin cậy | Thực tế (điền sau) | Giải thích chỗ lệch (điền sau) |
|---|---|---|---|---|---|---|
| 8.1 | Số FF so với bản chính | **Ít hơn khoảng 10** (khoảng 44–50 FF) | Bỏ thanh ghi `sum_q` 10 bit; vẫn cần cửa sổ 32 FF, `avg_out` 8 FF và vài FF điều khiển. Số chính xác tuỳ cách nó lưu cửa sổ | Vừa | | |
| 8.2 | Số cell tổng so với bản chính | **Chênh lệch nhỏ, trong khoảng ±10%; không chắc bên nào nhỏ hơn** | Bản cộng thẳng bớt 10 FF và các mux liên quan, nhưng cần cộng 4 số hạng (ba bộ cộng) thay vì một cộng một trừ. Hai phần này gần triệt tiêu nhau | Thấp | | |
| 8.3 | Độ trễ đường tới hạn so với bản chính | **Tương đương hoặc nhanh hơn một chút (không quá 1,5 ns)** | Cây cộng cân bằng có hai tầng bộ cộng nối tiếp, ngang với cộng rồi trừ của bản chính; bản chính còn có thêm mux đọc và mux chọn trừ | Thấp | | |
| 8.4 | Kết luận dự kiến về lợi thế của tích luỹ trượt khi N = 4 | **Không rõ ràng**; lợi thế chủ yếu chỉ hiện ra khi N lớn, mà N > 4 nằm ngoài phạm vi | Với N = 4, bớt được 1 số hạng cộng nhưng phải trả thêm thanh ghi tổng 10 FF | Thấp | | |

---

## Cách đối chiếu sau khi có CI

1. Điền cột "Thực tế" bằng số trong artifacts của đúng lần chạy CI mà tôi nộp link (ghi tên file và dòng lấy số).
2. Với mỗi dòng lệch quá một nửa mức dự đoán, điền cột "Giải thích chỗ lệch": công cụ làm khác ở đâu, hoặc giả định nào của tôi sai.
3. Không sửa các cột dự đoán sau khi đã chạy flow. Nếu muốn chỉnh quan điểm, thêm một dòng ghi chú có ngày.