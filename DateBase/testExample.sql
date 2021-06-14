-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Час створення: Чрв 14 2021 р., 18:46
-- Версія сервера: 10.2.38-MariaDB-1:10.2.38+maria~bionic
-- Версія PHP: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `hufha`
--

-- --------------------------------------------------------

--
-- Структура таблиці `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL COMMENT 'ID',
  `id_sub_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL COMMENT 'Опис'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `products`
--

INSERT INTO `products` (`id_product`, `id_sub_category`, `name`, `description`) VALUES
(1, 3, 'Inspiron 3542', 'ноутбук, экран 15.6\", 1366 x 768, глянцевый, аккумулятор 4400 мА*ч, автономность до 5 ч, материал корпуса пластик, вес 2.4 кг, толщина 25.6 мм, интерфейсы USB 3.0x1, USB 2.0x2, RJ-45, HDMI, DisplayPort'),
(2, 3, 'Inspiron 5547', 'ноутбук, экран 15.6\", 1366 x 768, глянцевый, аккумулятор 3000 мА*ч, автономность до 5 ч, материал корпуса пластик, вес 2.2 кг, толщина 22 мм, интерфейсы USB 3.0x1, RJ-45, HDMI, DisplayPort'),
(3, 3, 'Inspiron 3147', 'ноутбук, экран 11.6\", 1366 x 768, глянцевый, аккумулятор 4400 мА*ч, автономность до 7 ч, материал корпуса пластик, вес 1.4 кг, толщина 19 мм, интерфейсы USB 3.0x1, USB 2.0x2, HDMI'),
(4, 3, 'Inspiron 5748', 'ноутбук, экран 17.3\", 1600 x 900, глянцевый, аккумулятор 5610 мА*ч, автономность до 4 ч, материал корпуса пластик, вес 3 кг, толщина 28.4 мм, интерфейсы USB 3.0x1, USB 2.0x2, RJ-45, HDMI, VGA, DisplayPort'),
(5, 3, 'Alienware 17', 'ноутбук, экран 17.3\", 1920 x 1080, глянцевый, аккумулятор 4400 мА*ч, автономность до 8 ч, материал корпуса магниевый сплав, вес 4.15 кг, толщина 48.4 мм, интерфейсы USB 3.0x4, RJ-45, HDMI, VGA, mini DisplayPort'),
(6, 2, 'e970Swn', 'диагональ 18.5\", 1366 x 768, LED-подсветка, USB хаб, матрица TN, вес 2.8 кг, DisplayPort, Mini DisplayPort, DVI, VGA, HDMIВы можете выбрать монитор AOC e970Swn среди предложений от различных интернет-магазинов в Ярославле по цене и стоимости доставки.'),
(7, 2, 'e2070Swn', 'диагональ 19.5\", 1600 x 900, LED-подсветка, USB хаб, матрица TN, вес 2.3 кг, DisplayPort, DVI, VGA, HDMIВы можете выбрать монитор AOC e2070Swn среди предложений от различных интернет-магазинов в Ярославле по цене и стоимости доставки.'),
(8, 2, 'K192HQLb', 'диагональ 18.5\", 1366 x 768, LED-подсветка, USB хаб, матрица TN, вес 2.6 кг, DisplayPort, Mini DisplayPort, DVI, VGA, HDMIВы можете выбрать монитор Acer K192HQLb среди предложений от различных интернет-магазинов в Ярославле по цене и стоимости доставки.'),
(9, 2, 'K202HQLB', 'диагональ 19.5\", 1600 x 900, LED-подсветка, USB хаб, матрица TN, вес 2.7 кг, DVI, VGA, HDMIВы можете выбрать монитор Acer K202HQLB среди предложений от различных интернет-магазинов в Ярославле по цене и стоимости доставки.'),
(10, 2, 'V206HQLBb', 'диагональ 19.5\", 1600 x 900, LED-подсветка, USB хаб, матрица TN, вес 2.9 кг, DVI, HDMI, Mini DisplayPort, Scart, VGA, DisplayPortВы можете выбрать монитор Acer V206HQLBb среди предложений от различных интернет-магазинов в Ярославле по цене и стоимости доставки.'),
(11, 4, 'MeMO Pad 7 ME572CL', 'экран 7\", 1920x1200, Android 4.4, встроенная память 16 Гб, Wi-Fi, Bluetooth, поддержка 4G (LTE), GPS, толщина 8.3 мм, вес 279 гВы можете выбрать Планшет Asus MeMO Pad 7 ME572CL среди предложений от различных интернет-магазинов в Ярославле по цене и стоимости доставки.'),
(12, 4, 'VivoTab Note 8 M80Ta', 'экран 8\", 1280x800, Windows 8, встроенная память 32 Гб, Wi-Fi, Bluetooth, GPS, толщина 11 мм, вес 380 гВы можете выбрать Планшет Asus VivoTab Note 8 M80Ta среди предложений от различных интернет-магазинов в Ярославле по цене и стоимости доставки.'),
(13, 4, 'FE380CG', 'экран 8\", 1280x800, Android 4.4, встроенная память 16 Гб, Wi-Fi, Bluetooth, GPS, толщина 9 мм, вес 310 гВы можете выбрать Планшет Asus FE380CG среди предложений от различных интернет-магазинов в Ярославле по цене и стоимости доставки.'),
(14, 4, 'Iconia Tab A1-724', 'экран 7\", 1280x720, Android 4.4, встроенная память 16 Гб, Wi-Fi, Bluetooth, поддержка 4G (LTE), GPS, толщина 8.5 мм, вес 270 гВы можете выбрать Планшет Acer Iconia Tab A1-724 среди предложений от различных интернет-магазинов в Ярославле по цене и стоимости доставки.'),
(15, 4, 'Transformer Book T100TAL', 'экран 10.1\", 1366x768, Windows 8, встроенная память 64 Гб, Wi-Fi, Bluetooth, поддержка 4G (LTE), GPS, толщина 20.5 мм, вес 1200 гВы можете выбрать Планшет Asus Transformer Book T100TAL среди предложений от различных интернет-магазинов в Ярославле по цене и стоимости доставки.'),
(16, 1, 'Expert PC Exclusive', 'системный блок / Linux / 600Вт / Intel Core i5 / Intel Core i5 9400F / Coffee Lake Refresh (9-поколение) / 6 / 2.9ГГц / Дискретная / NVIDIA GeForce / GeForce GTX 1650 / 4 Гб'),
(17, 1, 'Lenovo Ideacentre 300', 'системный блок / DOS / 180Вт / Intel Pentium / Intel Pentium G4400 / Skylake (6-е поколение) / 2 / 3.3ГГц / Дискретная / NVIDIA GeForce / GeForce GT 730 / 2 Гб'),
(18, 1, 'Qbox I0330', 'системный блок / DOS / 400Вт / Intel Pentium / Intel Pentium G4600 / Kaby Lake (7-е поколение) / 2 / 3.6ГГц / Дискретная / NVIDIA GeForce / GeForce GTX 1050 Ti / 4 Гб');

-- --------------------------------------------------------

--
-- Структура таблиці `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `product_category`
--

INSERT INTO `product_category` (`id`, `product_id`, `category_id`) VALUES
(22, 1, 3),
(23, 2, 3),
(24, 3, 3),
(25, 4, 3),
(26, 5, 3),
(27, 6, 2),
(28, 7, 2),
(29, 8, 2),
(30, 9, 2),
(31, 10, 4),
(32, 11, 4),
(33, 12, 4),
(34, 13, 4),
(35, 14, 4),
(36, 15, 4),
(37, 16, 1),
(38, 17, 1),
(39, 18, 1),
(40, 1, 1),
(41, 2, 1),
(42, 3, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `sub_category`
--

CREATE TABLE `sub_category` (
  `id_sub_category` int(11) NOT NULL COMMENT 'ID',
  `name` varchar(255) NOT NULL,
  `uniqName` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `sub_category`
--

INSERT INTO `sub_category` (`id_sub_category`, `name`, `uniqName`, `parent_id`) VALUES
(1, 'Компь\'ютери', 'Каталог » Компь\'ютери', NULL),
(2, 'Мониторы', 'Каталог » Компь\'ютери » Мониторы', 1),
(3, 'Ноутбуки', 'Каталог » Компь\'ютери » Ноутбуки', 1),
(4, 'Планшети', 'Каталог » Компь\'ютери » Планшети', 1);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `fk_id_procuct` (`id_sub_category`);

--
-- Індекси таблиці `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`,`product_id`,`category_id`),
  ADD KEY `fk_product_id` (`product_id`),
  ADD KEY `fk_product_category_category` (`category_id`);

--
-- Індекси таблиці `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id_sub_category`),
  ADD KEY `fk_sub_category_parent` (`parent_id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблиці `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_id_procuct` FOREIGN KEY (`id_sub_category`) REFERENCES `sub_category` (`id_sub_category`);

--
-- Обмеження зовнішнього ключа таблиці `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `fk_product_category_category` FOREIGN KEY (`category_id`) REFERENCES `sub_category` (`id_sub_category`),
  ADD CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id_product`);

--
-- Обмеження зовнішнього ключа таблиці `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `fk_sub_category_parent` FOREIGN KEY (`parent_id`) REFERENCES `sub_category` (`id_sub_category`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
