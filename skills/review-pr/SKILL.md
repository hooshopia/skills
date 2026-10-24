---
name: review-pr
description: Reviews a GitHub pull request end to end (description vs. changes, CI status, risky areas, tests) with the gh CLI and drafts review comments. Use when the user gives a PR number or URL, or says "review PR", «پول ریکوئست رو بررسی کن».
---

# بازبینی Pull Request

## جمع‌آوری

با `gh` (اگه نصب یا وارد نشده، به کاربر بگو):

```bash
gh pr view <number> --json title,body,author,baseRefName,headRefName,files,additions,deletions,commits
gh pr diff <number>
gh pr checks <number>
```

اگه لازم شد، شاخه رو بگیر تا تست‌ها رو محلی اجرا کنی: `gh pr checkout <number>`.

## بررسی

1. **هدف:** توضیح PR چه چیزی رو قول داده؟ با تغییرات واقعی می‌خونه؟ تغییر بی‌ربط یا پنهان هست؟
2. **اندازه:** اگه خیلی بزرگه (بیش از چند صد خط منطق)، پیشنهاد بده شکسته بشه.
3. **CI:** کدوم checkها خراب‌اند و چرا؟
4. **کد:** همهٔ موارد `code-review` (درستی، امنیت، داده، کارایی، تست، خوانایی)، با تمرکز روی فایل‌های پرریسک: مهاجرت دیتابیس، احراز هویت، پرداخت، تنظیمات، وابستگی‌های تازه.
5. **تست:** تغییرات رفتاری تست دارن؟ اگه شاخه رو گرفتی، تست‌ها رو اجرا کن.

## خروجی

```
خلاصه: این PR چه کاری می‌کنه (۲ جمله)
تصمیم پیشنهادی: تأیید | تأیید با تغییرات جزئی | نیاز به تغییر
موارد بحرانی:
موارد مهم:
پیشنهادها:
سؤال‌ها از نویسنده:
```

هر مورد با فایل و خط.

## ارسال

**بدون اجازهٔ صریح کاربر هیچ نظری روی گیت‌هاب نذار.** اگه کاربر خواست، متن نهایی رو نشونش بده و بعد با `gh pr review <number> --comment|--approve|--request-changes --body-file <file>` ارسال کن.
