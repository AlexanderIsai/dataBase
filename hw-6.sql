--Вывести мин/стоимость товаров для каждой категории
--(проекция: название категории, мин стоимость_товара)

SELECT
Categories.CategoryName,
MIN(Products.Price) AS min_cost
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
GROUP BY Categories.CategoryName

--Вывести ТОП-3 стран по количеству доставленных заказов

SELECT
Customers.Country,
COUNT(DISTINCT Orders.OrderID) AS ord_count
FROM OrderDetails
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.Country
ORDER BY ord_count DESC
LIMIT 3

--Вывести ко-во заказов у каждого менеджера (фамилия менеджера, ко-во заказов)

SELECT
Employees.LastName,
COUNT(Orders.OrderID) AS total_orders
FROM Orders
JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Employees.LastName
ORDER BY total_orders DESC