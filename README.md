# testExample
# Схема БД в папці DataBase
1. Для заданого списку товарів отримати назви всіх категорій, в яких представлені товари.Виборка для кількох товарів (приклад: ids = (9, 14, 6, 7, 2)). 
2. Для заданої категорії отримати список пропозицій всіх товарів з цієї категорії. Кожна категорія може мати кілька подкатегорій.Прімер:Обираю усі товари з категорії комп'ютери (id = 2) і підкатегорії (id = 3 (ноутбуки), id = 4 (планшети), id = 5 (гібриди)).
3. Для заданого списку категорій отримати кількість унікальних товарів в кожній категоріі.Виборка для декількох категорій (приклад: ids = (2, 3, 4)).
4. Для заданого списку категорій отримати кількість одиниць кожного товару який входить в зазначені категоріі.Виборка для декількох категорій (приклад: ids = (3, 4, 5))


### Відповідь ######

1)
SELECT c.id_sub_category, c.name, p.id_product, p.name FROM sub_category as c </br>
LEFT JOIN product_category ON product_category.category_id = c.id_sub_category </br>
LEFT JOIN products as p ON p.id_product = product_category.product_id </br>
WHERE product_category.product_id IN('4','18','14','6','15') </br>
ORDER BY p.id_product;</br>


2)
SELECT products.id_product, products.name FROM products </br>
LEFT JOIN product_category ON product_category.product_id = products.id_product </br>
WHERE product_category.category_id = '1' </br>
UNION </br>
SELECT products.id_product, products.name FROM products </br>
LEFT JOIN product_category ON product_category.product_id = products.id_product </br>
WHERE product_category.category_id IN(SELECT id_sub_category FROM sub_category WHERE parent_id= '1');</br>

3)
SELECT sub_category.name, COUNT(DISTINCT product_id) as products_count FROM product_category</br>
LEFT JOIN sub_category ON product_category.category_id = sub_category.id_sub_category </br>
WHERE sub_category.id_sub_category IN('2','3','5') GROUP BY name;</br>

4)
SELECT sub_category.name, COUNT(product_id) as products_count FROM product_category </br>
LEFT JOIN sub_category ON product_category.category_id = sub_category.id_sub_category </br>
WHERE sub_category.id_sub_category IN('2','3','1') GROUP BY name;</br>
