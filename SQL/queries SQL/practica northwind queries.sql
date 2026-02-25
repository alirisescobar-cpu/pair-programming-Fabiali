USE northwind;

SELECT EmployeeID, LastName, FirstName
FROM employees;

SELECT *
FROM products
WHERE UnitPrice BETWEEN 0 AND 5;

SELECT *
FROM products
ORDER BY UnitPrice ASC;

-- Conociendo los productos que no tienen precio, NO HAY NINGUNO NULO

SELECT *
FROM products
WHERE UnitPrice is NOT NULL;

-- Comparando productos:
SELECT *
FROM products
WHERE UnitPrice BETWEEN 0 AND 15
AND ProductID < 20;

-- Cambiando de operadores:
SELECT *
FROM products
WHERE UnitPrice > 15
AND ProductID > 20;

-- Conociendo los países a los que vendemos:
SELECT ProductName, UnitPrice, ProductID
FROM products
ORDER BY ProductID DESC
LIMIT 10;
-- Que pedidos tenemos en nuestra BBDD:
SELECT OrderID
FROM orderdetails;
