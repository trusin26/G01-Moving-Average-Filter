# G01 · Yêu cầu hệ thống

**Dự án:** Bộ lọc trung bình trượt bốn điểm (4-point Moving Average Filter) · **Mã:** G01 · **Loại mạch:** số, tuần tự
**Phiên bản:** M1 (hoàn thiện lần 1)
**Cách đọc cột *Nguồn*:** *Charter* và *Đề KT2* là yêu cầu lấy từ đề của giảng viên; *Làm rõ* là phần bổ sung để yêu cầu không còn mơ hồ và kiểm chứng được.

---

## 1. Bối cảnh và nhu cầu của tầng trên

G01 là lõi số nằm giữa bộ chuyển đổi ADC 8 bit và mạch hiển thị. Số đo nhiệt độ từ ADC luôn lẫn nhiễu nên con số trên màn hình nhảy liên tục; bộ lọc lấy trung bình của 4 mẫu gần nhất để làm trơn.

```text
Cảm biến nhiệt độ ──▶ ADC 8 bit ──▶ [ G01: trung bình trượt 4 điểm ] ──▶ Giải mã & hiển thị LED
```

**Tầng trên (mạch hiển thị) cần gì ở khối này:**

- Giá trị ra ổn định, chỉ đổi một lần cho mỗi mẫu mới, không có glitch tổ hợp ở ngõ ra (vì vậy ngõ ra là thanh ghi).
- Một cờ báo rõ khi nào kết quả đáng tin: ba mẫu đầu chưa đủ cửa sổ 4 mẫu.
- Không phụ thuộc quan hệ giữa tốc độ clock và tốc độ lấy mẫu: mạch chỉ cập nhật khi `valid_in = 1`.
- Giao diện gọn, vừa ngân sách 24 chân của ô Tiny Tapeout (thiết kế dùng 18 chân).
- Phép chia đơn giản (chia 4 bằng dịch bit) để chi phí phần cứng thấp.

**Các câu hỏi kỹ thuật dự án phải trả lời bằng bằng chứng:**

1. Số flip-flop thực tế sau synthesis so với ước lượng 32 FF của cửa sổ là bao nhiêu, phần dư thuộc về khối nào?
2. Chia cho 4 bằng dịch phải 2 bit tốn bao nhiêu cell, và sau layout có tốn thêm không?
3. Kiến trúc tích luỹ trượt khác gì kiến trúc cộng thẳng 4 mẫu về số FF, số cell và đường tới hạn (đo bằng số liệu nào)?
4. Trước khi đủ 4 mẫu, ngõ ra là gì, và vì sao cần cờ `valid_out` riêng thay vì dựa vào giá trị `avg_out`?

---

## 2. Yêu cầu chức năng và cấu trúc

| ID | Mức | Nguồn | Yêu cầu |
|---|---|---|---|
| REQ-G01-001 | Bắt buộc | Charter | **Chức năng lõi.** Với mỗi mẫu hợp lệ thứ n ≥ 4, đưa ra `avg[n] = ⌊(x[n] + x[n−1] + x[n−2] + x[n−3]) / 4⌋`. Cửa sổ trượt từng mẫu (không phải trung bình theo khối); dữ liệu 8 bit không dấu. |
| REQ-G01-002 | Bắt buộc | Charter | **Giao diện.** 9 bit vào (`sample_in[7:0]`, `valid_in`) và 9 bit ra (`avg_out[7:0]`, `valid_out`), cộng `clk` và `rst_n`. Phải ánh xạ được vào ô Tiny Tapeout (≤ 24 chân) mà không xung đột chân `uio`. |
| REQ-G01-003 | Bắt buộc | Charter | **Cấu trúc.** Mạch số tuần tự, có phần tử nhớ (flip-flop), hoạt động đồng bộ theo một clock, reset đồng bộ mức thấp. |
| REQ-G01-004 | Bắt buộc | Charter | **Quy mô.** Nằm trong giới hạn hợp lý của ô Tiny Tapeout 1×1; đề ước lượng 200–280 cell. Đây là ước lượng sau synthesis; số đo thật ở M3 mới là bằng chứng. Sau layout số ô sẽ tăng thêm (buffer clock, tap/endcap). |
| REQ-G01-005 | Bắt buộc | Làm rõ | **Khởi động.** Ba mẫu hợp lệ đầu tiên không tạo kết quả hợp lệ; `valid_out = 0` cho tới khi đủ 4 mẫu. |
| REQ-G01-006 | Bắt buộc | Làm rõ | **Cờ hợp lệ.** `valid_out` là xung 1 chu kỳ clock, xuất hiện sau mỗi mẫu được nhận khi cửa sổ đã đủ. Không suy ra từ giá trị `avg_out`, vì 0 cũng là một trung bình hợp lệ. |
| REQ-G01-007 | Bắt buộc | Làm rõ | **Độ trễ.** Kết quả của mẫu được nhận ở cạnh clock k xuất hiện ngay sau cạnh đó (độ trễ 1 chu kỳ; ngõ ra là thanh ghi). |
| REQ-G01-008 | Bắt buộc | Làm rõ | **Reset.** `rst_n = 0` xoá toàn bộ trạng thái (cửa sổ mẫu, con trỏ, bộ đếm, tổng, ngõ ra). Sau reset phải nạp lại đủ 4 mẫu mới có kết quả hợp lệ. |
| REQ-G01-009 | Bắt buộc | Làm rõ | **Không tràn.** Mọi mẫu trong 0–255 cho kết quả đúng, kể cả trường hợp tổng lớn nhất 4 × 255 = 1020. |

## 3. Yêu cầu kiểm chứng

| ID | Mức | Nguồn | Yêu cầu |
|---|---|---|---|
| REQ-G01-010 | Bắt buộc | Charter | **Ca gốc.** Vượt qua bốn ca quy định: chuỗi hằng số, bước nhảy, chuỗi tăng dần, cửa sổ chưa đầy. |
| REQ-G01-011 | Bắt buộc | Charter | **Ca tự xây dựng.** Bổ sung ít nhất 2 ca, trong đó có ít nhất 1 ca biên; mỗi ca nêu rõ nó bắt được lỗi gì mà các ca khác không bắt. |
| REQ-G01-012 | Bắt buộc | Charter | **Tính minh chứng.** Mọi khẳng định (logic, timing, kết quả) có bằng chứng số (waveform, report) kèm điều kiện sinh ra. |
| REQ-G01-013 | Bắt buộc | Làm rõ | **Đối chiếu độc lập.** Có mô hình chuẩn độc lập (Python) so từng mẫu với kết quả mô phỏng, và có ít nhất một assertion/bất biến chạy trong mô phỏng. |

## 4. Yêu cầu phân tích và bàn giao

| ID | Mức | Nguồn | Yêu cầu |
|---|---|---|---|
| REQ-G01-020 | Bắt buộc | Charter | **Phân tích phần cứng.** Đối chiếu số flip-flop thực tế với ước lượng 32, giải thích phần dư, và so sánh với kiến trúc cộng thẳng bằng số liệu đo. |
| REQ-G01-021 | Bắt buộc | Charter | **Hồ sơ nghiệm thu.** Đủ 8 thành phần: bối cảnh, sơ đồ khối, phân loại, bảng giao diện, artifact số, vòng đời, RTM-lite, kết luận. |
| REQ-G01-022 | Bắt buộc | Đề KT2 | **Chạy flow.** Chạy RTL-to-GDSII bằng CI (GitHub Actions, LibreLane), lưu artifacts. Nếu flow hỏng thì nộp chẩn đoán nguyên nhân gốc (stage lỗi, dòng fatal đầu tiên, cách đã thử). |
| REQ-G01-023 | Bắt buộc | Đề KT2 | **Tái lập.** Nêu repo, SHA commit đầy đủ, link CI run, phiên bản LibreLane và PDK, ngày chạy. Mọi con số trong báo cáo có file bằng chứng và lệnh tái lập. |
| REQ-G01-024 | Bắt buộc | Đề KT2 | **Phát biểu có điều kiện.** Không viết: "đã sign-off", "đã tape-out", "đã chế tạo", "chạy được ở XXX MHz". Kết luận tách rõ "đã chứng minh" và "chưa chứng minh". |

---

## 5. Giới hạn phạm vi

**Nằm ngoài phạm vi:**

1. **Kiến trúc:** cửa sổ dài hơn 4 mẫu, hệ số có trọng số, bộ lọc IIR.
2. **Vật lý và chế tạo:** thiết kế mức transistor, đặt tuyến thủ công, ASIC sign-off, tape-out, chế tạo và đo chip thật.

**Nằm trong phạm vi:** chạy flow RTL-to-GDSII tự động (LibreLane) và đọc, phân tích các báo cáo của nó.

**Chưa làm (ghi vào phần "chưa chứng minh" nếu không thực hiện):** mô phỏng gate-level sau layout; phân tích công suất theo hoạt động thật của dữ liệu.

---

## 6. Bản RTM-lite khởi tạo (điền tiếp ở M4)

| Yêu cầu | Khối thiết kế | Bằng chứng dự kiến | Giới hạn đã biết |
|---|---|---|---|
| 001 | `sample_mem`, ALU, `sum_q`, `avg_out` | So khớp từng mẫu giữa mô phỏng và mô hình Python (CC-1…CC-4, CA-TX-x) | Chỉ ở mức RTL, chưa mô phỏng gate-level |
| 002 | Wrapper Tiny Tapeout (`ui_in`, `uio`, `uo_out`) | Bảng ánh xạ chân; biên dịch và lint wrapper | Wrapper viết ở M2; chưa kiểm tra trên chip thật |
| 003 | Một khối `always_ff` duy nhất, reset đồng bộ | `synth_stat.txt` (số FF); ca reset giữa chừng | — |
| 004 | Toàn thiết kế | `synth_stat.txt` (số cell), báo cáo layout | Đề ước lượng; số sau layout lớn hơn sau synthesis |
| 005, 006 | `count_q`, `valid_out` | CC-4, CA-TX-5; bất biến INV-3, INV-4 | — |
| 007 | `avg_out ← sum_next >> 2` | Waveform có chú thích độ trễ 1 chu kỳ | — |
| 008 | Nhánh reset | CA-TX-4 | — |
| 009 | `sum_q` rộng 10 bit | CA-TX-1; bất biến INV-5 | — |
| 013 | Testbench và assertion | `simulation.log` (tìm PASS/FAIL), mô hình Python | — |
| 020 | `sum_q`, `avg_out`, `count_q`, `wr_ptr`, `valid_out` | `synth_stat.txt` đối chiếu 32 FF; bản cộng thẳng tổng hợp cùng điều kiện | Số đo phụ thuộc phiên bản Yosys và cấu hình |
| 022, 023 | CI workflow | Link CI run, artifacts, SHA commit | Chưa sign-off; góc PVT typical |
