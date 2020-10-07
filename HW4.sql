-- HOMEWORK4:INNER join orders,orderdetails,products and customers. 
USE classicmodels;

SELECT o.orderNumber,
	od.priceEach,
	od.quantityOrdered,
	p.productName,
	p.productLine,
	c.city,
	c.country,
	o.orderDate
FROM 
	orders o
INNER JOIN
	orderdetails od
	ON o.orderNumber = od.orderNumber
INNER JOIN 
	products p 
    USING (productCode)
INNER JOIN
	customers c
    ON o.customerNumber = c.customerNumber;
