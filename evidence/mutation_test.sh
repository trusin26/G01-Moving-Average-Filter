#!/usr/bin/env bash
# Thu nghiem dot bien: co y lam RTL sai (SUM_W = W + 1, thieu 1 bit) roi xem testbench nao bat duoc.
cd "$(dirname "$0")/.."
M=$(mktemp -d)
sed 's/localparam int SUM_W = W + 2;/localparam int SUM_W = W + 1;/' rtl/g01_moving_average4.sv > "$M/g01_moving_average4.sv"
echo "== RTL dot bien:"; grep -n "SUM_W = " "$M/g01_moving_average4.sv"
echo "== 1) Testbench cua thay tren RTL dot bien (ky vong: van in completed, tuc KHONG bat duoc)"
iverilog -g2012 -o "$M/t.vvp" "$M/g01_moving_average4.sv" rtl/g01_direct_sum_reference.sv tb/*.sv && (cd "$M" && vvp t.vvp | grep -E "completed|fatal|mismatch")
echo "== 2) Testbench tu xay dung tren RTL dot bien (ky vong: OWN-3 FAIL)"
iverilog -g2012 -o "$M/o.vvp" "$M/g01_moving_average4.sv" tb_own/*.sv && (cd "$M" && vvp o.vvp | grep -E "PASS|FAIL|fatal")
echo "== 3) Doi chung: testbench tu xay dung tren RTL goc (ky vong: ALL PASS)"
iverilog -g2012 -o "$M/g.vvp" rtl/g01_moving_average4.sv tb_own/*.sv && (cd "$M" && vvp g.vvp | grep -E "PASS|FAIL|fatal")
