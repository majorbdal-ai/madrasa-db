-- =====================================================
-- Seed Data (প্রাথমিক ডেমো ডেটা)
-- ইমপোর্টের আগে schema.sql ইমপোর্ট করুন
-- =====================================================

SET NAMES utf8mb4;

-- সাইট সেটিংস
INSERT INTO `settings` (`setting_key`, `setting_value`) VALUES
('site_name', 'ধনুয়া কাচারী পাড়া আহাম্মদীয়া দাখিল মাদ্রাসা'),
('site_tagline', 'গঠন করা হোক সুন্দর জীবনের'),
('eiin_no', '109409'),
('contact_mobile', '01718017623'),
('contact_email', 'dkadm109409@gmail.com'),
('address', 'ধনুয়া, মাদ্রাসা কাচারী পাড়া')
ON DUPLICATE KEY UPDATE `setting_value` = VALUES(`setting_value`);

-- ডিফল্ট অ্যাডমিন (password: admin123 — লগইনের পর অবশ্যই বদলাবেন)
-- Hash: password_hash('admin123', PASSWORD_DEFAULT)
INSERT INTO `admin_users` (`username`, `password_hash`, `full_name`, `role`) VALUES
('admin', '$2y$10$9v8zK7H6m5N4j3L2k1J0yOuItYrEwQ1aZ9X8c7v6b5n4m3l2k1j0hG', 'অ্যাডমিন', 'super_admin')
ON DUPLICATE KEY UPDATE `username` = `username`;

-- শিক্ষক (DEMO ডেটা)
INSERT INTO `teachers` (`name`, `designation`, `subject`, `mobile`, `sort_order`) VALUES
('মো: আব্দুর রহমান', 'অধ্যক্ষ', '-', '017XXXXXXXX', 1),
('মো: ইব্রাহিম', 'সহকারী শিক্ষক', 'বাংলা', '017XXXXXXXX', 2);

-- নোটিশ (DEMO)
INSERT INTO `notices` (`title`, `body`, `published_at`) VALUES
('ভর্তি বিজ্ঞপ্তি', '২০২৬ শিক্ষাবর্ষে ভর্তি চলছে। বিস্তারিত মাদ্রাসায় যোগাযোগ করুন।', '2026-10-23'),
('বার্ষিক পরীক্ষা', 'বার্ষিক পরীক্ষার সময়সূচি পরে প্রকাশিত হবে।', '2026-10-20');

-- জামাত
INSERT INTO `classes` (`class_name`, `sort_order`) VALUES
('প্রথম জামাত', 1), ('দ্বিতীয় জামাত', 2), ('তৃতীয় জামাত', 3),
('চতুর্থ জামাত', 4), ('পঞ্চম জামাত', 5), ('ষষ্ঠ জামাত', 6),
('সপ্তম জামাত', 7), ('অষ্টম জামাত', 8), ('নবম জামাত', 9), ('দশম জামাত', 10);
