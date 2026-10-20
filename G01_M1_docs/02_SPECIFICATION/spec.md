# G01 · Đặc tả hệ thống

**Phiên bản:** M1 (hoàn thiện lần 1) · Đặc tả này là cơ sở để viết RTL, testbench và đối chiếu kết quả ở các mốc sau.

---

## 1. Bảng giao diện

| Tín hiệu | Chiều | Rộng | Mức tích cực | Ý nghĩa | Giả định |
|---|---|---:|---|---|---|
| `clk` | vào | 1 | cạnh lên | Xung nhịp hệ thống | Một clock duy nhất; mọi tín hiệu vào đồng bộ với `clk` |
| `rst_n` | vào | 1 | mức thấp | Reset đồng bộ toàn bộ trạng thái | Giữ ít nhất 2 chu kỳ clock |
| `valid_in` | vào | 1 | mức cao | Có mẫu mới ở `sample_in` | **Chỉ ở mức cao đúng 1 chu kỳ cho mỗi mẫu.** Giữ cao nhiều chu kỳ thì mạch coi như nhiều mẫu |
| `sample_in[7:0]` | vào | 8 | không áp dụng | Mẫu không dấu 0–255 (từ ADC) | Ổn định khi `valid_in = 1`; không chứa X/Z; khi `valid_in = 0` bị bỏ qua |
| `valid_out` | ra | 1 | mức cao | Kết quả `avg_out` hợp lệ | Xung 1 chu kỳ; chỉ xuất hiện sau mẫu thứ 4 trở đi |
| `avg_out[7:0]` | ra | 8 | không áp dụng | Trung bình trượt 4 mẫu, làm tròn xuống | Chỉ có nghĩa khi `valid_out = 1`; ngoài ra giữ giá trị cũ |

**Tổng bit I/O dữ liệu và điều khiển:** 9 vào + 9 ra = 18, cộng `clk` và `rst_n` là chân chuyên dụng của ô Tiny Tapeout. Ngân sách 24 chân (`ui_in` 8, `uo_out` 8, `uio` 8) được đáp ứng.

### Ánh xạ chân Tiny Tapeout

Đề gán `uio[0]` cho cả `valid_in` (vào) lẫn `valid_out` (ra), gây xung đột chiều. Thiết kế tách hai tín hiệu này ra hai chân khác nhau:

| Chân | Tín hiệu | Chiều | Ghi chú |
|---|---|---|---|
| `ui_in[7:0]` | `sample_in[7:0]` | vào | |
| `uio[0]` | `valid_in` | vào | `uio_oe[0] = 0` |
| `uio[1]` | `valid_out` | ra | `uio_oe[1] = 1`, `uio_out[1] = valid_out` |
| `uio[7:2]` | không dùng | vào | `uio_oe[7:2] = 0`; giá trị bị bỏ qua |
| `uo_out[7:0]` | `avg_out[7:0]` | ra | |

Do vậy `uio_oe = 8'b0000_0010`. Ánh xạ này là quyết định thiết kế để sửa xung đột của đề; nên xác nhận với giảng viên. Wrapper sẽ viết ở M2.

---

## 2. Quy ước chung

- **Signedness:** không dấu (unsigned). `sample_in` và `avg_out` đều 0–255.
- **Clock/reset:** một clock, cạnh lên. Reset đồng bộ, mức thấp; xoá cả 4 ô nhớ mẫu.
- **Độ trễ:** mẫu nhận ở cạnh clock k thì `avg_out` và `valid_out` đã cập nhật ngay sau cạnh k (1 chu kỳ, ngõ ra là thanh ghi).
- **`count_q`:** số mẫu hợp lệ đã nhận, bão hoà tại 4. Trong bảng hành vi dưới đây, `count_q` luôn là giá trị **trước** cạnh clock đang xét.

---

## 3. Bảng hành vi

Giá trị ở các cột "sau cạnh" là giá trị sau cạnh clock đang xét.

| Trạng thái | Điều kiện (trước cạnh) | Cửa sổ và tổng | `count_q`, `wr_ptr` sau cạnh | `valid_out` sau cạnh | `avg_out` sau cạnh |
|---|---|---|---|---|---|
| Reset | `rst_n = 0` (mọi giá trị `valid_in`) | Xoá 4 ô nhớ; `sum_q ← 0` | 0, 0 | 0 | 0 |
| Tạm nghỉ | `rst_n = 1`, `valid_in = 0` | Không đổi | Giữ | 0 | Giữ |
| Nạp, mẫu 1–3 | `valid_in = 1`, `count_q ∈ {0, 1, 2}` | `mem[wr_ptr] ← x`; `sum_q ← sum_q + x` | `count_q + 1`, `wr_ptr + 1` | 0 | Giữ |
| **Mẫu thứ 4** | `valid_in = 1`, `count_q = 3` | `mem[wr_ptr] ← x`; `sum_q ← sum_q + x` (**chưa trừ**) | 4, `wr_ptr + 1` (cuộn về 0) | **1** | `⌊sum_next / 4⌋` |
| Ổn định, mẫu ≥ 5 | `valid_in = 1`, `count_q = 4` | `mem[wr_ptr] ← x`; `sum_q ← sum_q + x − mem[wr_ptr]` (trừ mẫu cũ nhất) | 4, `wr_ptr + 1` | 1 | `⌊sum_next / 4⌋` |

Ghi chú: `sum_next` là giá trị tổng mới tính trong chu kỳ đó; `avg_out` lấy từ `sum_next`, không lấy từ `sum_q`. Mẫu cũ nhất được đọc từ `mem[wr_ptr]` **trước khi** bị ghi đè.

### Phương trình và độ rộng

- Với mẫu hợp lệ thứ n ≥ 4: `avg[n] = ⌊(x[n] + x[n−1] + x[n−2] + x[n−3]) / 4⌋`, tức `sum[9:2]`.
- Tổng lớn nhất: 4 × 255 = 1020. Tổng quát với W bit: 4 × (2^W − 1) = 2^(W+2) − 4 < 2^(W+2), nên `sum_q` cần **W + 2 = 10 bit**. Dùng 8 bit sẽ tràn.
- Làm tròn: luôn xuống (cắt 2 bit thấp), sai số tối đa 3/4 đơn vị.

### Ví dụ minh hoạ (mỗi cạnh clock có `valid_in = 1`, trừ cạnh 8)

| Cạnh | `sample_in` | `count_q` trước | `wr_ptr` trước | Mẫu cũ bị trừ | `sum_q` sau | `valid_out` sau | `avg_out` sau |
|---:|---:|---:|---:|---:|---:|---:|---:|
| 1 | 10 | 0 | 0 | không | 10 | 0 | 0 |
| 2 | 20 | 1 | 1 | không | 30 | 0 | 0 |
| 3 | 30 | 2 | 2 | không | 60 | 0 | 0 |
| 4 | 40 | 3 | 3 | không | 100 | 1 | 25 |
| 5 | 50 | 4 | 0 | 10 | 140 | 1 | 35 |
| 6 | 60 | 4 | 1 | 20 | 180 | 1 | 45 |
| 7 | 70 | 4 | 2 | 30 | 220 | 1 | 55 |
| 8 | (không có mẫu) | 4 | 3 | — | 220 | 0 | 55 |

Kiểm tra cạnh 5: cửa sổ {20, 30, 40, 50} cộng lại 140, chia 4 được 35. Cạnh 8 cho thấy `valid_out` rơi về 0 và `avg_out` giữ nguyên.

---

## 4. Ràng buộc timing và thiết kế (giả định khởi điểm)

| Hạng mục | Giá trị | Ghi chú |
|---|---|---|
| Thư viện | `sky130_fd_sc_hd` | |
| Chu kỳ clock | 10,0 ns | **Giả định để chạy STA**, không phải tần số hoạt động đã chứng minh |
| Input/Output delay | 1,0 ns | Giả định |
| Góc PVT | typical, 25 °C, 1,80 V | Mọi số timing phải ghi kèm điều kiện này |
| Mục tiêu | Slack setup dương ở điều kiện trên | Báo cáo là "đạt slack dương ở chu kỳ giả định", không viết "chạy được ở XXX MHz" |

---

## 5. Danh sách ca kiểm thử

### 5.1 Ca bắt buộc của đề

| ID | Tên | Đầu vào | Kỳ vọng | Bắt lỗi gì |
|---|---|---|---|---|
| CC-1 | Chuỗi hằng số | 8 mẫu bằng 100 | 3 mẫu đầu `valid_out = 0`; từ mẫu 4: `avg_out = 100` (5 kết quả) | Độ lợi DC khác 1; sai chia |
| CC-2 | Bước nhảy | `0,0,0,0,100,100,100,100,100` | Từ mẫu 4: `0, 25, 50, 75, 100, 100` | Tính trung bình theo khối thay vì trượt (sẽ nhảy thẳng lên 100) |
| CC-3 | Chuỗi tăng | `1,2,3,4,5,6,7,8` | Từ mẫu 4: `2, 3, 4, 5, 6` | Con trỏ vòng sai khi cuộn (`wr_ptr` về 0 ở mẫu thứ 5) |
| CC-4 | Cửa sổ chưa đầy | `10, 20, 30`, rồi `40` | 3 mẫu đầu: `valid_out = 0`, `avg_out = 0`; mẫu thứ 4: `valid_out = 1`, `avg_out = 25` | Báo hợp lệ sớm; cờ hợp lệ sai ngưỡng |

### 5.2 Ca tự xây dựng (đề xuất; chọn tối thiểu 2, nên làm nhiều hơn)

Ca CA-TX-1 và CA-TX-2 là hai ca biên được gợi ý trong đề; CA-TX-3 đến CA-TX-6 là phần bổ sung. Mỗi ca đã giải thích sẵn "bắt lỗi gì"; khi nộp, hãy tự chạy, tự ghi kết quả thật.

| ID | Loại | Đầu vào | Kỳ vọng | Bắt lỗi gì mà ca khác không bắt |
|---|---|---|---|---|
| CA-TX-1 | Biên | `0,0,0,255,255,255,255` | Từ mẫu 4: `63, 127, 191, 255`; `sum_q` chạm 1020 | Tràn khi tổng chỉ 8 bit; sai mở rộng bit |
| CA-TX-2 | Biên | `0,0,0,255,0,0,0,0` | Từ mẫu 4: `63, 63, 63, 63, 0` (bốn giá trị 63 liên tiếp) | Sai số làm tròn lớn nhất (255/4 = 63,75); mẫu cũ không được trừ đúng lúc |
| CA-TX-3 | Chức năng | 4 mẫu `10,20,30,40`, giữa các mẫu chèn 2 chu kỳ nghỉ, `sample_in` đổi giá trị bậy khi `valid_in = 0`; sau đó nghỉ 5 chu kỳ với `sample_in = 255` | Đúng một xung `valid_out`, `avg_out = 25`; sau đó `valid_out = 0`, `avg_out` giữ 25 | Cập nhật khi không có `valid_in`; `valid_out` bị kẹt ở mức cao |
| CA-TX-4 | Reset | 4 mẫu 200 (→ `avg_out = 200`), kéo `rst_n = 0` 2 chu kỳ, rồi 3 mẫu 8, rồi mẫu thứ 4 bằng 8 | Sau reset: 3 mẫu đầu không hợp lệ; mẫu thứ 4 cho `avg_out = 8` (không lẫn 200) | Reset không xoá cửa sổ, tổng hoặc bộ đếm |
| CA-TX-5 | Biên | `0,0,0,0,1,1,1,1` | Từ mẫu 4: `0, 0, 0, 0, 1`, và ở mẫu 4 `valid_out = 1` dù `avg_out = 0` | Dùng `avg_out ≠ 0` làm cờ hợp lệ; làm tròn gần nhất thay vì làm tròn xuống (3/4 sẽ ra 1) |
| CA-TX-6 | Ngẫu nhiên | 64 mẫu ngẫu nhiên (seed cố định) | Khớp mô hình Python ở cả 61 kết quả | Lỗi chỉ xuất hiện sau nhiều vòng cuộn con trỏ hoặc ở tổ hợp giá trị hiếm |

### 5.3 Bất biến dự kiến (assertion)

Các bất biến dưới đây viết theo tên tín hiệu nội bộ trong kiến trúc.

| ID | Bất biến | Ý nghĩa |
|---|---|---|
| INV-1 | `sum_q == mem[0] + mem[1] + mem[2] + mem[3]` (sau reset, luôn đúng) | Tổng tích luỹ luôn bằng tổng bốn ô nhớ; đúng cả giai đoạn nạp vì ô chưa ghi bằng 0 sau reset |
| INV-2 | `count_q <= 4` | Bộ đếm bão hoà, không vượt 4 |
| INV-3 | `valid_out → count_q == 4` | Không có kết quả hợp lệ khi chưa đủ 4 mẫu |
| INV-4 | `valid_out → $past(valid_in)` | `valid_out` chỉ xuất hiện sau chu kỳ có mẫu mới (xung 1 chu kỳ) |
| INV-5 | `sum_q <= 1020` | Tổng không vượt tổng lớn nhất của 4 mẫu 8 bit |
| INV-6 | `valid_out → avg_out == sum_q[9:2]` | `avg_out` luôn đồng bộ với `sum_q` khi hợp lệ |
