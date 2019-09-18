--Q5. We need to update all of our FAX information! This Day and age it is a must! 😅😅😅 Find me the Name of All of the companies that we do not have their FAX numbers! I would also like to know with whom I need to speak with, their contact numbers and what city they are base in.

USE Northwind

SELECT CompanyName AS 'Company Name', ContactName AS 'Contact Name', Phone AS 'Contact Number', City FROM Customers
WHERE Fax IS NULL;