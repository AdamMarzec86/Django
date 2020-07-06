-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 08 Mar 2020, 06:06
-- Wersja serwera: 10.1.38-MariaDB
-- Wersja PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sport2`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add post', 1, 'add_post'),
(2, 'Can change post', 1, 'change_post'),
(3, 'Can delete post', 1, 'delete_post'),
(4, 'Can view post', 1, 'view_post'),
(5, 'Can add profile', 2, 'add_profile'),
(6, 'Can change profile', 2, 'change_profile'),
(7, 'Can delete profile', 2, 'delete_profile'),
(8, 'Can view profile', 2, 'view_profile'),
(9, 'Can add tournament', 3, 'add_tournament'),
(10, 'Can change tournament', 3, 'change_tournament'),
(11, 'Can delete tournament', 3, 'delete_tournament'),
(12, 'Can view tournament', 3, 'view_tournament'),
(13, 'Can add log entry', 4, 'add_logentry'),
(14, 'Can change log entry', 4, 'change_logentry'),
(15, 'Can delete log entry', 4, 'delete_logentry'),
(16, 'Can view log entry', 4, 'view_logentry'),
(17, 'Can add permission', 5, 'add_permission'),
(18, 'Can change permission', 5, 'change_permission'),
(19, 'Can delete permission', 5, 'delete_permission'),
(20, 'Can view permission', 5, 'view_permission'),
(21, 'Can add group', 6, 'add_group'),
(22, 'Can change group', 6, 'change_group'),
(23, 'Can delete group', 6, 'delete_group'),
(24, 'Can view group', 6, 'view_group'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add content type', 8, 'add_contenttype'),
(30, 'Can change content type', 8, 'change_contenttype'),
(31, 'Can delete content type', 8, 'delete_contenttype'),
(32, 'Can view content type', 8, 'view_contenttype'),
(33, 'Can add session', 9, 'add_session'),
(34, 'Can change session', 9, 'change_session'),
(35, 'Can delete session', 9, 'delete_session'),
(36, 'Can view session', 9, 'view_session');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$9bteMv9aKzEo$mYk8EZcYak31bmGdWOR/vAFAutAWVfuqVnLuqDtEj/g=', '2020-01-15 23:31:05.931600', 1, 'darkaragorn', '', '', 'darkaragorn4@gmail.com', 1, 1, '2020-01-15 23:30:25.913519'),
(2, 'pbkdf2_sha256$150000$kMIGo26XhgM2$WMulxo8RZHacJlYzyxvouTkya408bbZs+ZXgzH04+JY=', '2020-03-06 06:51:04.344910', 0, 'NewUser', 'Adam', 'Marzec', 'adam-marzec4@wp.pl', 0, 1, '2020-01-15 23:32:22.262369'),
(3, 'pbkdf2_sha256$150000$l4LuPhHb1H6h$ifE1AIT1PecOP8gx4IDI3PCn0WSBhh8d7IFPBSJodB0=', '2020-01-16 14:39:40.836408', 0, 'NewUser2', 'Dominik', 'Kosowski', 'kosow.dom@gmail.com', 0, 1, '2020-01-16 14:39:29.373329'),
(4, 'pbkdf2_sha256$150000$CWQ7klMxpWdO$5IbiCaS0BQJhIvNBMXmOpuyzF55LQWN4j7tAreMkrFo=', '2020-01-16 15:29:51.650576', 0, 'NewUser3', 'Janusz', 'Onion', 'onionek@gmail.com', 0, 1, '2020-01-16 15:29:40.852366'),
(5, 'pbkdf2_sha256$150000$E5iXGEk7n287$linWfPc5WKgzZTZzqSKoTyXhWX96RaRgmCeDDMX4czc=', '2020-01-16 21:25:19.236697', 0, 'Baciorka', 'Bożena', 'Zupa', 'zupa.bozena@gmail.com', 0, 1, '2020-01-16 15:50:34.162931');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `blog_post`
--

CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date_posted` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `blog_post`
--

INSERT INTO `blog_post` (`id`, `title`, `content`, `date_posted`, `author_id`) VALUES
(1, 'Hello World', 'witam', '2020-01-16 00:06:34.287623', 2),
(2, 'Świętokrzyski turniej piłki siatkowej', 'Pojawiły się nowe informacje odnośnie turnieju', '2020-01-16 14:52:31.209450', 3),
(3, 'Wsparcie dla drużyny I LO im. Kazimierza Brodzińskiego', 'Szukamy sponsorów dla naszej drużyny czekamy na kontakt onion@gmail.com', '2020-01-16 15:36:39.045552', 4),
(4, 'Nabór do damskiej drużyny siatkówki', 'Szanowni Państwo!\r\nPoszukujemy zdolnych i młodych zawodniczek do naszej licealnej drużyny siatkarskiej \"Stal Sanok\". \r\nKandydatki mogą zgłaszać się na adres email: bożena.zupa@gmail.com, a następnie bezpośrednio po wcześniejszym mailowym umówieniu się na spotkanie ze mną do sali nr. 12 na parterze I LO. \r\nMile widziane jest doświadczenie związane z wcześniejszymi doświadczeniami (wydarzeniami) siatkarskimi.', '2020-01-16 16:16:36.235411', 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(4, 'admin', 'logentry'),
(6, 'auth', 'group'),
(5, 'auth', 'permission'),
(7, 'auth', 'user'),
(1, 'blog', 'post'),
(8, 'contenttypes', 'contenttype'),
(9, 'sessions', 'session'),
(3, 'tournament', 'tournament'),
(2, 'users', 'profile');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-01-15 23:16:54.013918'),
(2, 'auth', '0001_initial', '2020-01-15 23:16:57.154747'),
(3, 'admin', '0001_initial', '2020-01-15 23:17:00.733207'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-15 23:17:01.608340'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-15 23:17:01.706369'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-15 23:17:02.362170'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-15 23:17:02.797813'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-15 23:17:03.247306'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-15 23:17:03.343570'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-15 23:17:03.733559'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-15 23:17:03.832470'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-15 23:17:03.937186'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-15 23:17:04.296307'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-15 23:17:04.716357'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-01-15 23:17:05.146813'),
(16, 'auth', '0011_update_proxy_permissions', '2020-01-15 23:17:05.364846'),
(17, 'blog', '0001_initial', '2020-01-15 23:17:06.023416'),
(18, 'blog', '0002_auto_20200116_0007', '2020-01-15 23:17:06.472631'),
(19, 'sessions', '0001_initial', '2020-01-15 23:17:06.973955'),
(20, 'tournament', '0001_initial', '2020-01-15 23:17:07.951425'),
(21, 'tournament', '0002_tournament_time_start', '2020-01-15 23:17:08.504503'),
(22, 'tournament', '0003_tournament_school', '2020-01-15 23:17:08.894743'),
(23, 'tournament', '0004_auto_20191231_0509', '2020-01-15 23:17:09.799312'),
(24, 'tournament', '0005_auto_20200116_0007', '2020-01-15 23:17:22.192639'),
(25, 'users', '0001_initial', '2020-01-15 23:17:22.811761');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('szx9p9fxllpglfcrcto9t2dnj799pdoc', 'MzRhNjY1OGY1ZmIwMjcxYjY1NDAxNTcwMDE4OTE0ZThkMTQwOWFiODp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Y2JjZGY2NGNjM2ViM2JiOGNmNTY2NDc2Y2IxM2Q1Mjg3NWMwMzg3In0=', '2020-01-30 16:46:49.604576');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tournament_tournament`
--

CREATE TABLE `tournament_tournament` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_posted` datetime(6) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `time_start` time(6) DEFAULT NULL,
  `school` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `first_place` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `second_place` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `third_place` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `tournament_tournament`
--

INSERT INTO `tournament_tournament` (`id`, `title`, `area`, `date_start`, `date_posted`, `content`, `author_id`, `time_start`, `school`, `first_place`, `second_place`, `third_place`) VALUES
(1, 'Wielki turniej noworoczny', 'Świętokrzyskie', '2012-12-23', '2020-01-15 23:38:44.746023', 'Wielki turniej noworoczny', 2, '12:13:00.000000', 'LO Chobrzany', 'Liceum Ogólnokształcące im. Stefana Żeromskiego w Chobrzanach', 'I LO Collegium Gostomianum w Sandomierzu', 'Liceum Ogólnokształcące nr II im. T. Kościuszki'),
(2, 'Świętokrzyski turniej piłki siatkowej', 'Świętokrzyskie', '2020-01-27', '2020-01-16 14:42:34.733547', 'Dnia 27 stycznia odbędzie się międzyszkolny turniej piłki siatkowej', 3, '09:00:00.000000', 'Pierwsze LO Kielce', '', '', ''),
(3, 'Małopolski turniej Piłki Nożnej im Janusza Oniona', 'Małopolskie', '2020-12-24', '2020-01-16 15:34:24.313367', 'Wielki Małopolski turniej im Janusza Oniona odbędzie się w I LO im. Kazimierza Brodzińskiego czekamy na kontakt wszystkich zainteresowanych', 4, '08:00:00.000000', 'I LO im. Kazimierza Brodzińskiego', '', '', ''),
(4, 'Turniej szachowy', 'Podkarpackie', '2019-01-17', '2020-01-16 15:59:10.957263', 'Turniej szachowy organizowany przez I Liceum Ogólnokształcące im. KEN w Sanoku. Zapraszamy wszystkich chętnych z pobliskich szkół w wieku licealnym. \r\nRegulamin konkursu zamieszczony jest na oficjalnej stronie liceum.\r\nWięcej informacji uzyskacie Państwo pod nr. tel. 13 461 35 32, lub w samym liceum w sali nr 4.\r\nSerdecznie zapraszamy.', 5, '09:00:00.000000', 'I LO im. KEN w Sanoku', '', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users_profile`
--

CREATE TABLE `users_profile` (
  `id` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `users_profile`
--

INSERT INTO `users_profile` (`id`, `image`, `user_id`) VALUES
(1, 'default.jpg', 1),
(2, 'default.jpg', 2),
(3, 'profile_pics/luis-suarez-icon.png', 3),
(4, 'profile_pics/janusz.png', 4),
(5, 'profile_pics/girl-in-ballcap-icon.png', 5);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeksy dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeksy dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeksy dla tabeli `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeksy dla tabeli `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeksy dla tabeli `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeksy dla tabeli `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_post_author_id_dd7a8485_fk_auth_user_id` (`author_id`);

--
-- Indeksy dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeksy dla tabeli `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeksy dla tabeli `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indeksy dla tabeli `tournament_tournament`
--
ALTER TABLE `tournament_tournament`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tournament_tournament_author_id_fce5fb35_fk_auth_user_id` (`author_id`);

--
-- Indeksy dla tabeli `users_profile`
--
ALTER TABLE `users_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT dla tabeli `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT dla tabeli `tournament_tournament`
--
ALTER TABLE `tournament_tournament`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `users_profile`
--
ALTER TABLE `users_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ograniczenia dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ograniczenia dla tabeli `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ograniczenia dla tabeli `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ograniczenia dla tabeli `blog_post`
--
ALTER TABLE `blog_post`
  ADD CONSTRAINT `blog_post_author_id_dd7a8485_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);

--
-- Ograniczenia dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ograniczenia dla tabeli `tournament_tournament`
--
ALTER TABLE `tournament_tournament`
  ADD CONSTRAINT `tournament_tournament_author_id_fce5fb35_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);

--
-- Ograniczenia dla tabeli `users_profile`
--
ALTER TABLE `users_profile`
  ADD CONSTRAINT `users_profile_user_id_2112e78d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
