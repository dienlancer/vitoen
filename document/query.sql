DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `id` INT(11) NOT NULL,
  `code` VARCHAR(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` VARCHAR(255) CHARACTER SET utf8 DEFAULT NULL,
  `fullname` VARCHAR(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` VARCHAR(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` VARCHAR(255) CHARACTER SET utf8 DEFAULT NULL,
  `note` TEXT COLLATE utf8_unicode_ci,
  `quantity` INT(11) DEFAULT NULL,
  `total_price` DOUBLE DEFAULT NULL,
  `payment_method_name` VARCHAR(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method_content` TEXT COLLATE utf8_unicode_ci,
  `status` INT(11) DEFAULT NULL,
  `created_at` DATETIME DEFAULT NULL,
  `updated_at` DATETIME DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `invoice_detail`;
CREATE TABLE `invoice_detail` (
  `id` INT(11) NOT NULL,
  `invoice_id` INT(11) DEFAULT NULL,
  `product_id` INT(11) DEFAULT NULL,
  `product_code` VARCHAR(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_name` VARCHAR(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_image` VARCHAR(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_price` DECIMAL(10,2) DEFAULT NULL,
  `product_quantity` INT(11) DEFAULT NULL,
  `product_total_price` DECIMAL(10,2) DEFAULT NULL,
  `created_at` DATETIME DEFAULT NULL,
  `updated_at` DATETIME DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE `payment_method` (
  `id` INT(11) NOT NULL,
  `fullname` VARCHAR(255) DEFAULT NULL,
  `alias` VARCHAR(255) DEFAULT NULL,
  `content` TEXT,
  `sort_order` INT(11) DEFAULT NULL,
  `status` INT(11) DEFAULT NULL,
  `created_at` DATETIME DEFAULT NULL,
  `updated_at` DATETIME DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;


ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `invoice`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `invoice_detail`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `payment_method`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT;
  
INSERT INTO `payment_method` (`fullname`, `alias`, `content`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
('Thanh toán qua ngân hàng', 'thanh-toan-qua-ngan-hang', '<p style=\"text-align:justify\">Thanh toán trực tuyến AN TOÀN và ĐƯỢC BẢO VỆ, sử dụng thẻ ngân hàng trong và ngoài nước hoặc nhiều hình thức tiện lợi khác. </p><p style=\"text-align:justify\">Được bảo hộ & cấp phép bởi NGÂN HÀNG NHÀ NƯỚC, ví điện tử duy nhất được cộng đồng ƯA THÍCH NHẤT 2 năm liên tiếp, Bộ Thông tin Truyền thông trao giải thưởng Sao Khuê</p><p style=\"text-align:justify\">Giao dịch. Đăng ký ví NgânLượng.vn miễn phí</p>', 1, 1, '2018-01-07 17:25:13', '2018-07-17 07:03:43'),
('Thanh toán trực tiếp', 'thanh-toan-truc-tiep', '<p>Thanh toán trực tiếp<br></p>', 2, 1, '2018-07-17 07:05:40', '2018-07-17 07:05:40');
        