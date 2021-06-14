# testExample
### Схема БД в папке DataBase ###
### 1. Для заданного списка товаров получить названия всех категорий, в которых представлены товары.Выборка для нескольких товаров (пример: ids = (9, 14, 6, 7, 2) ). ###
### 2. Для заданной категории получить список предложений всех товаров из этой категории. Каждая категория может иметь несколько подкатегорий.Пример:Выбираю все товары из категории компьютеры (id = 2) и подкатегории (id =3 (ноутбуки), id = 4 (планшеты), id = 5 (гибриды) ).
### 3. Для заданного списка категорий получить количество уникальных товаров в каждой категории.Выборка для нескольких категорий (пример: ids = (2, 3, 4) ).
### 4. Для заданного списка категорий получить количество единиц каждого товара который входит в указанные категории.Выборка для нескольких категорий (пример: ids = (3, 4, 5) )
### База данных

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL COMMENT 'ID',
  `id_sub_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL COMMENT 'Опис'
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `sub_category` (
  `id_sub_category` int(11) NOT NULL COMMENT 'ID',
  `name` varchar(255) NOT NULL,
  `uniqName` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `fk_id_procuct` (`id_sub_category`);

-- Індекси таблиці `product_category`
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`,`product_id`,`category_id`),
  ADD KEY `fk_product_id` (`product_id`),
  ADD KEY `fk_product_category_category` (`category_id`);

-- Індекси таблиці `products`
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `fk_id_procuct` (`id_sub_category`);

-- Індекси таблиці `product_category`
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`,`product_id`,`category_id`),
  ADD KEY `fk_product_id` (`product_id`),
  ADD KEY `fk_product_category_category` (`category_id`);
  
-- Індекси таблиці `sub_category`
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id_sub_category`),
  ADD KEY `fk_sub_category_parent` (`parent_id`);
  
-- AUTO_INCREMENT для таблиці `products`
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=19;

-- AUTO_INCREMENT для таблиці `product_category`
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
