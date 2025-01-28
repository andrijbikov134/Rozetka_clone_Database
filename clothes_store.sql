-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Січ 28 2025 р., 20:47
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
  `title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='category';

--
-- Дамп даних таблиці `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Women'),
(2, 'Men'),
(3, 'Children');

-- --------------------------------------------------------

--
-- Структура таблиці `categorysub`
--

CREATE TABLE `categorysub` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='categorysub';

--
-- Дамп даних таблиці `categorysub`
--

INSERT INTO `categorysub` (`id`, `title`) VALUES
(1, 'clothes'),
(2, 'accessories'),
(3, 'shoes');

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
(7, 'downjackets_women', '../img/women/clothes/down_jackets_women.png', 1, 'Пуховики'),
(8, 'downjackets_men', '../img/men/clothes/down_jackets_men.png', 1, 'Пуховики'),
(9, 'downjackets_children', '../img/children/clothes/down_jackets_children.png', 1, 'Пуховики'),
(10, 'jerseys_women', '../img/women/clothes/jerseys_women.png', 1, 'Майки'),
(11, 'jerseys_men', '../img/men/clothes/jerseys_men.png', 1, 'Майки'),
(12, 'jerseys_children', '../img/children/clothes/jerseys_children.png', 1, 'Майки'),
(13, 'shirts_women', '../img/women/clothes/shirts_women.png', 1, 'Рубашки'),
(14, 'shirts_men', '../img/men/clothes/shirts_men.png', 1, 'Рубашки'),
(15, 'shirts_children', '../img/children/clothes/shirts_children.png', 1, 'Рубашки'),
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
(51, 'sneakers_children', '../img/children/shoes/sneakers_children.png', 3, 'Кросівки');

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
-- Структура таблиці `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `comment` varchar(200) NOT NULL,
  `advantages` varchar(200) NOT NULL,
  `disadvantages` varchar(200) NOT NULL,
  `star_quantity` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='comments';

--
-- Дамп даних таблиці `comments`
--

INSERT INTO `comments` (`id`, `product_id`, `comment`, `advantages`, `disadvantages`, `star_quantity`, `user_id`) VALUES
(8, 1, 'ббббб', '000', 'бюбю', 5, 1),
(9, 1, 'іва', 'іваі', 'віаів', 0, 1),
(10, 1, '1', '1', '1', 5, 1);

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
(1, 'Ukraine'),
(2, 'Switzerland'),
(3, 'Italy');

-- --------------------------------------------------------

--
-- Структура таблиці `deliverytype`
--

CREATE TABLE `deliverytype` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='deliverytype';

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
(3, 'Поліестер');

-- --------------------------------------------------------

--
-- Структура таблиці `orders`
--

CREATE TABLE `orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `client_id` int(11) UNSIGNED NOT NULL,
  `date_order` datetime NOT NULL,
  `delivery_type_id` int(11) UNSIGNED NOT NULL,
  `payment_type_id` int(11) UNSIGNED NOT NULL,
  `recipient_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='orders';

-- --------------------------------------------------------

--
-- Структура таблиці `paymenttype`
--

CREATE TABLE `paymenttype` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='paymenttype';

-- --------------------------------------------------------

--
-- Структура таблиці `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `size_id` int(11) UNSIGNED NOT NULL,
  `color_id` int(11) UNSIGNED NOT NULL,
  `brand_id` int(11) UNSIGNED NOT NULL,
  `price` float(10,2) NOT NULL,
  `material_id` int(11) UNSIGNED NOT NULL,
  `country_product_id` int(11) UNSIGNED NOT NULL,
  `part_number` varchar(200) NOT NULL,
  `pictures_path` varchar(200) NOT NULL,
  `comment_id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `category_sub_id` int(11) UNSIGNED NOT NULL,
  `category_sub_sub_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='products';

--
-- Дамп даних таблиці `products`
--

INSERT INTO `products` (`id`, `title`, `size_id`, `color_id`, `brand_id`, `price`, `material_id`, `country_product_id`, `part_number`, `pictures_path`, `comment_id`, `category_id`, `category_sub_id`, `category_sub_sub_id`) VALUES
(1, 'Футболка бавовняна жіноча Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/women/clothes/t_shirts/1.png', 0, 1, 1, 19),
(2, 'Пуховик чоловічий Protective Down Parka', 3, 2, 2, 3999.00, 1, 1, '4067981263318', '/img/women/clothes/down_jackets/1.png', 0, 2, 1, 8),
(3, 'Зимова куртка Outerwear Boy Kids', 1, 1, 2, 3499.00, 1, 2, '4067981263318', '/img/women/clothes/jackets/1.png', 0, 1, 1, 1),
(4, 'Футболка бавовняна жіноча 3 S Baby Tee', 1, 1, 1, 1000.00, 1, 2, '4066757286810', '/img/women/clothes/t_shirts/1.png', 0, 1, 1, 19),
(6, 'Толстовка на флісі для хлопчика Nike', 1, 2, 2, 1449.00, 1, 2, '197598790403', '/img/children/clothes/sweatshirts/1.png', 0, 3, 1, 18),
(7, 'Куртка жіноча Puma', 1, 2, 3, 999.00, 1, 1, 'asd-112322', '/img/women/clothes/jackets/1.png', 0, 1, 1, 1),
(8, 'Куртка жіноча Puma', 1, 2, 3, 999.00, 1, 1, 'asd-112322', '/img/women/clothes/jackets/1.png', 0, 1, 1, 1),
(9, 'Куртка жіноча Puma', 1, 2, 3, 999.00, 1, 1, 'asd-112322', '/img/women/clothes/jackets/1.png', 0, 1, 1, 1),
(10, 'Куртка жіноча Puma', 1, 2, 3, 999.00, 1, 1, 'asd-112322', '/img/women/clothes/jackets/1.png', 0, 1, 1, 1),
(11, 'Штани жіночі Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/women/clothes/pants/1.png', 0, 1, 1, 4),
(12, 'Пуховик жіночий Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/women/clothes/down_jackets/1.png', 0, 1, 1, 7),
(13, 'Майка бавовняна жіноча Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/women/clothes/t_shirts/1.png', 0, 1, 1, 10),
(14, 'Рубашка бавовняна жіноча Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/women/clothes/shirts/1.png', 0, 1, 1, 13),
(15, 'Толстовка жіноча Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/women/clothes/t_shirts/1.png', 0, 1, 1, 16),
(16, 'Термобілизна бавовняна жіноча Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/women/clothes/thermal_underwear/1.png', 0, 1, 1, 22),
(17, 'Куртка чоловіча Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/men/clothes/jackets/1.png', 0, 2, 1, 2),
(18, 'Штани чоловічі Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/men/clothes/pants/1.png', 0, 2, 1, 5),
(19, 'Майка бавовняна чоловіча Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/men/clothes/jerseys/1.png', 0, 2, 1, 11),
(20, 'Рубашка бавовняна чоловіча Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/men/clothes/shirts/1.png', 0, 2, 1, 14),
(21, 'Толстовка чоловіча Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/men/clothes/sweatshirts/1.png', 0, 2, 1, 17),
(22, 'Футболка бавовняна чоловіча Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/men/clothes/t_shirts/1.png', 0, 2, 1, 20),
(23, 'Термобілизна чоловіча Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/men/clothes/thermal_underwear/1.png', 0, 2, 1, 23),
(24, 'Куртка дитяча Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/children/clothes/jackets/1.png', 0, 3, 1, 3),
(25, 'Штани дитячі Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/children/clothes/pants/1.png', 0, 3, 1, 6),
(26, 'Пуховик дитячий Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/children/clothes/down_jackets/1.png', 0, 3, 1, 9),
(27, 'Майка дитяча Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/children/clothes/jerseys/1.png', 0, 3, 1, 12),
(28, 'Рубашка дитяча Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/children/clothes/shirts/1.png', 0, 3, 1, 15),
(29, 'Толстовка дитяча Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/children/clothes/sweatshirts/1.png', 0, 3, 1, 18),
(30, 'Футболка дитяча Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/children/clothes/t_shirts/1.png', 0, 3, 1, 21),
(31, 'Термобілизна дитяча Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/children/clothes/thermal_underwear/1.png', 0, 3, 1, 25),
(32, 'Черевики жіночі Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/women/clothes/t_shirts/1.png', 0, 1, 3, 38),
(33, 'Шльопки жіночі Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/women/shoes/flip_flops/1.png', 0, 1, 3, 41),
(34, 'Кеди жіночі Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/women/shoes/kedy/1.png', 0, 1, 3, 44),
(35, 'Кросівки жіночі Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/women/shoes/sneakers/1.png', 0, 1, 3, 47),
(36, 'Черевики чоловічі Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/men/clothes/boots/1.png', 0, 2, 3, 39),
(37, 'Шльопки чоловічі Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/men/shoes/flip_flops/1.png', 0, 2, 3, 42),
(38, 'Кеди чоловічі Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/men/shoes/kedy/1.png', 0, 2, 3, 45),
(39, 'Кросівки чоловічі Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/men/shoes/kedy/1.png', 0, 2, 3, 50),
(40, 'Черевики дитячі Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/children/shoes/boots/1.png', 0, 3, 3, 40),
(41, 'Шльопки дитячі Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/children/shoes/flip_flops/1.png', 0, 3, 3, 43),
(42, 'Кеди дитячі Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/children/shoes/kedy/1.png', 0, 3, 3, 46),
(43, 'Кросівки дитячі Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/children/shoes/sneakers/1.png', 0, 3, 3, 51),
(44, 'Рюкзак жіночий Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/women/accessories/backpacks/1.png', 0, 1, 2, 26),
(45, 'Рукавички жіночі Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/women/accessories/gloves/1.png', 0, 1, 2, 29),
(46, 'Головний убір жіночий Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/women/accessories/headwear/1.png', 0, 1, 2, 32),
(47, 'Шарф жіночий Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/women/accessories/scarves/1.png', 0, 1, 2, 35),
(48, 'Рюкзак чоловічий Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/men/accessories/backpacks/1.png', 0, 2, 2, 26),
(49, 'Рюкзак чоловічий Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/men/accessories/backpacks/1.png', 0, 2, 2, 27),
(50, 'Рукавички чоловічі Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/men/accessories/gloves/1.png', 0, 2, 2, 30),
(51, 'Кепка чоловіча Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/men/accessories/headwear/1.png', 0, 2, 2, 33),
(52, 'Шарф чоловічий Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/men/accessories/scarves/1.png', 0, 2, 2, 36),
(53, 'Рюкзак дитячий Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/children/accessories/backpacks/1.png', 0, 3, 2, 28),
(54, 'Рукавички дитячі Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/children/accessories/gloves/1.png', 0, 3, 2, 31),
(55, 'Шапка дитяча Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/children/accessories/headwear/1.png', 0, 3, 2, 34),
(56, 'Шарф дитячий Puma', 1, 2, 3, 999.00, 1, 1, '4066757286810', '/img/children/accessories/scarves/1.png', 0, 3, 2, 37);

-- --------------------------------------------------------

--
-- Структура таблиці `recipients`
--

CREATE TABLE `recipients` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='recipients';

-- --------------------------------------------------------

--
-- Структура таблиці `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) UNSIGNED NOT NULL,
  `description` varchar(200) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `grade` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='reviews';

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
(2, 'Client'),
(3, 'Seller');

-- --------------------------------------------------------

--
-- Структура таблиці `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='sizes';

--
-- Дамп даних таблиці `sizes`
--

INSERT INTO `sizes` (`id`, `title`) VALUES
(1, '44'),
(2, '46'),
(3, '48'),
(4, '50'),
(5, '52'),
(6, '54'),
(7, '56'),
(8, '58'),
(9, '60'),
(10, '62'),
(11, '64'),
(12, '66'),
(13, '68');

-- --------------------------------------------------------

--
-- Структура таблиці `tablepartorders`
--

CREATE TABLE `tablepartorders` (
  `id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='tablepartorders';

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='users';

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `password`, `role_id`) VALUES
(1, 'Client 1', 'Client 1', '+41-025-234-32-23', 'asdfsa@sda.ch', '1', 2);

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
-- Індекси таблиці `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

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
-- Індекси таблиці `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `delivery_type_id` (`delivery_type_id`),
  ADD KEY `paymment_type_id` (`payment_type_id`),
  ADD KEY `recipient_id` (`recipient_id`);

--
-- Індекси таблиці `paymenttype`
--
ALTER TABLE `paymenttype`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `size_id` (`size_id`),
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
-- Індекси таблиці `tablepartorders`
--
ALTER TABLE `tablepartorders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблиці `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблиці `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `countriesproduct`
--
ALTER TABLE `countriesproduct`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `deliverytype`
--
ALTER TABLE `deliverytype`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `paymenttype`
--
ALTER TABLE `paymenttype`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT для таблиці `recipients`
--
ALTER TABLE `recipients`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблиці `tablepartorders`
--
ALTER TABLE `tablepartorders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `categorysubsub`
--
ALTER TABLE `categorysubsub`
  ADD CONSTRAINT `categorysubsub_ibfk_1` FOREIGN KEY (`categorysub_id`) REFERENCES `categorysub` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`delivery_type_id`) REFERENCES `deliverytype` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`payment_type_id`) REFERENCES `paymenttype` (`id`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`recipient_id`) REFERENCES `recipients` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`),
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
-- Обмеження зовнішнього ключа таблиці `tablepartorders`
--
ALTER TABLE `tablepartorders`
  ADD CONSTRAINT `tablepartorders_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `tablepartorders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
