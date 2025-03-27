-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Бер 27 2025 р., 08:25
-- Версія сервера: 10.4.32-MariaDB
-- Версія PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `clothes_store`
--

-- --------------------------------------------------------

--
-- Структура таблиці `brands`
--

CREATE TABLE `brands` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='brands';

--
-- Дамп даних таблиці `brands`
--

INSERT INTO `brands` (`id`, `title`) VALUES
(1, 'Zara'),
(2, 'Columbia'),
(3, 'Puma'),
(4, 'Adidas'),
(5, 'Colin\'s'),
(6, 'H&M'),
(7, 'Без бренду'),
(8, 'Nike'),
(9, 'Other');

-- --------------------------------------------------------

--
-- Структура таблиці `category`
--

CREATE TABLE `category` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `title_ua` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='category';

--
-- Дамп даних таблиці `category`
--

INSERT INTO `category` (`id`, `title`, `title_ua`) VALUES
(1, 'women', 'Для жінок'),
(2, 'men', 'Для чоловіків'),
(3, 'children', 'Для дітей');

-- --------------------------------------------------------

--
-- Структура таблиці `categorysub`
--

CREATE TABLE `categorysub` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `title_ua` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='categorysub';

--
-- Дамп даних таблиці `categorysub`
--

INSERT INTO `categorysub` (`id`, `title`, `title_ua`) VALUES
(1, 'clothes', 'Одяг'),
(2, 'accessories', 'Аксесуари'),
(3, 'shoes', 'Взуття');

-- --------------------------------------------------------

--
-- Структура таблиці `categorysubsub`
--

CREATE TABLE `categorysubsub` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `pictures_path` varchar(200) NOT NULL,
  `categorysub_id` int(11) UNSIGNED NOT NULL,
  `title_ua` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='categorysubsub';

--
-- Дамп даних таблиці `categorysubsub`
--

INSERT INTO `categorysubsub` (`id`, `title`, `pictures_path`, `categorysub_id`, `title_ua`) VALUES
(1, 'jackets_women', '../img/women/clothes/jackets_women.png', 1, 'Куртки'),
(2, 'jackets_men', '../img/men/clothes/jackets_men.png', 1, 'Куртки'),
(3, 'jackets_children', '../img/children/clothes/jackets_children.png', 1, 'Куртки'),
(4, 'pants_women', '../img/women/clothes/pants_women.png', 1, 'Штани'),
(5, 'pants_men', '../img/men/clothes/pants_men.png', 1, 'Штани'),
(6, 'pants_children', '../img/children/clothes/pants_children.png', 1, 'Штани'),
(7, 'shorts_women', '../img/women/clothes/shorts_women.png', 1, 'Шорти'),
(8, 'shorts_men', '../img/men/clothes/shorts_men.png', 1, 'Шорти'),
(10, 'jerseys_women', '../img/women/clothes/jerseys_women.png', 1, 'Майки'),
(11, 'jerseys_men', '../img/men/clothes/jerseys_men.png', 1, 'Майки'),
(13, 'shirts_women', '../img/women/clothes/shirts_women.png', 1, 'Сорочки'),
(14, 'shirts_men', '../img/men/clothes/shirts_men.png', 1, 'Сорочки'),
(16, 'sweatshirts_women', '../img/women/clothes/sweatshirts_women.png', 1, 'Толстовки'),
(17, 'sweatshirts_men', '../img/men/clothes/sweatshirts_men.png', 1, 'Толстовки'),
(18, 'sweatshirts_children', '../img/children/clothes/sweatshirts_children.png', 1, 'Толстовки'),
(19, 'tshirts_women', '../img/women/clothes/t_shirts_women.png', 1, 'Футболки'),
(20, 'tshirts_men', '../img/men/clothes/t_shirts_men.png', 1, 'Футболки'),
(21, 'tshirts_children', '../img/children/clothes/t_shirts_children.png', 1, 'Футболки'),
(22, 'thermalunderwear_women', '../img/women/clothes/thermal_underwear_women.png', 1, 'Термобілизна'),
(23, 'thermalunderwear_men', '../img/men/clothes/thermal_underwear_men.png', 1, 'Термобілизна'),
(25, 'thermalunderwear_children', '../img/children/clothes/thermal_underwear_children.png', 1, 'Термобілизна'),
(26, 'backpacks_women', '../img/women/accessories/backpacks_women.png\r\n', 2, 'Рюкзаки'),
(27, 'backpacks_men', '../img/men/accessories/backpacks_men.png\r\n', 2, 'Рюкзаки'),
(28, 'backpacks_children', '../img/children/accessories/backpacks_children.png\r\n', 2, 'Рюкзаки'),
(29, 'gloves_women', '../img/women/accessories/gloves_women.png', 2, 'Рукавички'),
(30, 'gloves_men', '../img/men/accessories/gloves_men.png', 2, 'Рукавички'),
(31, 'gloves_children', '../img/children/accessories/gloves_children.png', 2, 'Рукавички'),
(32, 'headwear_women', '../img/women/accessories/headwear_women.png', 2, 'Головні убори'),
(33, 'headwear_men', '../img/men/accessories/headwear_men.png', 2, 'Головні убори'),
(34, 'headwear_children', '../img/children/accessories/headwear_children.png', 2, 'Головні убори'),
(35, 'scarves_women', '../img/women/accessories/scarves_women.png', 2, 'Шарфи'),
(36, 'scarves_men', '../img/men/accessories/scarves_men.png', 2, 'Шарфи'),
(37, 'scarves_children', '../img/children/accessories/scarves_children.png', 2, 'Шарфи'),
(38, 'boots_women', '../img/women/shoes/boots_women.png', 3, 'Черевики'),
(39, 'boots_men', '../img/men/shoes/boots_men.png', 3, 'Черевики'),
(40, 'boots_children', '../img/children/shoes/boots_children.png', 3, 'Черевики'),
(41, 'flipflops_women', '../img/women/shoes/flip_flops_women.png', 3, 'Шльопки'),
(42, 'flipflops_men', '../img/men/shoes/flip_flops_men.png', 3, 'Шльопки'),
(43, 'flipflops_children', '../img/children/shoes/flip_flops_children.png', 3, 'Шльопки'),
(44, 'kedy_women', '../img/women/shoes/kedy_women.png', 3, 'Кеди'),
(45, 'kedy_men', '../img/men/shoes/kedy_men.png', 3, 'Кеди'),
(46, 'kedy_children', '../img/children/shoes/kedy_children.png', 3, 'Кеди'),
(47, 'sneakers_women', '../img/women/shoes/sneakers_women.png', 3, 'Кросівки'),
(50, 'sneakers_men', '../img/men/shoes/sneakers_men.png', 3, 'Кросівки'),
(51, 'sneakers_children', '../img/children/shoes/sneakers_children.png', 3, 'Кросівки'),
(52, 'windbreakers_women', '../img/women/clothes/windbreakers_women.png', 1, 'Вітровки'),
(53, 'costumes_women', '../img/women/clothes/costumes_women.png', 1, 'Костюми'),
(54, 'leggings_women', '../img/women/clothes/leggings_women.png', 1, 'Легінси'),
(55, 'skirts_women', '../img/women/clothes/skirts_women.png', 1, 'Спідниці'),
(56, 'windbreakers_men', '../img/men/clothes/windbreakers_men.png', 1, 'Вітровки'),
(57, 'costumes_men', '../img/men/clothes/costumes_men.png', 1, 'Костюми'),
(59, 'windbreakers_children', '../img/children/clothes/windbreakers_children.png', 1, 'Вітровки'),
(60, 'costumes_children', '../img/children/clothes/costumes_children.png', 1, 'Костюми'),
(61, 'shorts_children', '../img/children/clothes/shorts_children.png', 1, 'Шорти');

-- --------------------------------------------------------

--
-- Структура таблиці `colors`
--

CREATE TABLE `colors` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='colors';

--
-- Дамп даних таблиці `colors`
--

INSERT INTO `colors` (`id`, `title`) VALUES
(1, 'Синій'),
(2, 'Жовтий'),
(3, 'Білий'),
(4, 'Блакитний'),
(5, 'Зелений'),
(6, 'Чорний'),
(7, 'Коричневий'),
(8, 'Рожевий'),
(9, 'Помаранчевий'),
(10, 'Червоний'),
(11, 'Інші кольори'),
(12, 'Сірий'),
(13, 'Фіолетовий'),
(14, 'Бежевий'),
(15, 'Мультиколір');

-- --------------------------------------------------------

--
-- Структура таблиці `countriesproduct`
--

CREATE TABLE `countriesproduct` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CountriesProduct';

--
-- Дамп даних таблиці `countriesproduct`
--

INSERT INTO `countriesproduct` (`id`, `title`) VALUES
(1, 'Україна'),
(2, 'Бангладеш'),
(3, 'Італія');

-- --------------------------------------------------------

--
-- Структура таблиці `deliverytype`
--

CREATE TABLE `deliverytype` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='deliverytype';

--
-- Дамп даних таблиці `deliverytype`
--

INSERT INTO `deliverytype` (`id`, `title`) VALUES
(1, 'self_pickup'),
(2, 'ukr_poshta'),
(3, 'nova_poshta');

-- --------------------------------------------------------

--
-- Структура таблиці `materials`
--

CREATE TABLE `materials` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='materials';

--
-- Дамп даних таблиці `materials`
--

INSERT INTO `materials` (`id`, `title`) VALUES
(1, 'Бавовна'),
(2, 'Вовна'),
(3, 'Поліестер'),
(4, 'Штучна шкіра');

-- --------------------------------------------------------

--
-- Структура таблиці `orderidproductid`
--

CREATE TABLE `orderidproductid` (
  `id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(11,2) NOT NULL,
  `size_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='orderidproductid';

--
-- Дамп даних таблиці `orderidproductid`
--

INSERT INTO `orderidproductid` (`id`, `order_id`, `product_id`, `quantity`, `price`, `size_id`) VALUES
(81, 116, 98, 1, 1799.00, 5),
(82, 117, 96, 1, 1899.00, 1),
(83, 117, 96, 1, 1899.00, 3),
(84, 117, 97, 2, 2389.00, 2),
(85, 118, 106, 1, 2499.00, 1),
(86, 118, 108, 1, 989.00, 6),
(87, 119, 111, 1, 499.00, 3),
(88, 119, 113, 1, 999.00, 5),
(89, 119, 114, 1, 959.00, 9),
(91, 120, 122, 1, 856.00, 4),
(92, 120, 127, 1, 1234.00, 1),
(93, 120, 116, 3, 899.00, 1),
(94, 120, 117, 1, 899.00, 1),
(95, 121, 98, 1, 1799.00, 5),
(96, 121, 98, 1, 1799.00, 6),
(97, 122, 4, 1, 1007.00, 1),
(98, 123, 125, 1, 799.00, 6),
(99, 124, 98, 1, 1799.00, 5),
(102, 127, 98, 1, 1799.00, 5),
(103, 128, 98, 3, 1799.00, 5),
(104, 129, 98, 1, 1799.00, 5),
(105, 130, 167, 1, 1199.00, 1),
(106, 130, 143, 1, 1899.00, 1),
(107, 130, 17, 1, 2459.00, 3),
(108, 131, 171, 3, 799.00, 1),
(109, 132, 98, 1, 1799.00, 5),
(110, 133, 167, 1, 1199.00, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `orders`
--

CREATE TABLE `orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date_order` datetime NOT NULL,
  `delivery_type_id` int(11) UNSIGNED NOT NULL,
  `payment_type_id` int(11) UNSIGNED NOT NULL,
  `recipient_id` int(11) UNSIGNED NOT NULL,
  `delivery_index` varchar(200) DEFAULT NULL,
  `delivery_full_address` varchar(200) DEFAULT NULL,
  `status_order` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='orders';

--
-- Дамп даних таблиці `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `date_order`, `delivery_type_id`, `payment_type_id`, `recipient_id`, `delivery_index`, `delivery_full_address`, `status_order`) VALUES
(116, NULL, '2024-06-28 11:03:23', 1, 2, 25, '', 'м. Київ, вул. Хрещатик, 300, ТРЦ \'Ocean\'', 'cancelled'),
(117, 5, '2024-12-28 11:04:43', 1, 1, 1, '', 'м. Київ, вул. Хрещатик, 300, ТРЦ \'Ocean\'', 'received'),
(118, NULL, '2024-08-28 12:48:32', 1, 2, 26, '', 'м. Київ, вул. Хрещатик, 300, ТРЦ \'Ocean\'', 'received'),
(119, NULL, '2024-09-28 12:49:41', 1, 2, 27, '', 'м. Київ, вул. Хрещатик, 300, ТРЦ \'Ocean\'', 'received'),
(120, NULL, '2024-10-28 12:51:03', 1, 2, 28, '', 'м. Київ, вул. Хрещатик, 300, ТРЦ \'Ocean\'', 'received'),
(121, 5, '2024-11-28 17:13:08', 1, 1, 1, '', 'м. Київ, вул. Хрещатик, 300, ТРЦ \'Ocean\'', 'received'),
(122, NULL, '2024-07-01 13:58:08', 1, 2, 29, '', 'м. Київ, вул. Хрещатик, 300, ТРЦ \'Ocean\'', 'received'),
(123, NULL, '2024-12-01 13:58:44', 1, 2, 30, '', 'м. Київ, вул. Хрещатик, 300, ТРЦ \'Ocean\'', 'received'),
(124, 5, '2024-12-06 17:49:24', 1, 1, 1, '', 'м. Київ, вул. Хрещатик, 300, ТРЦ \'Ocean\'', 'received'),
(125, 5, '2025-01-06 17:49:51', 1, 1, 1, '', 'м. Київ, вул. Хрещатик, 300, ТРЦ \'Ocean\'', 'inprocessing'),
(127, 5, '2025-01-03 17:54:50', 1, 1, 1, '', 'м. Київ, вул. Хрещатик, 300, ТРЦ \'Ocean\'', 'received'),
(128, 5, '2025-02-12 17:55:30', 1, 1, 1, '', 'м. Київ, вул. Хрещатик, 300, ТРЦ \'Ocean\'', 'received'),
(129, NULL, '2025-03-12 17:56:00', 1, 2, 32, '', 'м. Київ, вул. Хрещатик, 300, ТРЦ \'Ocean\'', 'received'),
(130, 5, '2025-03-20 14:43:23', 1, 1, 1, '', 'м. Київ, вул. Хрещатик, 300, ТРЦ \'Ocean\'', 'received'),
(131, 5, '2025-03-20 15:42:28', 1, 1, 1, '', 'м. Київ, вул. Хрещатик, 300, ТРЦ \'Ocean\'', 'sent'),
(132, 5, '2025-03-20 16:42:13', 1, 2, 1, '', 'м. Київ, вул. Хрещатик, 300, ТРЦ \'Ocean\'', 'inprocessing'),
(133, 5, '2025-03-25 15:42:38', 1, 2, 33, '', 'м. Київ, вул. Хрещатик, 300, ТРЦ \'Ocean\'', 'inprocessing');

-- --------------------------------------------------------

--
-- Структура таблиці `paymenttype`
--

CREATE TABLE `paymenttype` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='paymenttype';

--
-- Дамп даних таблиці `paymenttype`
--

INSERT INTO `paymenttype` (`id`, `title`) VALUES
(1, 'cash'),
(2, 'online');

-- --------------------------------------------------------

--
-- Структура таблиці `productidsizeid`
--

CREATE TABLE `productidsizeid` (
  `id` int(11) UNSIGNED NOT NULL,
  `productid` int(11) UNSIGNED NOT NULL,
  `sizeid` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='productidsizeid';

--
-- Дамп даних таблиці `productidsizeid`
--

INSERT INTO `productidsizeid` (`id`, `productid`, `sizeid`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(7, 4, 1),
(13, 11, 1),
(14, 12, 4),
(15, 13, 2),
(16, 14, 1),
(17, 15, 1),
(18, 16, 1),
(19, 17, 3),
(20, 18, 1),
(21, 19, 1),
(22, 20, 1),
(23, 21, 1),
(24, 22, 1),
(25, 23, 1),
(26, 24, 1),
(27, 25, 1),
(31, 29, 1),
(32, 30, 1),
(33, 31, 1),
(34, 32, 1),
(35, 33, 1),
(36, 34, 1),
(37, 35, 1),
(38, 36, 1),
(39, 37, 1),
(40, 38, 1),
(41, 39, 1),
(42, 40, 1),
(43, 41, 1),
(44, 42, 1),
(45, 43, 1),
(46, 44, 14),
(47, 45, 1),
(48, 46, 14),
(49, 47, 14),
(50, 48, 14),
(51, 49, 14),
(52, 50, 1),
(53, 51, 1),
(54, 52, 14),
(55, 53, 14),
(56, 53, 14),
(57, 54, 1),
(58, 51, 14),
(59, 55, 14),
(60, 56, 14),
(61, 57, 1),
(62, 58, 14),
(63, 59, 1),
(64, 60, 1),
(65, 61, 1),
(66, 62, 1),
(67, 63, 1),
(68, 64, 1),
(69, 65, 1),
(70, 66, 1),
(71, 67, 1),
(132, 89, 1),
(141, 89, 5),
(142, 96, 1),
(143, 96, 2),
(144, 96, 3),
(145, 97, 2),
(146, 97, 1),
(147, 97, 8),
(148, 98, 5),
(149, 98, 6),
(150, 98, 8),
(151, 98, 7),
(152, 98, 9),
(153, 96, 5),
(154, 14, 5),
(156, 100, 9),
(157, 100, 13),
(158, 100, 1),
(159, 101, 1),
(160, 101, 5),
(161, 101, 9),
(162, 102, 1),
(163, 102, 5),
(164, 102, 9),
(165, 103, 2),
(166, 103, 6),
(167, 103, 10),
(168, 103, 1),
(169, 103, 5),
(170, 103, 9),
(171, 104, 3),
(172, 104, 7),
(173, 104, 11),
(174, 105, 4),
(175, 105, 8),
(176, 105, 12),
(177, 105, 1),
(178, 106, 1),
(179, 106, 5),
(180, 106, 9),
(181, 107, 1),
(182, 107, 5),
(183, 107, 9),
(184, 108, 6),
(185, 108, 2),
(186, 108, 10),
(187, 109, 1),
(188, 109, 5),
(189, 109, 3),
(191, 110, 7),
(192, 110, 11),
(193, 110, 13),
(194, 13, 1),
(195, 13, 5),
(196, 13, 9),
(197, 111, 3),
(198, 111, 7),
(199, 111, 11),
(200, 112, 4),
(201, 112, 1),
(202, 112, 3),
(203, 112, 2),
(204, 112, 9),
(205, 113, 1),
(206, 113, 5),
(207, 113, 9),
(208, 113, 3),
(209, 113, 7),
(210, 113, 11),
(211, 114, 1),
(212, 114, 5),
(213, 114, 9),
(214, 114, 10),
(215, 114, 6),
(216, 114, 2),
(217, 115, 3),
(218, 115, 7),
(219, 115, 11),
(220, 115, 4),
(221, 115, 8),
(222, 115, 12),
(223, 116, 1),
(224, 116, 5),
(225, 116, 9),
(226, 116, 2),
(227, 116, 6),
(228, 116, 10),
(229, 116, 3),
(230, 116, 7),
(231, 117, 1),
(232, 117, 5),
(233, 117, 9),
(234, 118, 1),
(235, 118, 5),
(236, 118, 4),
(237, 118, 8),
(238, 118, 12),
(239, 119, 1),
(240, 119, 5),
(242, 119, 9),
(243, 16, 9),
(244, 16, 5),
(245, 16, 2),
(246, 120, 1),
(247, 120, 7),
(248, 120, 4),
(249, 121, 1),
(250, 121, 5),
(251, 121, 9),
(252, 122, 4),
(253, 122, 8),
(254, 122, 12),
(256, 123, 3),
(257, 123, 7),
(258, 123, 11),
(259, 124, 1),
(260, 124, 5),
(261, 124, 9),
(262, 4, 5),
(263, 4, 9),
(264, 125, 2),
(265, 125, 6),
(266, 125, 10),
(267, 126, 5),
(268, 126, 9),
(269, 126, 1),
(270, 127, 1),
(271, 127, 5),
(272, 127, 9),
(273, 127, 2),
(274, 12, 1),
(275, 12, 5),
(276, 12, 9),
(277, 12, 13),
(278, 128, 4),
(279, 128, 8),
(280, 128, 12),
(281, 129, 1),
(282, 129, 5),
(283, 129, 9),
(284, 130, 2),
(285, 130, 6),
(286, 130, 10),
(287, 130, 4),
(288, 11, 5),
(289, 11, 9),
(290, 11, 10),
(291, 131, 3),
(292, 131, 7),
(293, 131, 11),
(294, 132, 4),
(295, 132, 8),
(296, 132, 12),
(297, 133, 1),
(298, 133, 5),
(299, 133, 9),
(321, 143, 1),
(322, 143, 5),
(323, 143, 9),
(324, 143, 10),
(325, 144, 3),
(326, 144, 7),
(327, 144, 11),
(328, 144, 4),
(329, 144, 5),
(330, 144, 9),
(331, 144, 1),
(332, 145, 1),
(333, 145, 5),
(334, 145, 9),
(335, 145, 10),
(336, 145, 11),
(337, 146, 2),
(338, 146, 6),
(339, 146, 10),
(340, 146, 3),
(341, 146, 4),
(342, 146, 13),
(343, 17, 1),
(344, 17, 5),
(345, 17, 9),
(346, 59, 5),
(347, 59, 9),
(348, 59, 2),
(349, 147, 4),
(350, 147, 10),
(351, 147, 9),
(352, 147, 1),
(353, 148, 1),
(354, 148, 5),
(355, 148, 9),
(356, 148, 2),
(357, 19, 5),
(358, 19, 9),
(359, 19, 2),
(360, 149, 3),
(361, 149, 7),
(362, 149, 1),
(363, 149, 4),
(364, 150, 1),
(365, 150, 5),
(366, 150, 9),
(367, 150, 12),
(368, 151, 1),
(369, 151, 5),
(370, 151, 9),
(371, 151, 4),
(372, 18, 5),
(373, 18, 9),
(374, 18, 10),
(375, 152, 1),
(376, 152, 5),
(377, 152, 9),
(378, 152, 3),
(379, 153, 3),
(380, 153, 7),
(381, 153, 4),
(382, 153, 13),
(383, 154, 10),
(384, 154, 11),
(385, 154, 7),
(386, 154, 3),
(387, 20, 9),
(388, 20, 5),
(389, 20, 10),
(390, 155, 1),
(391, 155, 5),
(392, 155, 9),
(393, 155, 3),
(394, 156, 10),
(395, 156, 11),
(396, 156, 9),
(397, 156, 12),
(398, 157, 1),
(399, 157, 5),
(400, 157, 11),
(401, 157, 10),
(402, 158, 1),
(403, 158, 5),
(404, 158, 9),
(405, 158, 13),
(406, 159, 1),
(407, 159, 7),
(408, 159, 11),
(409, 159, 4),
(410, 160, 10),
(411, 160, 11),
(412, 160, 12),
(413, 160, 1),
(414, 161, 10),
(415, 161, 11),
(416, 161, 3),
(417, 161, 5),
(418, 21, 10),
(419, 21, 9),
(420, 21, 5),
(421, 60, 6),
(422, 60, 10),
(423, 60, 9),
(424, 162, 3),
(425, 162, 7),
(426, 162, 11),
(427, 162, 4),
(428, 163, 1),
(429, 163, 5),
(430, 163, 9),
(431, 163, 2),
(432, 23, 10),
(433, 23, 5),
(434, 23, 9),
(435, 62, 5),
(436, 62, 9),
(437, 62, 13),
(438, 164, 10),
(439, 164, 7),
(440, 164, 3),
(441, 164, 1),
(442, 22, 5),
(443, 22, 9),
(444, 22, 13),
(445, 61, 5),
(446, 61, 9),
(447, 61, 13),
(448, 165, 1),
(449, 165, 5),
(450, 165, 9),
(451, 165, 13),
(452, 166, 1),
(453, 166, 5),
(454, 166, 11),
(455, 166, 4),
(456, 167, 1),
(457, 167, 5),
(458, 167, 9),
(459, 167, 2),
(460, 168, 1),
(461, 168, 5),
(462, 168, 7),
(463, 168, 4),
(464, 169, 1),
(465, 169, 10),
(466, 169, 3),
(467, 169, 7),
(468, 170, 10),
(469, 170, 3),
(470, 170, 4),
(471, 170, 9),
(472, 171, 1),
(473, 171, 5),
(474, 171, 2),
(475, 171, 3),
(476, 172, 1),
(477, 172, 5),
(478, 172, 2),
(479, 172, 3),
(480, 173, 1),
(481, 173, 5),
(482, 173, 2),
(483, 173, 3),
(484, 174, 1),
(485, 174, 5),
(486, 174, 2),
(487, 174, 4),
(488, 175, 1),
(489, 175, 5),
(490, 175, 2),
(491, 175, 3),
(492, 176, 1),
(493, 176, 5),
(494, 176, 2),
(495, 176, 3),
(496, 24, 5),
(497, 24, 2),
(498, 24, 3),
(499, 177, 1),
(500, 177, 2),
(501, 177, 3),
(502, 177, 5),
(503, 178, 1),
(504, 178, 5),
(505, 178, 2),
(506, 178, 4),
(507, 179, 5),
(508, 179, 1),
(509, 179, 2),
(510, 179, 9),
(511, 31, 5),
(512, 31, 2),
(513, 31, 4),
(514, 180, 5),
(515, 180, 1),
(516, 180, 2),
(517, 180, 4),
(518, 181, 1),
(519, 181, 5),
(520, 181, 9),
(521, 181, 4),
(522, 182, 1),
(523, 182, 5),
(524, 182, 9),
(525, 182, 2),
(526, 183, 1),
(527, 183, 5),
(528, 183, 9),
(529, 183, 2),
(530, 183, 4),
(531, 6, 1),
(532, 6, 2),
(533, 6, 3),
(534, 6, 5),
(535, 29, 2),
(536, 29, 5),
(537, 29, 3),
(538, 184, 1),
(539, 184, 5),
(540, 184, 2),
(541, 184, 6),
(542, 185, 1),
(543, 185, 5),
(544, 185, 9),
(545, 185, 3),
(546, 186, 1),
(547, 186, 5),
(548, 186, 2),
(549, 186, 3),
(550, 187, 1),
(551, 187, 5),
(552, 187, 2),
(553, 187, 3),
(554, 188, 1),
(555, 188, 5),
(556, 188, 2),
(557, 188, 3),
(558, 30, 5),
(559, 30, 2),
(560, 30, 3),
(561, 189, 1),
(562, 189, 2),
(563, 189, 7),
(564, 190, 1),
(565, 190, 5),
(566, 190, 2),
(567, 190, 3),
(568, 191, 1),
(569, 191, 2),
(570, 191, 4),
(571, 191, 8),
(572, 192, 5),
(573, 192, 1),
(574, 192, 6),
(575, 192, 2),
(576, 193, 1),
(577, 193, 5),
(578, 193, 4),
(579, 193, 8),
(580, 194, 1),
(581, 194, 5),
(582, 194, 7),
(583, 194, 8),
(584, 195, 1),
(585, 195, 2),
(586, 195, 4),
(587, 195, 5),
(588, 196, 1),
(589, 196, 5),
(590, 196, 2),
(591, 196, 3),
(592, 197, 1),
(593, 197, 5),
(594, 197, 2),
(595, 197, 4),
(596, 198, 1),
(597, 198, 5),
(598, 198, 2),
(599, 198, 3),
(600, 199, 1),
(601, 199, 5),
(602, 199, 7),
(603, 199, 4),
(604, 200, 1),
(605, 200, 2),
(606, 200, 3),
(607, 200, 5),
(608, 201, 1),
(609, 201, 2),
(610, 201, 5),
(611, 201, 6),
(612, 25, 2),
(613, 25, 3),
(614, 25, 7),
(615, 202, 1),
(616, 202, 5),
(617, 202, 2),
(618, 202, 3),
(619, 203, 1),
(620, 203, 5),
(621, 203, 2),
(622, 203, 3),
(623, 204, 1),
(624, 204, 2),
(625, 204, 3),
(626, 204, 4),
(627, 205, 1),
(628, 205, 5),
(629, 205, 3),
(630, 205, 7),
(631, 206, 5),
(632, 206, 1),
(633, 206, 2),
(634, 206, 3),
(635, 207, 1),
(636, 207, 5),
(637, 207, 3),
(638, 207, 2),
(656, 225, 11),
(663, 46, 28),
(664, 232, 14),
(665, 232, 28),
(666, 232, 31),
(667, 233, 14),
(668, 233, 28),
(669, 233, 26),
(670, 234, 14),
(671, 234, 28),
(672, 45, 15),
(673, 235, 1),
(674, 235, 15),
(675, 235, 16),
(676, 235, 19),
(677, 236, 1),
(678, 236, 15),
(679, 236, 16),
(680, 237, 1),
(681, 237, 15),
(682, 237, 23),
(683, 237, 16),
(684, 44, 30),
(685, 238, 14),
(686, 238, 30),
(687, 238, 26),
(688, 239, 14),
(689, 239, 30),
(690, 239, 26),
(691, 239, 28),
(692, 240, 14),
(693, 240, 30),
(694, 240, 27),
(695, 240, 31),
(696, 47, 26),
(697, 241, 14),
(698, 241, 26),
(699, 241, 30),
(700, 241, 29),
(701, 241, 28),
(702, 241, 31),
(703, 241, 27),
(704, 242, 14),
(705, 242, 26),
(706, 242, 30),
(707, 243, 14),
(708, 243, 26),
(709, 243, 31),
(710, 34, 32),
(711, 34, 36),
(712, 34, 35),
(713, 244, 1),
(714, 244, 32),
(715, 244, 35),
(716, 244, 33),
(717, 245, 1),
(718, 245, 33),
(719, 245, 37),
(720, 245, 41),
(721, 246, 1),
(722, 246, 32),
(723, 246, 36),
(724, 246, 40),
(725, 35, 37),
(726, 35, 42),
(727, 247, 1),
(728, 247, 37),
(729, 247, 34),
(730, 247, 35),
(731, 248, 1),
(732, 248, 32),
(733, 248, 36),
(734, 248, 40),
(735, 249, 1),
(736, 249, 32),
(737, 249, 36),
(738, 249, 35),
(739, 32, 33),
(740, 32, 34),
(741, 32, 35),
(742, 250, 1),
(743, 250, 33),
(744, 250, 36),
(745, 251, 1),
(746, 251, 33),
(747, 251, 34),
(748, 251, 35),
(749, 251, 40),
(750, 251, 42),
(751, 251, 41),
(752, 252, 1),
(753, 252, 36),
(754, 252, 37),
(755, 252, 40),
(756, 33, 32),
(757, 33, 33),
(758, 33, 34),
(759, 253, 1),
(760, 253, 32),
(761, 253, 40),
(762, 253, 35),
(763, 254, 1),
(764, 254, 32),
(765, 254, 40),
(766, 255, 1),
(767, 255, 40),
(768, 255, 37),
(769, 255, 38);

-- --------------------------------------------------------

--
-- Структура таблиці `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `color_id` int(11) UNSIGNED NOT NULL,
  `brand_id` int(11) UNSIGNED NOT NULL,
  `price` float(10,2) NOT NULL,
  `material_id` int(11) UNSIGNED NOT NULL,
  `country_product_id` int(11) UNSIGNED NOT NULL,
  `part_number` varchar(200) NOT NULL,
  `pictures_path` varchar(200) DEFAULT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `category_sub_id` int(11) UNSIGNED NOT NULL,
  `category_sub_sub_id` int(11) UNSIGNED NOT NULL,
  `price_with_discount` float(10,2) DEFAULT NULL,
  `new_product` tinyint(1) NOT NULL,
  `is_hidden` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='products';

--
-- Дамп даних таблиці `products`
--

INSERT INTO `products` (`id`, `title`, `color_id`, `brand_id`, `price`, `material_id`, `country_product_id`, `part_number`, `pictures_path`, `category_id`, `category_sub_id`, `category_sub_sub_id`, `price_with_discount`, `new_product`, `is_hidden`) VALUES
(1, 'Куртка жіноча Puma', 6, 3, 2999.00, 3, 2, 'nfv-112233', 'img/women/clothes/jackets/1740674760287.jpg', 1, 1, 1, 2549.00, 1, 0),
(4, 'Футболка жіноча Adidas', 6, 4, 1007.00, 3, 2, 'nfv-893453', 'img/women/clothes/tshirts/1740738926386.jpg', 1, 1, 19, NULL, 0, 0),
(6, 'Толстовка дитяча Puma', 9, 3, 1449.00, 1, 2, 'nfv-987121', 'img/children/clothes/sweatshirts/1741631377879.jpg', 3, 1, 18, NULL, 0, 0),
(11, 'Штани жіночі Puma', 4, 3, 999.00, 1, 2, 'nfv-839453', 'img/women/clothes/pants/1740739382370.jpg', 1, 1, 4, NULL, 1, 0),
(12, 'Шорти жіночі Puma', 3, 3, 1595.00, 1, 2, 'nfv-892353', 'img/women/clothes/shorts/1740739159094.jpg', 1, 1, 7, NULL, 1, 0),
(13, 'Майка жіноча Puma', 14, 3, 899.00, 3, 2, 'nfv-489358', 'img/women/clothes/jerseys/1740737861048.jpg', 1, 1, 10, 719.00, 0, 0),
(14, 'Сорочка жіноча Puma', 2, 3, 1199.00, 1, 1, '4066757286810', 'img/women/clothes/shirts/1740731598618.jpg', 1, 1, 13, NULL, 1, 0),
(15, 'Толстовка жіноча Puma', 4, 3, 1199.00, 1, 2, 'nfv-894354', 'img/women/clothes/sweatshirts/1740738781386.jpg', 1, 1, 16, NULL, 1, 0),
(16, 'Термобілизна жіноча Columbia', 6, 2, 999.00, 3, 2, 'nfv-345325', 'img/women/clothes/thermalunderwear/1740738578839.jpg', 1, 1, 22, 799.00, 1, 0),
(17, 'Куртка чоловіча Columbia', 3, 2, 2459.00, 3, 2, 'nfv-678253', 'img/men/clothes/jackets/1741593304916.jpg', 2, 1, 2, NULL, 0, 0),
(18, 'Штани чоловічі Soon', 6, 9, 899.00, 1, 1, 'nfv-327598', 'img/men/clothes/pants/1741594937135.jpg', 2, 1, 5, NULL, 0, 0),
(19, 'Майка бавовняна чоловіча Good', 3, 9, 599.00, 1, 1, 'nfv-7883221', 'img/men/clothes/jerseys/1741593497417.jpg', 2, 1, 11, NULL, 0, 0),
(20, 'Сорочка чоловіча Soon', 14, 9, 899.00, 1, 1, 'nfv-798323', 'img/men/clothes/shirts/1741594006095.jpg', 2, 1, 14, NULL, 0, 0),
(21, 'Толстовка чоловіча Columbia', 6, 2, 1299.00, 3, 2, 'nfv-892375', 'img/men/clothes/sweatshirts/1741594385493.jpg', 2, 1, 17, NULL, 0, 0),
(22, 'Футболка чоловіча Adidas', 3, 4, 789.00, 3, 2, 'nfv-7895321', 'img/men/clothes/tshirts/1741594595532.jpg', 2, 1, 20, NULL, 0, 0),
(23, 'Термобілизна чоловіча Idea', 6, 9, 998.00, 3, 1, 'nfv-789325', 'img/men/clothes/thermalunderwear/1741594240536.jpg', 2, 1, 23, NULL, 0, 0),
(24, 'Куртка дитяча Columbia', 1, 2, 1389.00, 3, 2, 'nfv-892141', 'img/children/clothes/jackets/1741630980153.jpg', 3, 1, 3, NULL, 0, 0),
(25, 'Штани дитячі Soon', 6, 9, 499.00, 1, 1, 'nfv-123781', 'img/children/clothes/pants/1741632500464.jpg', 3, 1, 6, NULL, 0, 0),
(29, 'Толстовка дитяча Columbia', 4, 2, 999.00, 1, 2, 'nfv-987124', 'img/children/clothes/sweatshirts/1741631422795.jpg', 3, 1, 18, NULL, 0, 0),
(30, 'Футболка дитяча Adidas', 6, 4, 999.00, 3, 2, 'nfv-987214', 'img/children/clothes/tshirts/1741631872150.jpg', 3, 1, 21, NULL, 0, 0),
(31, 'Термобілизна дитяча Columbia', 6, 2, 999.00, 3, 2, 'nfv-987124', 'img/children/clothes/thermalunderwear/1741631165750.jpg', 3, 1, 25, NULL, 0, 0),
(32, 'Черевики жіночі Columbia', 6, 2, 1599.00, 4, 2, 'nfv-124892', 'img/women/shoes/boots/1742974684900.jpg', 1, 3, 38, NULL, 0, 0),
(33, 'Шльопки жіночі LifeRelax', 10, 9, 499.00, 3, 1, 'nfv-234532', 'img/women/shoes/flipflops/1742974910737.jpg', 1, 3, 41, NULL, 0, 0),
(34, 'Кеди жіночі Perfect', 6, 9, 999.00, 4, 1, 'nfv-124125', 'img/women/shoes/kedy/1742974268040.jpg', 1, 3, 44, NULL, 0, 0),
(35, 'Кросівки жіночі Perfect', 15, 9, 1499.00, 4, 1, 'nfv-988349', 'img/women/shoes/sneakers/1742974486249.jpg', 1, 3, 47, NULL, 0, 0),
(36, 'Черевики чоловічі Puma', 2, 3, 999.00, 1, 1, '4066757286810', '', 2, 3, 39, NULL, 0, 0),
(37, 'Шльопки чоловічі Puma', 2, 3, 999.00, 1, 1, '4066757286810', '', 2, 3, 42, NULL, 0, 0),
(38, 'Кеди чоловічі Puma', 2, 3, 999.00, 1, 1, '4066757286810', '', 2, 3, 45, NULL, 0, 0),
(39, 'Кросівки чоловічі Puma', 2, 3, 999.00, 4, 1, '4066757286810', '', 2, 3, 50, NULL, 0, 0),
(40, 'Черевики дитячі Puma', 2, 3, 999.00, 1, 1, '4066757286810', '', 3, 3, 40, NULL, 0, 0),
(41, 'Шльопки дитячі Puma', 2, 3, 999.00, 1, 1, '4066757286810', '', 3, 3, 43, NULL, 0, 0),
(42, 'Кеди дитячі Puma', 2, 3, 999.00, 1, 1, '4066757286810', '', 3, 3, 46, NULL, 0, 0),
(43, 'Кросівки дитячі Puma', 2, 3, 999.00, 1, 1, '4066757286810', '', 3, 3, 51, NULL, 0, 0),
(44, 'Рюкзак жіночий Adidas', 1, 4, 999.00, 4, 2, 'nfv-235879', 'img/women/accessories/backpacks/1742820611909.jpg', 1, 2, 26, NULL, 0, 0),
(45, 'Рукавички жіночі Puma', 14, 3, 599.00, 1, 1, 'nfv-124135', 'img/women/accessories/gloves/1742820469645.jpg', 1, 2, 29, NULL, 0, 0),
(46, 'Головний убір жіночий Columbia', 14, 2, 999.00, 1, 2, 'nfv-123112', 'img/women/accessories/headwear/1742820239194.jpg', 1, 2, 32, NULL, 0, 0),
(47, 'Шарф жіночий Puma', 8, 3, 999.00, 1, 2, 'nfv-239843', 'img/women/accessories/scarves/1742820774071.jpg', 1, 2, 35, NULL, 0, 0),
(48, 'Рюкзак чоловічий Puma', 2, 3, 999.00, 1, 1, '4066757286810', '', 2, 2, 26, NULL, 0, 0),
(49, 'Рюкзак чоловічий Puma', 2, 3, 999.00, 1, 1, '4066757286810', '', 2, 2, 27, NULL, 0, 0),
(50, 'Рукавички чоловічі Puma', 2, 3, 999.00, 1, 1, '4066757286810', '', 2, 2, 30, NULL, 0, 0),
(51, 'Кепка чоловіча Puma', 2, 3, 999.00, 1, 1, '4066757286810', '', 2, 2, 33, NULL, 0, 0),
(52, 'Шарф чоловічий Puma', 2, 3, 999.00, 1, 1, '4066757286810', '', 2, 2, 36, NULL, 0, 0),
(53, 'Рюкзак дитячий Puma', 2, 3, 999.00, 1, 1, '4066757286810', '', 3, 2, 28, NULL, 0, 0),
(54, 'Рукавички дитячі Puma', 2, 3, 999.00, 1, 1, '4066757286810', '', 3, 2, 31, NULL, 0, 0),
(55, 'Шапка дитяча Puma', 2, 3, 999.00, 1, 1, '4066757286810', '', 3, 2, 34, NULL, 0, 0),
(56, 'Шарф дитячий Puma', 2, 3, 999.00, 1, 1, '4066757286810', '', 3, 2, 37, NULL, 0, 0),
(57, 'Рукавички чоловічі Nike ACG Dri-FIT', 2, 8, 999.00, 1, 1, '4066757286810', '', 2, 2, 30, NULL, 0, 0),
(58, 'Кепка чоловіча Nike DriFIT Club', 6, 8, 499.00, 1, 1, '4066757286810', '', 2, 2, 33, NULL, 0, 0),
(59, 'Куртка чоловіча Columbia', 6, 2, 1999.00, 3, 1, 'nfv-789231', 'img/men/clothes/jackets/1741593344134.jpg', 2, 1, 2, NULL, 0, 0),
(60, 'Толстовка чоловіча Idea', 6, 9, 1999.00, 3, 1, 'nfv-238597', 'img/men/clothes/sweatshirts/1741594431764.jpg', 2, 1, 17, NULL, 0, 0),
(61, 'Футболка чоловіча Puma', 3, 3, 999.00, 3, 2, 'nfv-324789', 'img/men/clothes/tshirts/1741594610400.jpg', 2, 1, 20, NULL, 0, 0),
(62, 'Термобілизна чоловіча Columbia', 6, 2, 999.00, 3, 2, 'nfv-732891', 'img/men/clothes/thermalunderwear/1741594272844.jpg', 2, 1, 23, NULL, 0, 0),
(63, 'Черевики чоловічі Nike Air Max', 6, 8, 999.00, 4, 1, '4066757286810', '', 2, 3, 39, NULL, 0, 0),
(64, 'Черевики чоловічі Nike Air Max', 3, 8, 999.00, 4, 1, '4066757286810', '', 2, 3, 39, NULL, 0, 0),
(65, 'Кеди чоловічі Nike ACF Watercat', 4, 8, 999.00, 4, 1, '4066757286810', '', 2, 3, 45, NULL, 0, 0),
(66, 'Кросівки чоловічі Nike ACG Mountain', 3, 8, 999.00, 4, 1, '4066757286810', '', 2, 3, 50, NULL, 0, 0),
(67, 'Кросівки чоловічі Nike React SFB Carbon', 3, 8, 2999.00, 4, 1, '4066757286810', '', 2, 3, 50, NULL, 0, 0),
(89, 'Куртка жіноча Columbia', 6, 2, 3499.00, 3, 2, 'nfv-223311', 'img/women/clothes/jackets/1740737576736.jpg', 1, 1, 1, 3149.00, 0, 0),
(96, 'Куртка жіноча H&M', 6, 6, 1899.00, 3, 2, 'nfv-123412', 'img/women/clothes/jackets/1740726364059.jpg', 1, 1, 1, 1671.00, 0, 0),
(97, 'Куртка жіноча long Puma', 6, 3, 2389.00, 3, 3, 'nfv-412342', 'img/women/clothes/jackets/1740726463770.jpg', 1, 1, 1, NULL, 0, 0),
(98, 'Вітровка жіноча Colin\'s', 5, 5, 1799.00, 3, 1, 'nfv-435345', 'img/women/clothes/windbreakers/1741613006265.jpg', 1, 1, 52, 1439.00, 1, 0),
(100, 'Вітровка жіноча Puma', 3, 3, 1399.00, 3, 1, 'nfv-324325', 'img/women/clothes/windbreakers/1741613045580.jpg', 1, 1, 52, NULL, 0, 0),
(101, 'Куртка жіноча Columbia', 6, 2, 899.00, 3, 2, 'nfv-343584', 'img/women/clothes/windbreakers/1740737224897.jpg', 1, 1, 52, NULL, 0, 0),
(102, 'Куртка жіноча Columbia', 15, 2, 1599.00, 3, 3, 'nfv-438543', 'img/women/clothes/windbreakers/1740737275288.jpg', 1, 1, 52, NULL, 0, 0),
(103, 'Костюм жіночий Adidas', 6, 4, 2099.00, 3, 2, 'nfv-345344', 'img/women/clothes/costumes/1740737367677.jpg', 1, 1, 53, NULL, 0, 0),
(104, 'Костюм жіночий Nike', 14, 8, 1799.00, 1, 1, 'nfv-875348', 'img/women/clothes/costumes/1740737429810.jpg', 1, 1, 53, NULL, 0, 0),
(105, 'Костюм жіночий Colin\'s', 6, 5, 1899.00, 1, 1, 'nfv-594534', 'img/women/clothes/costumes/1740737497964.jpg', 1, 1, 53, NULL, 0, 0),
(106, 'Костюм жіночий Puma', 5, 3, 2499.00, 3, 3, 'nfv-894835', 'img/women/clothes/costumes/1740737546904.jpg', 1, 1, 53, NULL, 0, 0),
(107, 'Легінси жіночі H&M', 6, 6, 599.00, 1, 2, 'nfv-635487', 'img/women/clothes/leggings/1740737659054.jpg', 1, 1, 54, NULL, 0, 0),
(108, 'Легінси жіночі Puma', 1, 3, 989.00, 3, 2, 'nfv-874335', 'img/women/clothes/leggings/1740737708573.jpg', 1, 1, 54, NULL, 0, 0),
(109, 'Легінси жіночі Adidas', 14, 4, 1199.00, 3, 3, 'nfv-895432', 'img/women/clothes/leggings/1740737759543.jpg', 1, 1, 54, NULL, 0, 0),
(110, 'Легінси жіночі Nike', 6, 8, 1099.00, 1, 1, 'nfv-843951', 'img/women/clothes/leggings/1740737797941.jpg', 1, 1, 54, NULL, 0, 0),
(111, 'Майка жіноча other', 15, 9, 499.00, 1, 1, 'nfv-435831', 'img/women/clothes/jerseys/1740737913006.jpg', 1, 1, 10, 399.00, 0, 0),
(112, 'Майка жіноча Nike', 14, 8, 799.00, 1, 2, 'nfv-782930', 'img/women/clothes/jerseys/1740737971136.jpg', 1, 1, 10, 639.00, 0, 0),
(113, 'Сорочка жіноча Holiday', 3, 9, 999.00, 1, 1, 'nfv-893248', 'img/women/clothes/shirts/1740738071694.jpg', 1, 1, 13, NULL, 1, 0),
(114, 'Сорочка жіноча Perfect', 14, 1, 959.00, 3, 1, 'nfv-479828', 'img/women/clothes/shirts/1740738161394.jpg', 1, 1, 13, NULL, 1, 0),
(115, 'Сорочка жіноча Amazing', 14, 9, 759.00, 1, 3, 'nfv-843958', 'img/women/clothes/shirts/1740738239606.jpg', 1, 1, 13, NULL, 0, 0),
(116, 'Спідниця жіноча Perfect', 6, 9, 899.00, 1, 1, 'nfv-398453', 'img/women/clothes/skirts/1740738319919.jpg', 1, 1, 55, NULL, 0, 0),
(117, 'Спідниця жіноча Modern', 7, 9, 899.00, 1, 3, 'nfv-893543', 'img/women/clothes/skirts/1740738372103.jpg', 1, 1, 55, NULL, 0, 0),
(118, 'Спіниця жіноча Nancy', 3, 9, 1099.00, 1, 1, 'nfv-894353', 'img/women/clothes/skirts/1740738448182.jpg', 1, 1, 55, NULL, 0, 0),
(119, 'Спідниця жіноча Strict', 6, 6, 999.00, 1, 1, 'nfv-893453', 'img/women/clothes/skirts/1740738506343.jpg', 1, 1, 55, NULL, 0, 0),
(120, 'Термобілизна жіноча Nice', 6, 1, 799.00, 3, 3, 'nfv-982359', 'img/women/clothes/thermalunderwear/1740738624166.jpg', 1, 1, 22, NULL, 0, 0),
(121, 'Термобілизна жіноча Columbia', 6, 2, 1399.00, 3, 2, 'nfv-893259', 'img/women/clothes/thermalunderwear/1740738671854.jpg', 1, 1, 22, NULL, 0, 0),
(122, 'Толстовка жіноча Columbia', 4, 2, 856.00, 1, 1, 'nfv-8943540', 'img/women/clothes/sweatshirts/1740738752914.jpg', 1, 1, 16, NULL, 0, 0),
(123, 'Толстовка жіноча Adidas', 6, 4, 1489.00, 1, 1, 'nfv-893453', 'img/women/clothes/sweatshirts/1740738826091.jpg', 1, 1, 16, NULL, 0, 0),
(124, 'Толстовка жіноча Nike', 5, 8, 967.00, 3, 1, 'nfv-893453', 'img/women/clothes/sweatshirts/1740738872329.jpg', 1, 1, 16, NULL, 0, 0),
(125, 'Футболка жіноча Columbia', 6, 2, 799.00, 3, 2, 'nfv-983453', 'img/women/clothes/tshirts/1740738966296.jpg', 1, 1, 19, NULL, 0, 0),
(126, 'Футболка жіноча Lady Life', 3, 9, 998.00, 1, 2, 'nfv-435834', 'img/women/clothes/tshirts/1740739015581.jpg', 1, 1, 19, NULL, 0, 0),
(127, 'Футболка жіноча Nike', 14, 8, 1234.00, 3, 1, 'nfv-983462', 'img/women/clothes/tshirts/1740739081170.jpg', 1, 1, 19, NULL, 1, 0),
(128, 'Шорти жіночі Perfect', 14, 9, 899.00, 3, 1, 'nfv-893452', 'img/women/clothes/shorts/1740739226679.jpg', 1, 1, 7, NULL, 0, 0),
(129, 'Шорти жіночі Nike', 3, 8, 567.00, 3, 2, 'nfv-5728327', 'img/women/clothes/shorts/1740739264547.jpg', 1, 1, 7, NULL, 1, 0),
(130, 'Шорти жіночі Adidas', 10, 4, 899.00, 1, 2, 'nfv-8935296', 'img/women/clothes/shorts/1741613087402.jpg', 1, 1, 7, NULL, 1, 0),
(131, 'Штани жіночі Sincerely', 6, 9, 1123.00, 3, 1, 'nfv-438953', 'img/women/clothes/pants/1740739519537.jpg', 1, 1, 4, NULL, 0, 0),
(132, 'Штани жіночі Nike', 5, 8, 899.00, 1, 2, 'nfv-932578', 'img/women/clothes/pants/1740739561966.jpg', 1, 1, 4, NULL, 0, 0),
(133, 'Штани жіночі Adidas', 12, 4, 1599.00, 3, 2, 'nfv-893487', 'img/women/clothes/pants/1740739614069.jpg', 1, 1, 4, NULL, 0, 0),
(143, 'Костюм чоловічий Adidas', 6, 4, 1899.00, 1, 2, 'nfv-768231', 'img/men/clothes/costumes/1741593127478.jpg', 2, 1, 57, NULL, 0, 0),
(144, 'Костюм чоловічий Nike', 3, 8, 2219.00, 3, 2, 'nfv-789231', 'img/men/clothes/costumes/1741593146057.jpg', 2, 1, 57, NULL, 0, 0),
(145, 'Костюм чоловічий Puma', 14, 3, 1399.00, 1, 3, 'nfv-758921', 'img/men/clothes/costumes/1741593183961.jpg', 2, 1, 57, NULL, 0, 0),
(146, 'Костюм чоловічий Adidas', 3, 4, 2399.00, 3, 3, 'nfv-789231', 'img/men/clothes/costumes/1741593226322.jpg', 2, 1, 57, NULL, 0, 0),
(147, 'Куртка чоловіча Soon', 6, 9, 1299.00, 3, 1, 'nfv-789621', 'img/men/clothes/jackets/1741593387911.jpg', 2, 1, 2, NULL, 0, 0),
(148, 'Куртка чоловіча Nike', 6, 8, 1499.00, 3, 2, 'nfv-785231', 'img/men/clothes/jackets/1741593438160.jpg', 2, 1, 2, NULL, 0, 0),
(149, 'Майка чоловіча Perfect', 12, 9, 666.00, 3, 1, 'nfv-782357', 'img/men/clothes/jerseys/1741593546381.jpg', 2, 1, 11, NULL, 0, 0),
(150, 'Майка чоловіча Salty', 12, 9, 799.00, 1, 3, 'nfv-786259', 'img/men/clothes/jerseys/1741593612504.jpg', 2, 1, 11, NULL, 0, 0),
(151, 'Майка чоловіча Soon', 14, 9, 888.00, 1, 3, 'nfv-275381', 'img/men/clothes/jerseys/1741593662845.jpg', 2, 1, 11, NULL, 0, 0),
(152, 'Штани чоловічі Puma', 14, 3, 777.00, 3, 2, 'nfv-793251', 'img/men/clothes/pants/1741594993373.jpg', 2, 1, 5, NULL, 0, 0),
(153, 'Штани чоловічіі Adidas', 1, 4, 599.00, 3, 2, 'nfv-788912', 'img/men/clothes/pants/1741595032769.jpg', 2, 1, 5, NULL, 0, 0),
(154, 'Штани чоловічі Perfect', 7, 9, 799.00, 1, 3, 'nfv-789323', 'img/men/clothes/pants/1741595084586.jpg', 2, 1, 5, NULL, 0, 0),
(155, 'Сорочка чоловіча Idea', 1, 9, 777.00, 3, 1, 'nfv-732589', 'img/men/clothes/shirts/1741594060123.jpg', 2, 1, 14, NULL, 0, 0),
(156, 'Сорочка чоловіча Good', 15, 9, 666.00, 3, 3, 'nfv-789231', 'img/men/clothes/shirts/1741594101709.jpg', 2, 1, 14, NULL, 0, 0),
(157, 'Сорочка чоловіча Idea', 1, 9, 555.00, 1, 1, 'nfv-758932', 'img/men/clothes/shirts/1741594151715.jpg', 2, 1, 14, NULL, 0, 0),
(158, 'Шорти чоловічі Adidas', 3, 4, 555.00, 3, 2, 'nfv-789234', 'img/men/clothes/shorts/1741594753727.jpg', 2, 1, 8, NULL, 0, 0),
(159, 'Шорти чоловічі Puma', 7, 3, 888.00, 3, 2, 'nfv-798523', 'img/men/clothes/shorts/1741594789393.jpg', 2, 1, 8, NULL, 0, 0),
(160, 'Шорти чоловічі Soon', 4, 9, 777.00, 3, 3, 'nfv-798523', 'img/men/clothes/shorts/1741594836167.jpg', 2, 1, 8, NULL, 0, 0),
(161, 'Шорти чоловічі Nike', 3, 8, 1119.00, 3, 1, 'nfv-788512', 'img/men/clothes/shorts/1741594874410.jpg', 2, 1, 8, NULL, 0, 0),
(162, 'Толстовка чоловіча Puma', 14, 3, 888.00, 3, 2, 'nfv-798352', 'img/men/clothes/sweatshirts/1741594468085.jpg', 2, 1, 17, NULL, 0, 0),
(163, 'Толстовка чоловіча Adidas', 6, 4, 999.00, 3, 2, 'nfv-899235', 'img/men/clothes/sweatshirts/1741594509058.jpg', 2, 1, 17, NULL, 0, 0),
(164, 'Термобілизна чоловіча Nike', 6, 8, 999.00, 3, 3, 'nfv-789325', 'img/men/clothes/thermalunderwear/1741594313300.jpg', 2, 1, 23, NULL, 0, 0),
(165, 'Футболка чоловіча Puma', 5, 3, 777.00, 3, 2, 'nfv-235791', 'img/men/clothes/tshirts/1741594646775.jpg', 2, 1, 20, NULL, 0, 0),
(166, 'Футболка чоловіча Nike', 4, 8, 999.00, 3, 3, 'nfv-789121', 'img/men/clothes/tshirts/1741594699954.jpg', 2, 1, 20, NULL, 0, 0),
(167, 'Вітровка чоловіча Puma', 6, 3, 1199.00, 3, 2, 'nfv-985231', 'img/men/clothes/windbreakers/1741592647075.jpg', 2, 1, 56, NULL, 0, 0),
(168, 'Вітровка чоловіча Nike', 15, 8, 1133.00, 3, 2, 'nfv-125791', 'img/men/clothes/windbreakers/1741592696594.jpg', 2, 1, 56, NULL, 0, 0),
(169, 'Вітровка чоловіча Adidas', 12, 4, 999.00, 3, 2, 'nfv-798511', 'img/men/clothes/windbreakers/1741592751314.jpg', 2, 1, 56, NULL, 0, 0),
(170, 'Вітровка чоловіча Columbia', 1, 2, 1133.00, 3, 3, 'nfv-127481', 'img/men/clothes/windbreakers/1741592797166.jpg', 2, 1, 56, NULL, 0, 0),
(171, 'Вітровка дитяча Puma', 8, 3, 799.00, 3, 2, 'nfv-798234', 'img/children/clothes/windbreakers/1741630726873.jpg', 3, 1, 59, NULL, 0, 0),
(172, 'Вітровка дитяча Idea', 14, 9, 999.00, 3, 3, 'nfv-798323', 'img/children/clothes/windbreakers/1741630764501.jpg', 3, 1, 59, NULL, 0, 0),
(173, 'Вітровка дитяча Soon', 15, 9, 1209.00, 3, 1, 'nfv-729383', 'img/children/clothes/windbreakers/1741630820047.jpg', 3, 1, 59, NULL, 0, 0),
(174, 'Костюм дитячий Puma', 6, 3, 1599.00, 3, 2, 'nfv-798233', 'img/children/clothes/costumes/1741630861383.jpg', 3, 1, 60, NULL, 0, 0),
(175, 'Костюм дитячий Puma', 1, 3, 999.00, 3, 2, 'nfv-789233', 'img/children/clothes/costumes/1741630892886.jpg', 3, 1, 60, NULL, 0, 0),
(176, 'Костюм дитячий Perfect', 14, 9, 1499.00, 1, 3, 'nfv-897532', 'img/children/clothes/costumes/1741630934250.jpg', 3, 1, 60, NULL, 0, 0),
(177, 'Куртка дитяча Columbia', 1, 2, 1299.00, 3, 2, 'nfv-987323', 'img/children/clothes/jackets/1741631032657.jpg', 3, 1, 3, NULL, 0, 0),
(178, 'Куртка дитяча Columbia', 8, 2, 777.00, 3, 2, 'nfv-871324', 'img/children/clothes/jackets/1741631068569.jpg', 3, 1, 3, NULL, 0, 0),
(179, 'Куртка дитяча Columbia', 3, 2, 999.00, 3, 3, 'nfv-789152', 'img/children/clothes/jackets/1741631117156.jpg', 3, 1, 3, NULL, 0, 0),
(180, 'Термобілизна дитяча Idea', 6, 9, 1298.00, 3, 2, 'nfv-971528', 'img/children/clothes/thermalunderwear/1741631222758.jpg', 3, 1, 25, NULL, 0, 0),
(181, 'Термобілизна дитяча Soon', 6, 9, 888.00, 3, 2, 'nfv-987124', 'img/children/clothes/thermalunderwear/1741631255197.jpg', 3, 1, 25, NULL, 0, 0),
(182, 'Термобілизна дитяча Perfect', 6, 9, 1113.00, 3, 3, 'nfv-768141', 'img/children/clothes/thermalunderwear/1741631292796.jpg', 3, 1, 25, NULL, 0, 0),
(183, 'Термобілизна дитяча Columbia', 6, 2, 999.00, 3, 1, 'nfv-712871', 'img/children/clothes/thermalunderwear/1741631328066.jpg', 3, 1, 25, NULL, 0, 0),
(184, 'Толстовка дитяча Puma', 4, 3, 1299.00, 3, 2, 'nfv-817952', 'img/children/clothes/sweatshirts/1741631464481.jpg', 3, 1, 18, NULL, 0, 0),
(185, 'Толстовка дитяча Soon', 3, 9, 777.00, 1, 2, 'nfv-978912', 'img/children/clothes/sweatshirts/1741631503236.jpg', 3, 1, 18, NULL, 0, 0),
(186, 'Толстовка дитяча Perfect', 7, 9, 888.00, 1, 3, 'nfv-791252', 'img/children/clothes/sweatshirts/1741631543006.jpg', 3, 1, 18, NULL, 0, 0),
(187, 'Толстовка жіноча Adidas', 6, 4, 777.00, 3, 1, 'nfv-780921', 'img/children/clothes/sweatshirts/1741631792271.jpg', 3, 1, 18, NULL, 0, 0),
(188, 'Толстовка дитяча Nike', 5, 8, 1499.00, 1, 3, 'nfv-798841', 'img/children/clothes/sweatshirts/1741631832492.jpg', 3, 1, 18, NULL, 0, 0),
(189, 'Футболка дитяча Puma', 3, 3, 699.00, 1, 1, 'nfv-897221', 'img/children/clothes/tshirts/1741631909386.jpg', 3, 1, 21, NULL, 0, 0),
(190, 'Футболка дитяча Soon', 15, 9, 777.00, 1, 1, 'nfv-987142', 'img/children/clothes/tshirts/1741631940145.jpg', 3, 1, 21, NULL, 0, 0),
(191, 'Футболка дитяча BoardRebels', 3, 9, 499.00, 1, 1, 'nfv-798242', 'img/children/clothes/tshirts/1741631984819.jpg', 3, 1, 21, NULL, 0, 0),
(192, 'Футболка дитяча Columbia', 6, 2, 1021.00, 3, 2, 'nfv-978814', 'img/children/clothes/tshirts/1741632020412.jpg', 3, 1, 21, NULL, 0, 0),
(193, 'Футболка дитяча Perfect', 3, 9, 888.00, 1, 3, 'nfv-871421', 'img/children/clothes/tshirts/1741632056283.jpg', 3, 1, 21, NULL, 0, 0),
(194, 'Футболка дитяча Nike', 14, 8, 1003.00, 1, 2, 'nfv-978124', 'img/children/clothes/tshirts/1741632090908.jpg', 3, 1, 21, NULL, 0, 0),
(195, 'Шорти дитячі Soon', 6, 9, 599.00, 3, 1, 'nfv-7815212', 'img/children/clothes/shorts/1741632175252.jpg', 3, 1, 61, NULL, 0, 0),
(196, 'Шорти дитячі Puma', 14, 3, 1399.00, 1, 2, 'nfv-879124', 'img/children/clothes/shorts/1741632198436.jpg', 3, 1, 61, NULL, 0, 0),
(197, 'Шорти дитячі RaoderPRO', 6, 9, 599.00, 3, 3, 'nfv-978124', 'img/children/clothes/shorts/1741632238501.jpg', 3, 1, 61, NULL, 0, 0),
(198, 'Шорти дитячі Perfect', 6, 9, 799.00, 3, 3, 'nfv-789812', 'img/children/clothes/shorts/1741632273280.jpg', 3, 1, 61, NULL, 0, 0),
(199, 'Шорти дитячі Perfect', 3, 9, 799.00, 3, 3, 'nfv-142781', 'img/children/clothes/shorts/1741632313703.jpg', 3, 1, 61, NULL, 0, 0),
(200, 'Шорти дитячі Perfect', 2, 9, 999.00, 1, 1, 'nfv-124789', 'img/children/clothes/shorts/1741632355924.jpg', 3, 1, 61, NULL, 0, 0),
(201, 'Шорти дитячі Adidas', 8, 4, 1199.00, 3, 2, 'nfv-879124', 'img/children/clothes/shorts/1741632408140.jpg', 3, 1, 61, NULL, 0, 0),
(202, 'Штани дитячі Columbia', 6, 2, 1019.00, 3, 1, 'nfv-988121', 'img/children/clothes/pants/1741632580106.jpg', 3, 1, 6, NULL, 0, 0),
(203, 'Штани дитячі Perfect', 6, 9, 999.00, 1, 1, 'nfv-781243', 'img/children/clothes/pants/1741632639172.jpg', 3, 1, 6, NULL, 0, 0),
(204, 'Штани дитячі Perfect', 6, 9, 777.00, 3, 2, 'nfv-1293879', 'img/children/clothes/pants/1741632685289.jpg', 3, 1, 6, NULL, 0, 0),
(205, 'Штани дитячі Nike', 5, 8, 888.00, 1, 1, 'nfv-879991', 'img/children/clothes/pants/1741632719522.jpg', 3, 1, 6, NULL, 0, 0),
(206, 'Штани дитячі Adidas', 14, 4, 556.00, 3, 2, 'nfv-124978', 'img/children/clothes/pants/1741632757605.jpg', 3, 1, 6, NULL, 0, 0),
(207, 'Штани дитячі Soon', 3, 9, 699.00, 1, 1, 'nfv-124789', 'img/children/clothes/pants/1741632802637.jpg', 3, 1, 6, NULL, 0, 0),
(225, '213', 14, 4, 123123.00, 1, 2, '123123', '', 1, 1, 52, NULL, 0, 0),
(232, 'Головний убір жіночий Columbia', 10, 2, 888.00, 1, 2, 'nfv-123115', 'img/women/accessories/headwear/1742820290458.jpg', 1, 2, 32, NULL, 0, 0),
(233, 'Головний убір жіночий Larum', 13, 9, 777.00, 1, 1, 'nfv-123145', 'img/women/accessories/headwear/1742820342315.jpg', 1, 2, 32, NULL, 0, 0),
(234, 'Головний убір жіночий Columbia', 1, 2, 666.00, 1, 2, 'nfv-123115', 'img/women/accessories/headwear/1742820414021.jpg', 1, 2, 32, NULL, 0, 0),
(235, 'Рукавички жіночі Columbia', 12, 3, 899.00, 2, 2, 'nfv-124136', 'img/women/accessories/gloves/1742820509479.jpg', 1, 2, 29, NULL, 0, 0),
(236, 'Рукавички жіночі Puma', 6, 3, 699.00, 2, 2, 'nfv-124136', 'img/women/accessories/gloves/1742820533607.jpg', 1, 2, 29, NULL, 0, 0),
(237, 'Рукавички жіночі Idea', 14, 9, 499.00, 1, 1, 'nfv-124137', 'img/women/accessories/gloves/1742820564166.jpg', 1, 2, 29, NULL, 0, 0),
(238, 'Рюкзак жіночий Adidas', 8, 4, 888.00, 4, 2, 'nfv-235889', 'img/women/accessories/backpacks/1742820647556.jpg', 1, 2, 26, NULL, 0, 0),
(239, 'Рюкзак жіночий Columbia', 8, 2, 1099.00, 4, 2, 'nfv-235881', 'img/women/accessories/backpacks/1742820687017.jpg', 1, 2, 26, NULL, 0, 0),
(240, 'Рюкзак жіночий Puma', 13, 3, 888.00, 4, 1, 'nfv-235812', 'img/women/accessories/backpacks/1742820717931.jpg', 1, 2, 26, NULL, 0, 0),
(241, 'Шарф жіночий Zara', 7, 1, 899.00, 2, 1, 'nfv-239845', 'img/women/accessories/scarves/1742820832482.jpg', 1, 2, 35, NULL, 0, 0),
(242, 'Шарф жіночий H&M', 3, 6, 777.00, 2, 3, 'nfv-239844', 'img/women/accessories/scarves/1742820907228.jpg', 1, 2, 35, NULL, 0, 0),
(243, 'Шарф жіночий Zara', 6, 1, 699.00, 2, 3, 'nfv-239844', 'img/women/accessories/scarves/1742820953201.jpg', 1, 2, 35, NULL, 0, 0),
(244, 'Кеди жіночі Nice', 3, 9, 1199.00, 4, 3, 'nfv-124127', 'img/women/shoes/kedy/1742974353770.jpg', 1, 3, 44, NULL, 0, 0),
(245, 'Кеди жіночі Redder', 3, 9, 1299.00, 4, 1, 'nfv-124128', 'img/women/shoes/kedy/1742974383186.jpg', 1, 3, 44, NULL, 0, 0),
(246, 'Кеди жіночі Soon', 6, 9, 1399.00, 4, 1, 'nfv-124129', 'img/women/shoes/kedy/1742974410744.jpg', 1, 3, 44, NULL, 0, 0),
(247, 'Кросівки жіночі Gazelle', 10, 9, 1599.00, 4, 3, 'nfv-988348', 'img/women/shoes/sneakers/1742974514539.jpg', 1, 3, 47, NULL, 0, 0),
(248, 'Кросівки жіночі Soon', 6, 9, 999.00, 4, 2, 'nfv-988347', 'img/women/shoes/sneakers/1742974573876.jpg', 1, 3, 47, NULL, 0, 0),
(249, 'Кросівки жіночі LifeRelax', 3, 9, 1799.00, 4, 2, 'nfv-988346', 'img/women/shoes/sneakers/1742974629036.jpg', 1, 3, 47, NULL, 0, 0),
(250, 'Черевики жіночі Soon', 14, 9, 1399.00, 4, 1, 'nfv-124892', 'img/women/shoes/boots/1742974717537.jpg', 1, 3, 38, NULL, 0, 0),
(251, 'Черевики жіночі Columbia', 6, 2, 1699.00, 4, 2, 'nfv-124892', 'img/women/shoes/boots/1742974736904.jpg', 1, 3, 38, NULL, 0, 0),
(252, 'Черевики жіночі LifeRelax', 6, 9, 1999.00, 4, 3, 'nfv-124892', 'img/women/shoes/boots/1742974765944.jpg', 1, 3, 38, NULL, 0, 0),
(253, 'Шльопки жіночі Nike', 14, 8, 599.00, 3, 3, 'nfv-234531', 'img/women/shoes/flipflops/1742974938886.jpg', 1, 3, 41, NULL, 0, 0),
(254, 'Шльопки жіночі Puma', 3, 3, 799.00, 3, 2, 'nfv-234533', 'img/women/shoes/flipflops/1742974962631.jpg', 1, 3, 41, NULL, 0, 0),
(255, 'Шльопки жіночі Adidas', 12, 4, 888.00, 3, 2, 'nfv-234534', 'img/women/shoes/flipflops/1742974998427.jpg', 1, 3, 41, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `recipients`
--

CREATE TABLE `recipients` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) DEFAULT '',
  `phone` varchar(200) NOT NULL,
  `patronymic` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='recipients';

--
-- Дамп даних таблиці `recipients`
--

INSERT INTO `recipients` (`id`, `first_name`, `last_name`, `phone`, `patronymic`) VALUES
(1, 'Іван', 'Шевченко', '+380961111111', ''),
(5, 'Ivan', 'Shevchenko', '+380961111112', ''),
(6, 'ASD', '', '+381232112312', ''),
(7, 'dfgdf', '', '+38435345345', ''),
(8, 'Іван4', ' ', '+383453453453', ''),
(9, 'Іван3', '', '+38324324234', ''),
(10, '02', '02', '+380000000000', '02'),
(11, 'пра', '', '+386767686787', ''),
(12, 'р', '', '+38797898798', ''),
(13, 'root', '', '+38345345345', ''),
(14, 'asdsa', '', '+38123123123', ''),
(15, 'dsfsdf', '', '+384353453454', ''),
(16, 'root', '', '+38324234234', ''),
(17, 'asdasd', '', '+3823132123', ''),
(18, 'hjjkk', '', '+385678999878', ''),
(19, 'dfgd', '', '+38546456546', ''),
(20, 'gfd', '', '+3843534545', ''),
(21, 'fsdfsd', '', '+3832343423', ''),
(22, 'sdf', '', '+38323243423', ''),
(23, 'sdfsadfa', '', '+380671234567', ''),
(24, 'sdfasdfsd', '', '+380671231231', ''),
(25, 'Марія', '', '+380968765435', ''),
(26, 'Марія', '', '+380986574835', ''),
(27, 'Ліліан', '', '+38964563742', ''),
(28, 'Роза', '', '+380967654325', ''),
(29, 'Марія', '', '+38325435344', ''),
(30, 'Марія', '', '+383243243534', ''),
(31, 'Марія', '', '+380964567831', ''),
(32, 'Марія', '', '+380876546373', ''),
(33, 'Іван', 'Шевченко', '+380964123412', ''),
(34, 'Іван4', ' ', '+38533233333', ''),
(35, 'Іван3', ' ', '+38432423422', ''),
(36, 'Іван3', ' ', '+38126478324', ''),
(37, 'Марія', '', '+380675674743', ''),
(38, 'Іван4', ' ', '+38535345345', '');

-- --------------------------------------------------------

--
-- Структура таблиці `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) UNSIGNED NOT NULL,
  `comment` varchar(200) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `grade` int(11) UNSIGNED NOT NULL,
  `advantages` varchar(200) NOT NULL,
  `disadvantages` varchar(200) NOT NULL,
  `datereview` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='reviews';

--
-- Дамп даних таблиці `reviews`
--

INSERT INTO `reviews` (`id`, `comment`, `user_id`, `product_id`, `grade`, `advantages`, `disadvantages`, `datereview`) VALUES
(20, 'Гарна куртка', 5, 98, 5, 'Тепла', 'Відсутні', '2025-02-28');

-- --------------------------------------------------------

--
-- Структура таблиці `roles`
--

CREATE TABLE `roles` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='roles';

--
-- Дамп даних таблиці `roles`
--

INSERT INTO `roles` (`id`, `title`) VALUES
(1, 'Administrator'),
(2, 'Client');

-- --------------------------------------------------------

--
-- Структура таблиці `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `title_key` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='sizes';

--
-- Дамп даних таблиці `sizes`
--

INSERT INTO `sizes` (`id`, `title`, `title_key`) VALUES
(1, '44 / XXS', 'clothes'),
(2, '46 / XS', 'clothes'),
(3, '48 / S', 'clothes'),
(4, '50 / M', 'clothes'),
(5, '52 / L', 'clothes'),
(6, '54 / XL', 'clothes'),
(7, '56 / XXL', 'clothes'),
(8, '58 / XXXL', 'clothes'),
(9, '60 / XXXL', 'clothes'),
(10, '62 / XXXL', 'clothes'),
(11, '64 / 4XL', 'clothes'),
(12, '66 / 4XL', 'clothes'),
(13, '68 / 5XL', 'clothes'),
(14, 'б/р', 'clothes'),
(15, '40', 'accessories'),
(16, '42', 'accessories'),
(17, '44', 'accessories'),
(18, '46', 'accessories'),
(19, '48', 'accessories'),
(20, '50', 'accessories'),
(21, '52', 'accessories'),
(22, '54', 'accessories'),
(23, '56', 'accessories'),
(24, '58', 'accessories'),
(25, '60', 'accessories'),
(26, 'XS', 'accessories'),
(27, 'S', 'accessories'),
(28, 'M', 'accessories'),
(29, 'L', 'accessories'),
(30, 'XL', 'accessories'),
(31, 'XXL', 'accessories'),
(32, '35', 'shoes'),
(33, '36', 'shoes'),
(34, '37', 'shoes'),
(35, '38', 'shoes'),
(36, '39', 'shoes'),
(37, '40', 'shoes'),
(38, '41', 'shoes'),
(39, '42', 'shoes'),
(40, '43', 'shoes'),
(41, '44', 'shoes'),
(42, '45', 'shoes');

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) DEFAULT '',
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role_id` int(11) UNSIGNED NOT NULL,
  `patronymic` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='users';

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `password`, `role_id`, `patronymic`, `gender`, `birthday`, `city`) VALUES
(1, 'root', ' ', NULL, 'root@sda.ch', '$2y$10$9iMSSc85Kucof9xi4UaSruNXuQZ5NnpEq3JAJNx.BjzBzcgP9t4fO', 1, '', 'male', '1970-01-01 16:28:09', ''),
(5, 'Іван', 'Шевченко', '+380964123412', 'ivan@gmail.com', '$2y$10$OT2XrvUDbh1TuS7Xq37PcusTeLhgM.0pKk.uZ/DZ/LurXvqhVYG/q', 2, 'Петрович', 'male', '1970-02-14 00:00:00', 'Київ'),
(18, 'Іван2', 'Багряний', '+380966434124', 'ivan2@gmail.com', '$2y$10$9NFFdaAeyPZs6xdCluRtHewGPHdJUx6bicY03JWyL1uq8wiGuFomK', 2, 'Павлович', 'male', '1981-01-01 18:19:04', 'Львів'),
(19, 'Admin1', 'Франко', '+380671232314', 'franko@sda.ch', '$2y$10$5oR3X7jn9pSHJfRkSiSMluyGLHW0Kz5m7Wz9pr8PXrzgCJN8.irfi', 1, 'Якович', 'male', '1971-01-01 16:28:09', 'Київ'),
(20, 'Іван3', 'Багряний', '+380966434124', 'ivan2@gmail.com', '$2y$10$9NFFdaAeyPZs6xdCluRtHewGPHdJUx6bicY03JWyL1uq8wiGuFomK', 2, 'Павлович', 'male', '1981-01-01 18:19:04', 'Львів');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `categorysub`
--
ALTER TABLE `categorysub`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `categorysubsub`
--
ALTER TABLE `categorysubsub`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorysub_id` (`categorysub_id`);

--
-- Індекси таблиці `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `countriesproduct`
--
ALTER TABLE `countriesproduct`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `deliverytype`
--
ALTER TABLE `deliverytype`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `orderidproductid`
--
ALTER TABLE `orderidproductid`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`user_id`),
  ADD KEY `delivery_type_id` (`delivery_type_id`),
  ADD KEY `paymment_type_id` (`payment_type_id`),
  ADD KEY `recipient_id` (`recipient_id`);

--
-- Індекси таблиці `paymenttype`
--
ALTER TABLE `paymenttype`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `productidsizeid`
--
ALTER TABLE `productidsizeid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `sizeid` (`sizeid`);

--
-- Індекси таблиці `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `material_id` (`material_id`),
  ADD KEY `country_product_id` (`country_product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `category_sub_id` (`category_sub_id`),
  ADD KEY `category_sub_sub_id` (`category_sub_sub_id`);

--
-- Індекси таблиці `recipients`
--
ALTER TABLE `recipients`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_ibfk_1` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Індекси таблиці `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `categorysub`
--
ALTER TABLE `categorysub`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `categorysubsub`
--
ALTER TABLE `categorysubsub`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT для таблиці `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблиці `countriesproduct`
--
ALTER TABLE `countriesproduct`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `deliverytype`
--
ALTER TABLE `deliverytype`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `orderidproductid`
--
ALTER TABLE `orderidproductid`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT для таблиці `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT для таблиці `paymenttype`
--
ALTER TABLE `paymenttype`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `productidsizeid`
--
ALTER TABLE `productidsizeid`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=770;

--
-- AUTO_INCREMENT для таблиці `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT для таблиці `recipients`
--
ALTER TABLE `recipients`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблиці `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблиці `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `categorysubsub`
--
ALTER TABLE `categorysubsub`
  ADD CONSTRAINT `categorysubsub_ibfk_1` FOREIGN KEY (`categorysub_id`) REFERENCES `categorysub` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`delivery_type_id`) REFERENCES `deliverytype` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`payment_type_id`) REFERENCES `paymenttype` (`id`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`recipient_id`) REFERENCES `recipients` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `productidsizeid`
--
ALTER TABLE `productidsizeid`
  ADD CONSTRAINT `productidsizeid_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `productidsizeid_ibfk_2` FOREIGN KEY (`sizeid`) REFERENCES `sizes` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_ibfk_4` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`),
  ADD CONSTRAINT `products_ibfk_5` FOREIGN KEY (`country_product_id`) REFERENCES `countriesproduct` (`id`),
  ADD CONSTRAINT `products_ibfk_6` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `products_ibfk_7` FOREIGN KEY (`category_sub_id`) REFERENCES `categorysub` (`id`),
  ADD CONSTRAINT `products_ibfk_8` FOREIGN KEY (`category_sub_sub_id`) REFERENCES `categorysubsub` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
