-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2023 at 05:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add courses', 7, 'add_courses'),
(26, 'Can change courses', 7, 'change_courses'),
(27, 'Can delete courses', 7, 'delete_courses'),
(28, 'Can view courses', 7, 'view_courses'),
(29, 'Can add facilities', 8, 'add_facilities'),
(30, 'Can change facilities', 8, 'change_facilities'),
(31, 'Can delete facilities', 8, 'delete_facilities'),
(32, 'Can view facilities', 8, 'view_facilities'),
(33, 'Can add instructors', 9, 'add_instructors'),
(34, 'Can change instructors', 9, 'change_instructors'),
(35, 'Can delete instructors', 9, 'delete_instructors'),
(36, 'Can view instructors', 9, 'view_instructors');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$iJFh9TmY3KkaWyoSFE5G23$hdwpeJw/VpKlUw7SgMH/MlphGZNH4V0+uC8ZJB9nppA=', '2023-08-09 11:01:10.247603', 1, 'cipher', '', '', 'sendyj886@gmail.com', 1, 1, '2023-07-30 12:46:28.538431');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'mak_feedback', 'courses'),
(8, 'mak_feedback', 'facilities'),
(9, 'mak_feedback', 'instructors'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-07-30 12:44:15.338882'),
(2, 'auth', '0001_initial', '2023-07-30 12:44:24.872659'),
(3, 'admin', '0001_initial', '2023-07-30 12:44:27.208917'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-07-30 12:44:27.280162'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-30 12:44:27.356145'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-07-30 12:44:28.051794'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-07-30 12:44:29.051946'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-07-30 12:44:29.225384'),
(9, 'auth', '0004_alter_user_username_opts', '2023-07-30 12:44:29.280257'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-07-30 12:44:30.021909'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-07-30 12:44:30.200603'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-07-30 12:44:30.320151'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-07-30 12:44:30.456944'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-07-30 12:44:30.613775'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-07-30 12:44:30.770852'),
(16, 'auth', '0011_update_proxy_permissions', '2023-07-30 12:44:30.839059'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-07-30 12:44:30.981366'),
(18, 'sessions', '0001_initial', '2023-07-30 12:44:31.621281'),
(19, 'mak_feedback', '0001_initial', '2023-07-30 13:12:03.219453'),
(20, 'mak_feedback', '0002_instructors_five_instructors_four_instructors_one_and_more', '2023-08-07 17:23:04.650713'),
(21, 'mak_feedback', '0003_facilities_five_facilities_four_facilities_one_and_more', '2023-08-08 15:01:03.863934'),
(22, 'mak_feedback', '0004_rename_five_instructors_learning_environment_and_more', '2023-08-08 15:01:04.748634'),
(23, 'mak_feedback', '0005_rename_five_facilities_awareness_and_more', '2023-08-08 15:34:19.990440'),
(24, 'mak_feedback', '0006_courses_assesement_courses_engagement_and_more', '2023-08-08 16:30:47.473284');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1ih33nhd75q4ggiqkde3oz76c8p2rxko', '.eJxVjEEOwiAQRe_C2hAGKKBL9z0DmRlAqoYmpV0Z765NutDtf-_9l4i4rTVuPS9xSuIiQJx-N0J-5LaDdMd2myXPbV0mkrsiD9rlOKf8vB7u30HFXr-10XlgyloXZ71SxoYQkjmD1cF4cEwWMbDyxMCOyHJhMh7t4MAkUEW8P8oJN4s:1qT0K8:-lUbohluaPcdH33IwYpcmzj8d2VhoskC8c3brjosk18', '2023-08-21 13:31:04.710593'),
('d0px8gw8wln5c9eodap5npllp8v46ofr', '.eJxVjEEOwiAQRe_C2hAGKKBL9z0DmRlAqoYmpV0Z765NutDtf-_9l4i4rTVuPS9xSuIiQJx-N0J-5LaDdMd2myXPbV0mkrsiD9rlOKf8vB7u30HFXr-10XlgyloXZ71SxoYQkjmD1cF4cEwWMbDyxMCOyHJhMh7t4MAkUEW8P8oJN4s:1qRBiA:FvPyjCtBfwZpn8E5tHq4mrPGXyKXsu6qNfOBmYqLczk', '2023-08-16 13:16:22.755461'),
('q6agn91djzzy207ga0u59gktem9lrxr9', 'e30:1qR7SK:JxMUUPthVyO8lu4tiVx8rImL0aNibIniqeiNRUrRV9M', '2023-08-16 08:43:44.679426');

-- --------------------------------------------------------

--
-- Table structure for table `mak_feedback_courses`
--

CREATE TABLE `mak_feedback_courses` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `student_number` varchar(100) NOT NULL,
  `registration_number` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `college` varchar(100) NOT NULL,
  `program` varchar(100) NOT NULL,
  `course_unit` varchar(100) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `course_instructor` varchar(100) NOT NULL,
  `argument` varchar(500) NOT NULL,
  `assesement` varchar(100) DEFAULT NULL,
  `engagement` varchar(100) DEFAULT NULL,
  `recommend` varchar(100) DEFAULT NULL,
  `variety` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mak_feedback_courses`
--

INSERT INTO `mak_feedback_courses` (`id`, `first_name`, `last_name`, `student_number`, `registration_number`, `level`, `college`, `program`, `course_unit`, `course_code`, `course_instructor`, `argument`, `assesement`, `engagement`, `recommend`, `variety`) VALUES
(4, 'sendi', 'joseph', '2100717978', '21/U/17875/EVE', 'under graduate', 'COCIS', 'Software Eng', 'Computer networks', 'CNC 345', 'Sajjabi Benard', 'This guy gave us a a very complex final paper compared to his coverage in the few lectures he taught .', 'Average', 'Low', 'No', 'Not at all'),
(9, 'Nawangwe', 'Benard', '21007179XX', '21/U/17875/XX', 'post graduate', 'CEDAT', 'Mechanical Engineering', 'Vector Analysis', 'VCV 345', 'David Musinguzi', 'Here all what we are taught is nothing compared to what exists in the real world and aparently its our main goal so we request to be given more vital contenet that just covering fwa', 'Good', 'Low', 'Yes', 'Somewhat'),
(10, 'Aijuka', 'Benjamin', '2100717978', '21/U/17875/PS', 'under graduate', 'CAES', 'Agribusiness', 'Business in Agriculture', 'BARG', 'Moureen Naturiire', 'Lately we have heard rumours that this course unit is expired and we hope to be given clarity on the truthfulness of this and if its true we request for our  courses to be audited and adjucted, thanks.', 'Needs Improvement', 'Low', 'Yes', 'Fully'),
(11, 'MASEMBE', 'JOSEPH', '2100717967', '21/U/17875/PS', 'under graduate', 'COCIS', 'BIST', 'Ethical hacking', 'ETH 2075', 'Vaniah Christian', 'We are being given poor facilities', 'Good', 'High', 'Yes', 'To a small extent');

-- --------------------------------------------------------

--
-- Table structure for table `mak_feedback_facilities`
--

CREATE TABLE `mak_feedback_facilities` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `student_number` varchar(100) NOT NULL,
  `registration_number` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `college` varchar(100) NOT NULL,
  `program` varchar(100) NOT NULL,
  `facility` varchar(100) NOT NULL,
  `waden` varchar(100) NOT NULL,
  `argument` varchar(500) NOT NULL,
  `awareness` varchar(100) DEFAULT NULL,
  `cleaning` varchar(100) DEFAULT NULL,
  `facilityQuery` varchar(100) DEFAULT NULL,
  `facilityUsage` varchar(100) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mak_feedback_facilities`
--

INSERT INTO `mak_feedback_facilities` (`id`, `first_name`, `last_name`, `student_number`, `registration_number`, `level`, `college`, `program`, `facility`, `waden`, `argument`, `awareness`, `cleaning`, `facilityQuery`, `facilityUsage`, `rating`) VALUES
(5, 'Cecilia', 'Aparo', '2100717967', '21/U/17875/PS', 'under graduate', 'COCIS', 'Software Eng', 'Cafteria', 'mr.Tonny', 'This new guy in charge of the Cafterian has hiked the prices of all goods and food stuffs and as students we feel exploited on addition to the heavy tution and functional fees we pay.', 'no', 'Good', 'Yes', 'regularly', 'Average'),
(6, 'Amiru', 'Aijuka', '2100717967', '20/U/56787/PS', 'under graduate', 'CEES', 'Farm management', 'labaratory', 'Professor Ruth', 'We are  not given enough time to do personal experiments with in the laboratory and yet when more hands on experience in order to get the necessary skills needed for our final project', 'no', 'Good', 'no', 'not regularly', 'Good'),
(7, 'Mubarak', 'Habib', '2100717978', '21/U/17875/EVE', 'under graduate', 'COBAMS', 'Business Admin', 'LIbrary', 'Library attendant', 'I am here to express my sincere gratitude and satisfaction about the services provided by the COBAMS college library that is accessible all time and has  a vast number of books for us to do our research extensively, thank you .', 'no', 'Excellent', 'yes', 'regularly', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `mak_feedback_instructors`
--

CREATE TABLE `mak_feedback_instructors` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `student_number` varchar(100) NOT NULL,
  `registration_number` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `college` varchar(100) NOT NULL,
  `program` varchar(100) NOT NULL,
  `course_unit` varchar(100) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `course_instructor` varchar(100) NOT NULL,
  `argument` varchar(500) NOT NULL,
  `learning_environment` varchar(100) DEFAULT NULL,
  `lecturer_response` varchar(100) DEFAULT NULL,
  `overall_experience` varchar(100) DEFAULT NULL,
  `students_engagement` varchar(100) DEFAULT NULL,
  `students_support` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mak_feedback_instructors`
--

INSERT INTO `mak_feedback_instructors` (`id`, `first_name`, `last_name`, `student_number`, `registration_number`, `level`, `college`, `program`, `course_unit`, `course_code`, `course_instructor`, `argument`, `learning_environment`, `lecturer_response`, `overall_experience`, `students_engagement`, `students_support`) VALUES
(3, 'james', 'conklin', '2100717978', '20/U/56787/PS', 'post graduate', 'COCIS', 'BIST', 'Computer networks', 'CNC 345', 'Sajjabi Benard', 'Iam here to express my grievances about mr.Sajjabi the instructor of computer networks who has increasingly being giving complex final assessments compared to what he covers in class.', 'no', 'Needs improvement', 'Average', 'yes', 'no'),
(4, 'Nakamya ', 'Violet', '2100717978', '20/U/56787/PS', 'post graduate', 'CHUSS', 'Community Psycology', 'Psycological sesitization', 'CPSP 340', 'Senpijja Livingstone', 'Iam here to thank the university at large and the management bord of chuss about the great work they are doing to provide to us five star services that have aided us in having world class education.', 'yes', 'Excellent', 'Excellent', 'yes', 'yes'),
(6, 'james', 'conklin', '2100717978', '21/U/17875/PS', 'under graduate', 'CEES', 'Software Eng', 'Computer networks', 'VCV 345', 'David Musinguzi', 'vola', 'yes', 'Good', 'Good', 'no', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `mak_feedback_courses`
--
ALTER TABLE `mak_feedback_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mak_feedback_facilities`
--
ALTER TABLE `mak_feedback_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mak_feedback_instructors`
--
ALTER TABLE `mak_feedback_instructors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `mak_feedback_courses`
--
ALTER TABLE `mak_feedback_courses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mak_feedback_facilities`
--
ALTER TABLE `mak_feedback_facilities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mak_feedback_instructors`
--
ALTER TABLE `mak_feedback_instructors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
