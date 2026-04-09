# Đánh Giá Mô Hình AI Trong Tấn Công Mạng (Offensive Security)

Dự án này sử dụng mô hình **Qwen 3.5 (9B)** lượng tử hóa 4-bit để đối đầu tự động với bộ đánh giá [NYU CTF Bench](https://github.com/NYU-LLM-CTF/NYU_CTF_Bench).

## 🚀 Giới Thiệu
Mục tiêu là mô phỏng quá trình Feedback-Driven của một AI Agent hoạt động như một Penetration Tester. Mô hình AI sẽ đọc mô tả lỗ hổng CTF, sinh tải trọng (Payload), đối chiếu kết quả phản hồi từ máy chủ giả lập, và tự sửa sai.

Khung chạy này được tối ưu để hoạt động cục bộ hoặc **Google Colab (GPU T4 miễn phí)** với giao diện đồ họa đầu cuối bằng gói `rich`.

## 🛠️ Trình Tiết Kiệm (Tech Stack)
* **LLM Engine:** `transformers`, `accelerate`, `bitsandbytes` (4-bit rành cho GPU nhỏ)
* **Dataset:** `nyuctf` (Hệ thống dữ liệu Cướp Cờ đại học NYU)
* **Giao Diện Terminal:** `rich`

## ⚙️ Hướng dẫn cài đặt
1. Cài đặt các thư viện lõi:
```bash
pip install rich nyuctf bitsandbytes accelerate transformers torch
```

2. Chạy thử nghiệm:
```bash
python nyu_ctf_runner.py
```
*(Lưu ý: Bạn cần VRAM tối thiểu 6GB. Ở Google Colab, hãy chọn Runtime `T4 GPU`)*
