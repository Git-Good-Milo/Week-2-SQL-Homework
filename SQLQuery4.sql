-- Q4. Select all the entries where the Company name has a 'z' or a 'Z' in the table of Customers

USE Northwind

SELECT * FROM Customers
WHERE CompanyName LIKE '%z%';

-- Answer is correct. Check query