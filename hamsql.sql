use classicmodels;
select * from orders;

select status, count(status) as 'sl status' from orders group by status;

select status, sum(quantityOrdered * priceEach) as amount
from orders
inner join orderdetails on orders.ordernumber = orderdetails.ordernumber
group by status;

select orderNumber, sum(quantityOrdered * priceEach) as total
from orderdetails
group by orderNumber;

select year(orderDate) as year, sum(quantityOrdered * priceEach) as total
from orders 
inner join orderdetails on orders.orderNumber = orderdetails.orderNumber
where status = 'shipped'
group by year
having year > 2003;

/*cac quoc gia co so luong kh > 5*/
select country, count(customerNumber) as countCustomer
from customers
group by country
having countCustomer > 5;

