<div dir="rtl">

# اسکیل‌های هوشوپیا

۱۷ اسکیل برای کار روزانهٔ برنامه‌نویس با ایجنت‌های کدنویسی مثل Claude Code؛ از محک‌زدن ایده تا انتشار، بازسازی کد، تست، بهره‌وری و محتوای فارسی.

اسکیل یک بستهٔ دستورالعمله که به دستیار یاد می‌ده یک کار مشخص رو همیشه با یک فرایند ثابت انجام بده. هر اسکیل یک پوشه با یک فایل `SKILL.md` است.

«AI درش بیاره» کافی نیست؛ اول بفهم، بعد بسپار. — [هوشوپیا](https://hooshopia.ir)

## نصب

### Claude Code (پیشنهادی، با یک دستور به‌روز می‌شه)

داخل Claude Code بنویس:

</div>

```
/plugin marketplace add hooshopia/skills
/plugin install hooshopia@hooshopia
```

<div dir="rtl">

بعد از نصب، اسکیل‌ها با پیشوند `hooshopia:` اجرا می‌شن، مثلاً `/hooshopia:grill-me`. لازم هم نیست همیشه اسمشون رو بیاری؛ اگه بگی «قبل از شروع ازم سؤال بپرس»، Claude خودش اسکیل مناسب رو برمی‌داره.

برای به‌روزرسانی:

</div>

```
/plugin marketplace update hooshopia
```

<div dir="rtl">

### نصب دستی (بدون پیشوند)

اسکیل‌ها رو در پوشهٔ اسکیل‌های شخصی Claude Code کپی کن تا با اسم کوتاه (`/grill-me`) اجرا بشن:

</div>

```bash
git clone https://github.com/hooshopia/skills
cd skills
./install.sh            # برای همهٔ پروژه‌ها: ~/.claude/skills
./install.sh --project  # فقط برای پروژهٔ فعلی: ./.claude/skills
```

<div dir="rtl">

یا یک اسکیل تکی رو کپی کن: `cp -r skills/grill-me ~/.claude/skills/`.

ابزارهای دیگه‌ای که از قالب `SKILL.md` پشتیبانی می‌کنن هم می‌تونن همین پوشه‌ها رو بخونن؛ پوشهٔ هر اسکیل رو در مسیر اسکیل‌های همون ابزار کپی کن.

## از کجا شروع کنم؟

اول `setup-hooshopia-skills` رو اجرا کن تا پروژه‌ات رو بشناسه و بگه کدوم اسکیل‌ها به کارت میان. برای یک قابلیت تازه، مسیر اصلی اینه:

</div>

```
grill-me  →  to-spec  →  implement  →  code-review
```

<div dir="rtl">

## فهرست اسکیل‌ها

### شروع کار
| اسکیل | کارش |
|---|---|
| [`setup-hooshopia-skills`](skills/setup-hooshopia-skills/SKILL.md) | پروژه رو می‌شناسه، ابزارها رو چک می‌کنه و مسیر شروع رو پیشنهاد می‌ده |
| [`ask-hooshopia`](skills/ask-hooshopia/SKILL.md) | هدفت رو بگو؛ اسکیل مناسب رو پیدا و اجرا می‌کنه |

### مسیر اصلی: از ایده تا انتشار
| اسکیل | کارش |
|---|---|
| [`grill-me`](skills/grill-me/SKILL.md) | قبل از کد زدن، ایده رو با سؤال‌های تک‌به‌تک محک می‌زنه |
| [`to-spec`](skills/to-spec/SKILL.md) | ایده رو به یک `SPEC.md` با معیار پذیرش و فهرست تسک تبدیل می‌کنه |
| [`implement`](skills/implement/SKILL.md) | تسک‌ها رو قدم‌به‌قدم و با تست پیاده می‌کنه |
| [`code-review`](skills/code-review/SKILL.md) | diff رو از نظر درستی، امنیت، کارایی و تست بازبینی می‌کنه |

### بازسازی کد
| اسکیل | کارش |
|---|---|
| [`refactor`](skills/refactor/SKILL.md) | کد شلوغ رو بدون تغییر رفتار و با قدم‌های کوچک مرتب می‌کنه |
| [`diagnose-bugs`](skills/diagnose-bugs/SKILL.md) | ریشهٔ باگ رو روشمند پیدا می‌کنه و با تست بازگشتی درستش می‌کنه |
| [`architecture`](skills/architecture/SKILL.md) | نقشهٔ کد موجود رو می‌کشه یا یک تغییر بزرگ رو با گزینه‌ها و ADR طراحی می‌کنه |

### تست و کیفیت
| اسکیل | کارش |
|---|---|
| [`tdd`](skills/tdd/SKILL.md) | چرخهٔ قرمز، سبز، بازسازی؛ هر بار یک تست کوچک |
| [`race-check`](skills/race-check/SKILL.md) | مشکلات همزمانی، await جاافتاده و ثبت دوباره رو پیدا می‌کنه |
| [`review-pr`](skills/review-pr/SKILL.md) | یک Pull Request گیت‌هاب رو کامل بازبینی می‌کنه (با `gh`) |

### بهره‌وری
| اسکیل | کارش |
|---|---|
| [`handoff`](skills/handoff/SKILL.md) | آخر کار یک `HANDOFF.md` برای نفر یا جلسهٔ بعدی می‌نویسه |
| [`teach`](skills/teach/SKILL.md) | یک مفهوم یا تکه‌کد رو از بیرون به درون یاد می‌ده |
| [`write-for-agents`](skills/write-for-agents/SKILL.md) | `CLAUDE.md`، `AGENTS.md`، پرامپت و اسکیل برای ایجنت‌ها می‌نویسه |

### فارسی و محتوا
| اسکیل | کارش |
|---|---|
| [`fa-copy`](skills/fa-copy/SKILL.md) | متن فارسی درست و طبیعی: نیم‌فاصله، ارقام، نشانه‌ها، میکروکپی |
| [`telegram-post`](skills/telegram-post/SKILL.md) | پست کانال تلگرام با قلاب خوب، قالب‌بندی درست و اندازهٔ مجاز |

## مشارکت

اسکیل تازه یا اصلاحی داری؟ یک Issue یا Pull Request باز کن. هر اسکیل یک پوشه در `skills/` با یک `SKILL.md` است که بالاش `name` (هم‌اسم پوشه) و `description` (چه کار می‌کنه و کی باید استفاده بشه) داره.

## مجوز

[MIT](LICENSE)

</div>
