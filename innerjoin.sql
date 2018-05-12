use classicmodels;
show tables;

select productName, productLine, buyPrice, quantityInStock
from products
where buyPrice > 57.76 and quantityInStock > 10;

select productName, productCode, buyPrice, textDescription
from products inner join productlines on products.productLine = productlines.productLine
where buyPrice between 56.76 and 95.59;

select customers.customerNumber,customerName, phone, paymentDate, amount 
from customers inner join payments on customers.customerNumber = payments.customerNumber
where city = 'Las Vegas';

select customers.customerNumber, customers.customerName, orders.orderNumber, orders.status
from customers
left join orders
on customers.customerNumber = orders.customerNumber 