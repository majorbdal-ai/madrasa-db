# মাদ্রাসা ডেটাবেজ (madrasa-db)

ধনুয়া কাচারী পাড়া আহাম্মদীয়া দাখিল মাদ্রাসা ওয়েবসাইটের জন্য MySQL/MariaDB স্কিমা।
মূল ওয়েবসাইট রিপো: [bangladeshi-madrasa-website-design](https://github.com/majorbdal-ai/bangladeshi-madrasa-website-design)

## ফাইলসমূহ

| ফাইল | কাজ |
|---|---|
| `schema.sql` | টেবিল তৈরি (settings, admin_users, notices, teachers, admin_body, gallery, contact_messages, classes, admissions) |
| `seed.sql` | প্রাথমিক ডেমো ডেটা (সেটিংস, ডিফল্ট অ্যাডমিন, শিক্ষক, নোটিশ, জামাত তালিকা) |

## InfinityFree-তে ইমপোর্ট (phpMyAdmin দিয়ে)

1. InfinityFree কন্ট্রোল প্যানেল → **MySQL Databases** → একটি ডেটাবেজ তৈরি করুন (যেমন `if0_XXXXXX_madrasa`)। এতে একটি ইউজার ও পাসওয়ার্ড পাবেন — সেভ করে রাখুন।
2. কন্ট্রোল প্যানেল থেকে **phpMyAdmin** খুলুন (ডেটাবেজের পাশে Admin বাটন)।
3. বাম সাইডবারে নিজের ডেটাবেজ সিলেক্ট করুন।
4. উপরে **Import** ট্যাব → আগে `schema.sql`, তারপর `seed.sql` আপলোড করে **Go** চাপুন। (character set: `utf8mb4`)
5. হয়ে গেলে ৯টি টেবিল দেখতে পাবেন।

## অ্যাডমিন লগইন

- ইউজারনেম: `admin`
- পাসওয়ার্ড: `admin123`

⚠️ **প্রথম লগইনের পরই অবশ্যই পাসওয়ার্ড বদলাবেন** (admin panel → প্রোফাইল/পাসওয়ার্ড পরিবর্তন)।

## ওয়েবসাইটের সাথে সংযোগ

`includes/config.php`-তে InfinityFree-এর ক্রেডেনশিয়াল বসাবেন:

```php
define('DB_HOST', 'sqlXXX.infinityfree.com'); // কন্ট্রোল প্যানেলে MySQL Hostname
define('DB_NAME', 'if0_XXXXXX_madrasa');
define('DB_USER', 'if0_XXXXXX');
define('DB_PASS', 'আপনার-পাসওয়ার্ড');
```

ক্রেডেনশিয়াল কখনো Git-এ কমিট করবেন না — `config.php` লোকালেই রাখুন (`.gitignore`-এ আছে)।
