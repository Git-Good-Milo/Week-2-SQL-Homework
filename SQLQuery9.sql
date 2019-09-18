 -- Q8. Q8 - OMG What are you? Some kind of SQL Guardian Angel? THIS IS AMAZING! May God pay you handsomely 😸 because I have no cash on me!.. I do have one more request. I need to know more about these these Paris client. Can you find out which ones their deliveries took longer than 10 days? Display the Business/client name, contact name, all their contact details (don't forget the fax!), as well as the number of deliveries that where overdue! Just add a column named: 'Number overdue orders'! simple, thank you!

 USE Northwind;

 WITH Best_Customers AS (

	SELECT Orders.OrderDate, Orders.ShippedDate, Customers.CustomerID AS 'Customer ID' , CompanyName AS 'Company Name', ([Order Details].Quantity), ContactName AS 'Contact Name', ContactTitle AS 'Title', Phone FROM Customers
	
JOIN Orders ON Orders.CustomerID = Customers.CustomerID
JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID -- Customer, Orders and Order detail tables have been joined to increase scope of data search.

	WHERE City = 'Paris'
)

SELECT DISTINCT Best_Customers.[Company Name], Best_Customers.OrderDate, Best_Customers.ShippedDate,  CASE WHEN DATEDIFF(dd, Best_Customers.OrderDate, Best_Customers.ShippedDate) > 10 THEN 'Overdue' ELSE 'On Time' END AS 'Status' FROM Best_Customers
-- Common table experession used to simplyfy search for information


--GROUP BY [Customer ID], [Company Name], [Company Name], Phone, Best_Customers.OrderDate, Best_Customers.ShippedDate;

-- <To be added after SELECT statement>  [Customer ID], SUM(Quantity) AS 'Total Items Bought', [Company Name], Phone