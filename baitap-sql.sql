use classicmodels;
select * from customers;

select customerNumber, customerName, phone, addressLine1
from customers
where customerNumber between 103 and 121;

select * from customers limit 112,5;
select customerNumber, customerName, phone, addressLine1 from customers where country ='France';
select customerNumber, customerName, phone, addressLine1 from customers order by customerName asc;

select count(country) as 'kh in franh'
from customers
where country = 'France';

update customers
set phone = '106816868'
where customerNumber = '103';
select customerNumber, customerName, phone, addressLine1 from customers where country ='France';

select customerNumber, customerName, phone from customers
order by customerNumber asc ;

select customerNumber, customerName, country 
from customers where country='France' order by customerNumber asc;

select *
from customers, payments
where customers.customerNumber = payments.customerNumber;

select *
from  payments inner join customers on payments.customerNumber = customers.customerNumber;

select *
from  payments inner join customers on payments.customerNumber = customers.customerNumber
where customers.country = 'France';

select image, textDescription
from  productlines left join products on productlines.productLine = products.productLine;

select *
from payments;

select customerNumber, customerName, phone, addressLine1,country
from customers
where country = 'France' and customerNumber between 103 and 121 ;
