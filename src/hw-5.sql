
--Вывести ко-во заказов, которое компания Speedy Express доставила в Brazil
SELECT
COUNT(*) AS orders_SE_to_Brazil
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
WHERE
Shippers.ShipperName = 'Speedy Express'
AND
Customers.Country = 'Brazil'

--Вывести среднюю стоимость напитка (Beverages) из Brazil
SELECT
AVG(Products.Price) AS avg_price_beverages_brazil
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE
Categories.CategoryName = 'Beverages'
AND
Suppliers.Country = 'Brazil'

--Расcчитать З/П сотрудника с фамилией Davolio (проекция: зп, фамилия сотрудника)
-- ЗП в нашей Компании мы считаем так - за каждый заказ - 2 евро + 0,5% от суммы заказа
SELECT
COUNT(DISTINCT OrderDetails.OrderID) * 2 + SUM(Products.Price * OrderDetails.Quantity * 0.005) AS salary,
Employees.LastName
FROM OrderDetails
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
JOIN Products ON Products.ProductID = OrderDetails.ProductID
JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
WHERE
Employees.LastName = 'Davolio'