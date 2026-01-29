show DATABASES;
create database leftjoin;
use leftjoin;
create table customers(cu_id int PRIMARY key , cu_name VARCHAR (20),cu_city VARCHAR(20));

create table orders (ord_id int PRIMARY KEY,ord_date date,ord_amount FLOAT,cu_id int, constraint l_e_f foreign KEY (cu_id) REFERENCES customers(cu_id));

INSERT INTO customers(cu_id, cu_name, cu_city) VALUES
(101, 'Raju', 'Hyderabad'),
(102, 'Anil', 'Chennai'),
(103, 'Sita', 'Mumbai'),
(104, 'Prabhas', 'Bhimavaram');

INSERT INTO orders (ord_id, cu_id, ord_date, ord_amount) VALUES
(1, 101, '2024-01-10', 2500),
(2, 101, '2024-02-15', 4000),
(3, 102, '2024-03-05', 3000);


select * from customers;
SELECT * from orders;

-- Display all customers and their order details using LEFT JOIN.

 SELECT customers.*,orders.ord_id,ord_date,ord_amount from customers left join orders on customers.cu_id=orders.cu_id;

--  Show all customers including those who have not placed any orders.
 select customers.* from customers left join orders on customers.cu_id = orders.cu_id;

--  Find customers who have no orders using LEFT JOIN.
SELECT customers.* from customers left join orders on customers.cu_id =orders.cu_id where orders.ord_id is null;

-- Display customer names and order amounts, showing NULL
            --    where orders are not available.
select customers.cu_name,orders.ord_amount from customers left join orders on customers.cu_id = orders.cu_id ;
-- List all customers and their order dates, including customers without orders.
select customers.cu_name,orders.ord_date from customers left join orders on customers.cu_id=orders.cu_id;

	-- Count the number of orders per customer, including customers with zero orders.
SELECT count(orders.ord_id) as total_orders,customers.cu_name from customers left join orders on customers.cu_id = orders.cu_id group by customers.cu_name;

-- Show all customers and their latest order date, including customers who never ordered.
select max(ord_date),customers.cu_name from customers left join orders on customers.cu_id = orders.cu_id GROUP BY customers.cu_name;
-- Find customers who have placed more than one order using LEFT JOIN.
select cu_name ,count(orders.ord_id)from customers left join orders on customers.cu_id =orders.cu_id group by customers.cu_name having count(orders.ord_id)>1;
-- Display customer details along with order details where the order amount is greater
--              than 3000, including customers with no orders.
select customers.*,orders.*
from customers left JOIN
orders on customers.cu_id = orders.cu_id and orders.ord_amount>3000;
