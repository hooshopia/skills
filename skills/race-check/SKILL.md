---
name: race-check
description: Hunts for concurrency bugs (race conditions, missing awaits, double submits, unsafe shared state, transaction gaps) and proposes reproducible tests and fixes. Use when the user mentions flaky or random failures, duplicate records, «گاهی وقت‌ها خراب می‌شه», "race condition", or reviews async, multi-threaded or multi-request code.
---

# شکار مشکلات همزمانی

## کجا رو بگردی

- **حالت مشترک قابل‌تغییر:** متغیر سراسری، singleton، cache در حافظه، فیلدهای کلاس که بین درخواست‌ها مشترک‌اند.
- **بخوان، بعد بنویس (check-then-act):** «اگه وجود نداشت، بساز»، «موجودی رو بخون، کم کن، ذخیره کن». بین خوندن و نوشتن، یکی دیگه ممکنه همین کار رو بکنه.
- **async:** `await` جاافتاده، promise که منتظرش نیستن، `forEach` با تابع async، ترتیب پاسخ‌هایی که جابه‌جا می‌رسن (مثلاً جست‌وجوی تایپ‌شونده).
- **فرانت:** دوبار کلیک روی دکمهٔ ثبت، state قدیمی در closure، درخواستی که بعد از ترک صفحه برمی‌گرده.
- **دیتابیس:** چند کوئری مرتبط بدون تراکنش، نبود قید unique، به‌روزرسانی بدون قفل یا نسخه (optimistic locking).
- **کارهای پس‌زمینه:** job که دوبار اجرا می‌شه، cron هم‌پوشان، retry بدون idempotency.

## روش

1. مسیرهایی رو که چند اجرای همزمان دارن فهرست کن (درخواست‌های HTTP، workerها، تب‌های مرورگر، رویدادها).
2. برای هر مورد مشکوک، **سناریوی دقیق interleaving** رو بنویس: «A می‌خونه ۱۰، B می‌خونه ۱۰، A می‌نویسه ۹، B می‌نویسه ۹ ← یکی گم شد».
3. اگه ممکنه، تستی بنویس که مشکل رو نشون بده: اجرای همزمان (`Promise.all`، thread pool، چند پروسه)، تأخیر مصنوعی بین خوندن و نوشتن، یا تکرار زیاد.
4. راه‌حل پیشنهاد بده، از ساده به پیچیده: عملیات اتمی دیتابیس (`UPDATE … SET x = x - 1 WHERE x > 0`)، قید unique، تراکنش، کلید idempotency، قفل، غیرفعال کردن دکمه حین ارسال، لغو درخواست قدیمی (AbortController).

## گزارش

برای هر مورد: محل، سناریوی خرابی، احتمال و اثر، تست پیشنهادی، راه‌حل. مواردی که فقط نظری‌اند رو جدا و با «کم‌احتمال» علامت بزن.
