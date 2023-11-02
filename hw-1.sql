-- 1. Приведите десять типовых бизнес-процессов для предметной
-- области ВИДЕО-ХОСТИНГ (Youtube), а также их соответствие по CRUD:
--1. Загрузка видео (create)
--2. Просмотр видео (read)
--3. Добавление комментариев к видео (create, update)
--4. Удаление комментариев (delete, update)
--5. Оценка видео (update)
--6. Подписка-отписка (create, delete)
--7. Поиск видео (read)
--8. Создание профиля пользователя (create)
--9. Создание плейлиста (create, read, update, delete)
--10. Статистика и аналитика (read)

-- 2. Вывести название и стоимость товаров от 20 EUR.

SELECT
ProductName,
Price
FROM [Products]
WHERE
Price >= 20

-- 3. Вывести страны поставщиков.

SELECT DISTINCT
Country
FROM [Suppliers]

-- 4. В упорядоченном по стоимости виде вывести название и стоимость товаров от всех поставщиков,
--кроме поставщика 1.

SELECT
ProductName,
Price
FROM [Products]
WHERE
SupplierID != 1
ORDER BY Price

-- 5. Вывести контактные имена клиентов, кроме тех, что из France и USA.

SELECT
CustomerName
FROM [Customers]
WHERE
Country NOT IN ("France", "USA")

-- 6. Вывести два самых дорогих товара из категории 4

SELECT
*
FROM [Products]
WHERE
CategoryID = 4
ORDER BY Price DESC
LIMIT 2