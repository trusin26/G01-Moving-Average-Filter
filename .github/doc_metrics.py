#!/usr/bin/env python3
"""In bang chi so de doc tu metrics.json cua LibreLane.

Cach dung:
    python3 .github/doc_metrics.py <duong_dan/metrics.json>          # bang van ban
    python3 .github/doc_metrics.py <duong_dan/metrics.json> --md      # bang Markdown
    python3 .github/doc_metrics.py <duong_dan/metrics.json> --all     # in moi chi so

Script chi LOC va TRINH BAY lai so lieu co trong metrics.json, khong tinh them gi.
Ten chi so co the thay doi theo phien ban LibreLane, nen nhom nao khong khop
mau nao thi bi bo qua; dung --all de xem day du.
"""
import argparse
import json
import re
import sys

# (tieu de nhom, cac mau regex tren ten chi so)
GROUPS = [
    ("So o, dien tich, muc lap day", [
        r"^design__instance__count",
        r"^design__instance__area",
        r"^design__instance__utilization",
        r"^design__die__",
        r"^design__core__",
    ]),
    ("Day dan", [
        r"^route__wirelength",
        r"^route__drc_errors",
        r"^antenna__",
        r"^route__antenna",
    ]),
    ("Timing", [
        r"^timing__setup__(ws|tns)",
        r"^timing__hold__(ws|tns)",
        r"^timing__(setup|hold)_vio__count",
        r"^clock__skew__",
    ]),
    ("Cong suat", [
        r"^power__",
    ]),
    ("Signoff (DRC / LVS)", [
        r"drc.*(count|error)",
        r"lvs.*(count|error)",
        r"^design__violations__count",
        r"max_(slew|cap|fanout).*count",
    ]),
]


def fmt(value):
    if isinstance(value, float):
        return f"{value:.6g}"
    return str(value)


def select(metrics):
    seen = set()
    out = []
    for title, patterns in GROUPS:
        rows = []
        for key in sorted(metrics):
            if key in seen:
                continue
            if any(re.search(p, key) for p in patterns):
                rows.append((key, metrics[key]))
                seen.add(key)
        if rows:
            out.append((title, rows))
    return out


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("metrics_json")
    ap.add_argument("--md", action="store_true", help="in bang Markdown")
    ap.add_argument("--all", action="store_true", help="in tat ca chi so")
    args = ap.parse_args()

    try:
        with open(args.metrics_json, encoding="utf-8") as f:
            metrics = json.load(f)
    except (OSError, json.JSONDecodeError) as e:
        print(f"[LOI] khong doc duoc {args.metrics_json}: {e}", file=sys.stderr)
        return 2

    if not isinstance(metrics, dict):
        print("[LOI] metrics.json khong phai dang {ten: gia_tri}", file=sys.stderr)
        return 2

    groups = [("Tat ca chi so", sorted(metrics.items()))] if args.all else select(metrics)
    if not groups:
        print("[CANH BAO] khong khop chi so nao; thu --all de xem ten chi so", file=sys.stderr)
        return 1

    if args.md:
        print("## Chi so tu metrics.json")
        print(f"_Nguon: `{args.metrics_json}`_\n")
        for title, rows in groups:
            print(f"### {title}\n")
            print("| Chi so | Gia tri |")
            print("|---|---|")
            for k, v in rows:
                print(f"| `{k}` | {fmt(v)} |")
            print()
    else:
        width = max(len(k) for _, rows in groups for k, _ in rows)
        for title, rows in groups:
            print(f"\n== {title} ==")
            for k, v in rows:
                print(f"  {k:<{width}}  {fmt(v)}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
