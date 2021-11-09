-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2021 at 06:00 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Wordpress', '2019-09-22 15:18:44', '2019-09-22 15:18:44'),
(2, 'Sales', '2019-09-22 15:18:44', '2019-09-22 15:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `description` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `subject`, `department_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet', 1, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', '2019-09-22 15:18:44', '2019-09-22 15:18:44'),
(2, 'Duis aute irure dolor in reprehenderit', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', '2019-09-22 15:18:44', '2019-09-22 15:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `reply_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_03_02_065630_create_tickets_table', 1),
(4, '2017_03_03_110029_create_replies_table', 1),
(5, '2017_03_07_085206_create_files_table', 1),
(6, '2017_03_08_181738_entrust_setup_tables', 1),
(7, '2017_04_06_150237_create_sessions_table', 1),
(8, '2017_06_02_101318_create_departments_table', 1),
(9, '2017_06_07_145638_create_faqs_table', 1),
(10, '2017_06_19_160848_create_settings_table', 1),
(11, '2017_06_21_072709_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_id`, `notifiable_type`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('07c70f6b-347f-400a-aaf6-ca68aa4e6afc', 'App\\Notifications\\TicketReply', 1, 'App\\User', '{\"reply_user\":\"staff\",\"ticket_title\":\"Social Sharing Blog\",\"ticket_id\":\"1\"}', NULL, '2021-11-07 00:46:54', '2021-11-07 00:46:54'),
('0f74889b-88ab-4b7c-b790-93c21149e2b6', 'App\\Notifications\\TicketReply', 1, 'App\\User', '{\"reply_user\":\"staff\",\"ticket_title\":\"Social Sharing Blog\",\"ticket_id\":\"1\"}', NULL, '2021-11-08 09:07:20', '2021-11-08 09:07:20'),
('82c72585-c7aa-4d19-9371-b5ca3575b04e', 'App\\Notifications\\NewTicket', 1, 'App\\User', '{\"user_name\":\"Admin\",\"ticket_title\":\"My Doc uploaded\",\"ticket_id\":2}', NULL, '2021-11-07 00:33:27', '2021-11-07 00:33:27'),
('9347e9a1-9eb7-4468-a214-8e19bbe79f15', 'App\\Notifications\\TicketReply', 3, 'App\\User', '{\"reply_user\":\"Admin\",\"ticket_title\":\"Social Sharing Blog\",\"ticket_id\":\"1\"}', NULL, '2021-11-08 09:11:34', '2021-11-08 09:11:34'),
('93ba272e-d516-493c-bb91-af976dff3ac7', 'App\\Notifications\\TicketReply', 1, 'App\\User', '{\"reply_user\":\"Admin\",\"ticket_title\":\"My Doc uploaded\",\"ticket_id\":\"2\"}', NULL, '2021-11-07 00:46:22', '2021-11-07 00:46:22'),
('a2a9c963-157d-4804-80e0-d5c04e3a21db', 'App\\Notifications\\TicketReply', 1, 'App\\User', '{\"reply_user\":\"staff\",\"ticket_title\":\"Social Sharing Blog\",\"ticket_id\":\"1\"}', NULL, '2021-11-07 00:45:05', '2021-11-07 00:45:05'),
('a87a63c6-a7ca-42e8-88b3-b98f197ab187', 'App\\Notifications\\TicketReply', 1, 'App\\User', '{\"reply_user\":\"Admin\",\"ticket_title\":\"Social Sharing Blog\",\"ticket_id\":\"1\"}', NULL, '2021-11-08 09:11:34', '2021-11-08 09:11:34'),
('ad9bf1f0-3826-425c-98a0-c3341a83eccc', 'App\\Notifications\\TicketStatus', 1, 'App\\User', '{\"status\":\"replied\",\"ticket_title\":\"Social Sharing Blog\",\"ticket_id\":\"1\"}', NULL, '2021-11-07 00:49:52', '2021-11-07 00:49:52'),
('b00cd62c-5f64-45a0-a5aa-5dad1c266820', 'App\\Notifications\\TicketReply', 1, 'App\\User', '{\"reply_user\":\"staff\",\"ticket_title\":\"Social Sharing Blog\",\"ticket_id\":\"1\"}', NULL, '2021-11-07 00:46:54', '2021-11-07 00:46:54'),
('c6dbddb5-27a9-42b1-89a9-8b288f6caccf', 'App\\Notifications\\TicketReply', 1, 'App\\User', '{\"reply_user\":\"staff\",\"ticket_title\":\"Social Sharing Blog\",\"ticket_id\":\"1\"}', NULL, '2021-11-08 09:07:20', '2021-11-08 09:07:20'),
('cdfbd9c7-da63-4cab-807c-ed598a5aee70', 'App\\Notifications\\TicketReply', 4, 'App\\User', '{\"reply_user\":\"Admin\",\"ticket_title\":\"My Doc uploaded\",\"ticket_id\":\"2\"}', NULL, '2021-11-07 00:46:22', '2021-11-07 00:46:22'),
('e68ba194-63fc-4197-87a8-3241144157f5', 'App\\Notifications\\NewTicket', 1, 'App\\User', '{\"user_name\":\"client\",\"ticket_title\":\"new testnew testnew testnew testnew test\",\"ticket_id\":3}', NULL, '2021-11-08 09:00:17', '2021-11-08 09:00:17'),
('f449a623-0df1-4046-a666-75dee5215bd1', 'App\\Notifications\\TicketReply', 1, 'App\\User', '{\"reply_user\":\"staff\",\"ticket_title\":\"Social Sharing Blog\",\"ticket_id\":\"1\"}', NULL, '2021-11-07 00:45:05', '2021-11-07 00:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `reply` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` enum('open','replied','approval_for_close','closed','pending') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `reply`, `ticket_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'asdadada', '1', 3, NULL, '2021-11-07 00:45:05', '2021-11-07 00:45:05'),
(2, 'kljkljkl', '2', 1, NULL, '2021-11-07 00:46:22', '2021-11-07 00:46:22'),
(3, 'kook', '1', 3, NULL, '2021-11-07 00:46:54', '2021-11-07 00:46:54'),
(4, 'frsdfsd fsd', '1', 3, NULL, '2021-11-08 09:07:20', '2021-11-08 09:07:20'),
(5, 'asds ad adadada asdsad', '1', 1, NULL, '2021-11-08 09:11:34', '2021-11-08 09:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, '2019-09-22 15:18:44', '2019-09-22 15:18:44'),
(2, 'client', 'Client', NULL, '2019-09-22 15:18:44', '2019-09-22 15:18:44'),
(3, 'staff', 'Staff', NULL, '2019-09-22 15:18:44', '2019-09-22 15:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyrights` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_can_edit` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_can_edit` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `logo`, `footer_logo`, `description`, `footer_description`, `keywords`, `facebook`, `twitter`, `linkedin`, `copyrights`, `staff_can_edit`, `client_can_edit`, `ticket_email`, `admin_email`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Help Ticket System', 'index.png', 'index.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', 'Copyrights © 2021 Help Ticket System All rights reserved', 'yes', 'yes', 'no', 'info@teamworktec.com', NULL, '2019-09-22 15:18:44', '2021-11-07 00:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `token_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(10000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` enum('low','medium','high') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('open','replied','approval_for_close','closed','pending') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `department_id`, `user_id`, `token_no`, `subject`, `description`, `priority`, `status`, `assigned_to`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '9321', 'Social Sharing Blog', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', NULL, 'replied', 3, NULL, '2019-09-22 15:18:44', '2021-11-08 09:07:07'),
(2, 2, 1, '8004', 'My Doc uploaded', 'My Doc uploaded', NULL, 'open', 4, NULL, '2021-11-07 00:33:27', '2021-11-07 00:46:16'),
(3, 1, 2, '7654', 'new testnew testnew testnew testnew test', 'new testnew testnew testnew test', NULL, 'open', NULL, NULL, '2021-11-08 09:00:17', '2021-11-08 09:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `avatar`, `designation`, `department_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@ticketplus.com', '$2y$10$VyGoHGHVoe7Be7Ye1eIqvehaZ8C5BSoNio4s4gYr63GIMHmRBG24q', NULL, NULL, NULL, 'O5irff0ln2qbjP7SKA6aRDExZwoB4iN95M5P8ar2DaP4ArwOtlb6SyWXE1Pi', NULL, NULL),
(2, 'client', 'Client', 'client@ticketplus.com', '$2y$10$H167Dv/MDQA/jY78hmd65uimgzyj8nk.bS/KrvrNbrQjwu8dvTZeW', NULL, NULL, NULL, 'm0pUSTBFToY0It8APfNDoRjakTcNCeyzEHNZ94SyILVPs2zXmhLdo2OEXqn5', NULL, NULL),
(3, 'staff', 'staff', 'staff@ticketplus.com', '$2y$10$cpps5DtBKuGLDnPzcoI0wOlJUZa1RbfIkdaRl2IKZ4SExlNFgnxxe', NULL, 'Support Engineer', 1, NULL, NULL, NULL),
(4, 'Sathish', 'sathish', 'sathishola2018@gmail.com', '$2y$10$HZ9Cf0G.zE/tqlqDtd5wwumJh9.AJnJ/KjysCqQjFssUEW5sq4KyG', NULL, 'TL', 2, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- test commit