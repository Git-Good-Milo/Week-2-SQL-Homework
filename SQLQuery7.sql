-- Q7. WAIT! Where are you going? (...) These clients are hard to sell too! We need more intel.. Can you find out, from these clients from Paris, whom orders the most by quantity? Who are our top 5 clients?

USE Northwind;

 WITH Best_Customers AS (

	SELECT Customers.CustomerID AS 'Customer ID' , CompanyName AS 'Company Name', ([Order Details].Quantity), ContactName AS 'Contact Name', ContactTitle AS 'Title', Phone FROM Customers
	
JOIN Orders ON Orders.CustomerID = Customers.CustomerID
JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID -- Customer, Orders and Order detail tables have been joined to increase scope of data search.

	WHERE City = 'London'
)

SELECT TOP 5 [Customer ID], SUM(Quantity) AS 'Total Items Bought', [Company Name], Phone  FROM Best_Customers
-- Common table experession used to simplyfy search for information

GROUP BY [Customer ID], [Company Name], [Company Name], Phone
ORDER BY 'Total Items Bought' DESC;


