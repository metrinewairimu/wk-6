
/* Writing an SQL query to get the firstName, lastName, email, and officeCode of all employees Using inner join*/
USE salesdb;

SELECT 
	E.firstName,
	E.lastName,
	E.email,
	E.officeCode
FROM 
	employees AS E
INNER JOIN 
	offices AS O
ON 
	E.officeCode = O.officeCode;


    /* Writing an SQL query to get the productName, productVendor, and productLine from the products table Using left join*/
SELECT 
	p.productName, 
	p.productVendor, 
	p.productLine
FROM 
	products AS p
LEFT JOIN 
	productLines AS pl
ON 
	p.productLine = pl.productLine;

/* Writing an SQL query to retrieve the orderDate, shippedDate, status, and customerNumber for the first 10 orders using Right Join */
SELECT 
	O.orderDate, 
	O.shippedDate, 
	O.status,
    O.customerNumber
FROM 
	customers AS C
RIGHT JOIN 
	orders AS O
ON 
	C.customerNumber = O.customerNumber
LIMIT 10;
