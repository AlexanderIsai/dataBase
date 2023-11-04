-- Вывести название и стоимость в USD одного самого дорогого товара

SELECT
ProductName,
Price * 1.05 AS Price_USD
FROM [Products]
ORDER BY Price DESC
LIMIT 1

-- Вывести два самых дешевых товара из категории 1

SELECT
*
FROM [Products]
WHERE
CategoryID = 1
ORDER BY Price
LIMIT 2

-- Удалить товары с ценой менее 50 EUR

DELETE FROM [Products]
WHERE
Price < 50

-- Очистить поле ContactName у всех клиентов не из China

UPDATE [Customers]
SET CustomerName = ""
WHERE
Country != 'China'


-- Применить ко всем товарам постоянную скидку в 15%

UPDATE [Products]
SET
Price = Price * 0.85

-- Вывести товар, который находится на третьем месте среди самых дорогих

SELECT
*
FROM [Products]
ORDER BY Price DESC
LIMIT 1 OFFSET 2