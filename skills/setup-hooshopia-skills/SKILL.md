---
name: setup-hooshopia-skills
description: First-run setup for Hooshopia skills in a project. Use when the user installs these skills, says "setup hooshopia", «راه‌اندازی اسکیل‌ها», or asks which Hooshopia skills fit their project. Inspects the repo, checks the tools the other skills rely on, and recommends a starting path.
---

# راه‌اندازی اسکیل‌های هوشوپیا

هدف: یک بار پروژه رو بشناسی، ابزارهای لازم رو چک کنی و به کاربر بگی از کدوم اسکیل شروع کنه. چیزی رو بدون اجازه تغییر نده.

## مراحل

1. **پروژه رو بشناس** (فقط خوندن):
   - زبان و فریم‌ورک (`package.json`، `pyproject.toml`، `go.mod`، `composer.json` و …).
   - دستور اجرای تست، لینت و بیلد. اگه چند گزینه هست، اونی رو که در CI یا README آمده انتخاب کن.
   - آیا پروژه گیت داره؟ شاخهٔ فعلی و تغییرات commit‌نشده چیه؟
   - فایل‌های راهنمای ایجنت: `CLAUDE.md`، `AGENTS.md`، `.cursorrules`.
2. **ابزارها رو چک کن:** `git`، اجرای تست (یک بار تست‌ها رو اجرا کن و نتیجه رو گزارش بده)، و اگه برای PR لازمه `gh`.
3. **گزارش کوتاه بده:**
   - پروژه: زبان، فریم‌ورک، دستورهای تست/لینت/بیلد و وضعیت فعلی تست‌ها.
   - اسکیل‌هایی که همین الان به کارش میان، با یک دلیل یک‌خطی برای هر کدوم.
   - مسیر پیشنهادی برای کار تازه: `grill-me` ← `to-spec` ← `implement` ← `code-review`.
4. **پیشنهاد (با اجازه):** اگه `CLAUDE.md` یا `AGENTS.md` نیست یا دستورهای تست/لینت توش نیست، پیشنهاد بده یک بخش کوتاه «چطور اینجا کار می‌کنیم» اضافه کنی. فقط اگه کاربر قبول کرد بنویس (برای نوشتنش از `write-for-agents` کمک بگیر).

## فهرست اسکیل‌ها

| دسته | اسکیل‌ها |
|---|---|
| شروع کار | `setup-hooshopia-skills`، `ask-hooshopia` |
| مسیر اصلی | `grill-me`، `to-spec`، `implement`، `code-review` |
| بازسازی کد | `refactor`، `diagnose-bugs`، `architecture` |
| تست و کیفیت | `tdd`، `race-check`، `review-pr` |
| بهره‌وری | `handoff`، `teach`، `write-for-agents` |
| فارسی و محتوا | `fa-copy`، `telegram-post` |

جواب رو به زبان کاربر بده (اگه فارسی نوشته، فارسی).
