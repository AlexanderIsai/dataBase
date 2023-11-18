
-- 1. Вывести название и стоимость в USD одного самого дорогого проданного товара
SELECT
Products.ProductName,
Price * 1.09 AS Price_USD
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
ORDER BY Price DESC
LIMIT 1
-- 2. Вывести два самых дорогих товара из категории Beverages из USA
SELECT
*
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE
Suppliers.Country = 'USA'
AND
Categories.CategoryName = 'Beverages'

-- 3. Удалить товары с ценой менее 50 EUR
DELETE FROM Products
WHERE
Price < 50

-- 4. Вывести список стран, которые поставляют морепродукты
SELECT
Suppliers.Country
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE
Categories.CategoryName = 'Seafood'

-- 5. Очистить поле ContactName у всех клиентов не из China
UPDATE Customers
SET CustomerName = ""
WHERE
Country != 'China'