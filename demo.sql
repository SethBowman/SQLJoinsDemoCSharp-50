-- INNER JOIN, products is the left table and sales is the right table
-- We will only see products that were sold

SELECT * FROM products 
INNER JOIN sales
ON products.ProductID = sales.ProductID;

-- LEFT JOIN, since products is the left table we will see all the products, but we will see null values on sales if the products wasn't sold

SELECT * FROM products AS p
LEFT JOIN sales AS s
ON p.ProductID = s.ProductID;

-- INNER JOIN, employees is the left table and sales is the right table
-- Since we are using an INNER JOIN we will only see the employees who made a sale

SELECT * FROM employees AS e
INNER JOIN sales AS s
ON e.EmployeeID = s.EmployeeID;

-- LEFT JOIN, since employees is the left table we will see all the employees even if they did not make a sale
-- null values will appear on the right table (sales) if that employee has no data on the sales table

SELECT * FROM employees AS e
LEFT JOIN sales AS s
ON e.EmployeeID = s.EmployeeID;

-- using multiple joins

SELECT p.Name AS ProductName, p.Price, s.Quantity, e.FirstName, e.LastName FROM products AS p
INNER JOIN sales AS s
ON p.ProductID = s.ProductID
INNER JOIN employees AS e
ON s.EmployeeID = e.EmployeeID;