# G01 - mach TUAN TU: dinh nghia clock tu cong clk cua thiet ke.
# Chu ky 10 ns va I/O delay 1 ns la GIA DINH khoi diem de chay STA,
# KHONG phai yeu cau he thong va KHONG phai tan so hoat dong da chung minh.
# Moi con so timing trong bao cao phai ghi kem cac gia dinh nay.
create_clock -name clk -period 10.0 [get_ports clk]
set_input_delay  1.0 -clock clk [get_ports {rst_n sample_in valid_in}]
set_output_delay 1.0 -clock clk [all_outputs]
