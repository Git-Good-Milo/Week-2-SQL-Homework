USE Northwind

SELECT Customers.CustomerID AS 'Customer ID' , CompanyName AS 'Company Name', SUM([Order Details].Quantity) AS 'Total Order', ContactName AS 'Contact Name', ContactTitle AS 'Title', Phone FROM Customers
	
JOIN Orders ON Orders.CustomerID = Customers.CustomerID
JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID -- Customer, Orders and ORder detail tables have been joined to increase scope of data search.

--WHERE City = 'Paris'
GROUP BY Customers.CustomerID, CompanyName , Customers.City, [Order Details].Quantity, ContactName, ContactTitle, Customers.Phone
HAVING City = 'Paris'
