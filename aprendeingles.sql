-- phpMyAdmin SQL Dump
-- version 4.6.6deb1+deb.cihar.com~trusty.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 18-01-2018 a las 22:05:28
-- Versión del servidor: 5.5.57-0ubuntu0.14.04.1
-- Versión de PHP: 7.0.24-1+ubuntu14.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aprendeingles`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursos`
--

CREATE TABLE `recursos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enlace` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `recursos`
--

INSERT INTO `recursos` (`id`, `created_at`, `updated_at`, `deleted_at`, `descripcion`, `enlace`) VALUES
(1, '2018-01-19 05:12:28', '2018-01-19 05:14:54', '2018-01-19 05:14:54', 'EXPRESIONES INGLESAS', 'https://www.ef.com.es/recursos-aprender-ingles/expresiones-inglesas/'),
(2, '2018-01-19 05:15:05', '2018-01-19 05:15:05', NULL, 'EXPRESIONES INGLESAS', 'https://www.ef.com.es/recursos-aprender-ingles/expresiones-inglesas/'),
(3, '2018-01-19 05:15:24', '2018-01-19 05:15:24', NULL, 'GUÍA DE GRAMÁTICA INGLESA', 'https://www.ef.com.es/recursos-aprender-ingles/gramatica-inglesa/'),
(4, '2018-01-19 05:43:23', '2018-01-19 05:53:36', '2018-01-19 05:53:36', 'asd', 'asd'),
(5, '2018-01-19 05:54:25', '2018-01-19 05:54:25', NULL, 'asd', 'asd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Administrator (can create other users)', '2018-01-18 04:27:17', '2018-01-18 04:27:17', NULL),
(2, 'User', '2018-01-18 04:27:17', '2018-01-18 04:27:17', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$8TXgKc8Xv.NoSu3NTBA/t.gC95HUIm9kTgMLhASIPdj25Ct/HkWTe', 1, '7x4JaWda6fA8ZP1ASnE8FfsQVJ8jS45SQ4DWfxRgQqzy9WkXDOHXqJ7Wt1zH', '2018-01-18 04:27:17', '2018-01-18 04:27:17', NULL),
(2, 'asd', 'asd@gmail.com', '$2y$10$wHBhmGt17DWJcVzpH8Jvo.tYcl5y5qnAcO2Kk8m0tNKm.bMiZfXDe', 2, NULL, '2018-01-18 20:34:59', '2018-01-18 20:35:04', '2018-01-18 20:35:04'),
(3, 'luisag ', 'lguaiquirian@gmail.com', '$2y$10$YVM.Rl6yK6YOzbD2mwss4uAUMBS5VMOSRcxpDPzrk6zUQf1U9IdiW', 2, 'gNi8mXxUVNgOOjmXDgVmm8lccYAkVDkgjf58ZEpaoJ3EghM12qOOvpsyE2wy', '2018-01-18 20:35:33', '2018-01-18 20:37:41', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_actions`
--

CREATE TABLE `user_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user_actions`
--

INSERT INTO `user_actions` (`id`, `user_id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'created', 'recursos', 1, '2018-01-19 05:12:28', '2018-01-19 05:12:28', NULL),
(2, 1, 'updated', 'recursos', 1, '2018-01-19 05:14:37', '2018-01-19 05:14:37', NULL),
(3, 1, 'deleted', 'recursos', 1, '2018-01-19 05:14:54', '2018-01-19 05:14:54', NULL),
(4, 1, 'created', 'recursos', 2, '2018-01-19 05:15:05', '2018-01-19 05:15:05', NULL),
(5, 1, 'created', 'recursos', 3, '2018-01-19 05:15:24', '2018-01-19 05:15:24', NULL),
(6, 1, 'updated', 'users', 1, '2018-01-19 05:18:02', '2018-01-19 05:18:02', NULL),
(7, 3, 'updated', 'users', 3, '2018-01-19 05:40:08', '2018-01-19 05:40:08', NULL),
(8, 3, 'updated', 'users', 3, '2018-01-19 05:41:00', '2018-01-19 05:41:00', NULL),
(9, 1, 'updated', 'recursos', 2, '2018-01-19 05:43:17', '2018-01-19 05:43:17', NULL),
(10, 1, 'created', 'recursos', 4, '2018-01-19 05:43:23', '2018-01-19 05:43:23', NULL),
(11, 1, 'deleted', 'recursos', 4, '2018-01-19 05:53:36', '2018-01-19 05:53:36', NULL),
(12, 1, 'updated', 'recursos', 3, '2018-01-19 05:53:43', '2018-01-19 05:53:43', NULL),
(13, 1, 'created', 'recursos', 5, '2018-01-19 05:54:25', '2018-01-19 05:54:25', NULL),
(14, 1, 'updated', 'users', 1, '2018-01-19 05:54:46', '2018-01-19 05:54:46', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `recursos`
--
ALTER TABLE `recursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_deleted_at_index` (`deleted_at`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_deleted_at_index` (`deleted_at`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_4_role_role_id_user` (`role_id`),
  ADD KEY `users_deleted_at_index` (`deleted_at`);

--
-- Indices de la tabla `user_actions`
--
ALTER TABLE `user_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_5_user_user_id_user_action` (`user_id`),
  ADD KEY `user_actions_deleted_at_index` (`deleted_at`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `recursos`
--
ALTER TABLE `recursos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `user_actions`
--
ALTER TABLE `user_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
