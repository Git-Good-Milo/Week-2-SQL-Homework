-- Q2. How many order are from the Ship City, Rio de Janero?

USE Northwind

SELECT COUNT(OrderID) AS 'Orders From Rio de Janeiro' FROM Orders
WHERE ShipCity = 'Rio De Janeiro';

-- A2. There were 34 orders from Rio de Janeiro.