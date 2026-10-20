#!/usr/bin/env python3
"""Mo hinh chuan doc lap cho G01: trung binh truot 4 diem, lam tron xuong.
Khong dung con tro vong hay bo tich luy, de doc lap voi cau truc RTL."""

def moving_avg4(samples):
    """samples: cac mau 0..255 co valid_in=1, theo thu tu den.
    Tra ve danh sach ket qua, bat dau tu mau thu 4."""
    return [sum(samples[n - 3:n + 1]) // 4 for n in range(3, len(samples))]


def self_check():
    # Cac gia tri ky vong lay tu 02_SPECIFICATION/spec.md muc 5
    cases = {
        "CC-1": ([100] * 8, [100] * 5),
        "CC-2": ([0, 0, 0, 0, 100, 100, 100, 100, 100], [0, 25, 50, 75, 100, 100]),
        "CC-3": ([1, 2, 3, 4, 5, 6, 7, 8], [2, 3, 4, 5, 6]),
        "CC-4": ([10, 20, 30, 40], [25]),
        "CA-TX-1": ([0, 0, 0, 255, 255, 255, 255], [63, 127, 191, 255]),
        "CA-TX-2": ([0, 0, 0, 255, 0, 0, 0, 0], [63, 63, 63, 63, 0]),
        "CA-TX-5": ([0, 0, 0, 0, 1, 1, 1, 1], [0, 0, 0, 0, 1]),
    }
    ok = True
    for name, (seq, expected) in cases.items():
        got = moving_avg4(seq)
        status = "PASS" if got == expected else "FAIL"
        ok &= got == expected
        print(f"{name}: {status}  got={got}")
    print("TONG KET:", "PASS" if ok else "FAIL")
    return ok


if __name__ == "__main__":
    raise SystemExit(0 if self_check() else 1)