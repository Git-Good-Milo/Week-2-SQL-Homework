--Q3. Select all orders That the Ship City is Rio De Janeiro or Reims

USE Northwind

SELECT * FROM Orders
WHERE ShipCity = 'Rio de Janeiro' OR ShipCity = 'Reims';

--A3. THere are a total of 39 orders from both cities.