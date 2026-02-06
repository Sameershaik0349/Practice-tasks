show databases;
create database joins;
use joins;
create table customers (cus_id int PRIMARY key,first_name varchar(20),last_name varchar(20),email varchar(20),
phone_number BIGINT,address TEXT,date_joined DATE);

desc customers

create table orders (
ord_id int primary KEY,
cus_id INT,
order_date DATE,
total_amount FLOAT,
shipping_adress text,
payment_status varchar(20));

create table products (
    product_id int PRIMARY key,
    name varchar(20),
    description_ text,
    price  float,
    stock_quantity int,
    category_id INT
);

create table categories (
    category_id int primary key,
    category_name varchar(20),
    description_ TEXT
)

create table order_items(
    order_items_id int primary KEY,
    ord_id INT,
    product_id int,
    quantity int,
    item_price float
);


INSERT INTO customers VALUES
(1, 'Rahul', 'Sharma', 'rahul@gmail.com', 9876543210, 'Hyderabad', '2024-01-10'),
(2, 'Anita', 'Verma', 'anita@gmail.com', 9123456780, 'Bangalore', '2024-02-05'),
(3, 'Amit', 'Kumar', 'amit@gmail.com', 9988776655, 'Chennai', '2024-03-15');

INSERT INTO categories VALUES
(1, 'Electronics', 'Electronic Items'),
(2, 'Clothing', 'Fashion & Wear'),
(3, 'Books', 'Educational Books');

INSERT INTO products VALUES
(101, 'Mobile', 'Smart Phone', 15000, 10, 1),
(102, 'Laptop', 'Gaming Laptop', 55000, 5, 1),
(103, 'T-Shirt', 'Cotton T-Shirt', 800, 20, 2),
(104, 'Python Book', 'Programming Book', 500, 15, 3);

INSERT INTO orders VALUES
(1001, 1, '2024-04-01', 15800, 'Hyderabad', 'PAID'),
(1002, 2, '2024-04-03', 55000, 'Bangalore', 'PAID'),
(1003, 1, '2024-04-10', 500, 'Hyderabad', 'PENDING');

INSERT INTO order_items VALUES
(1, 1001, 101, 1, 15000),
(2, 1001, 103, 1, 800),
(3, 1002, 102, 1, 55000),
(4, 1003, 104, 1, 500);

SELECT * FROM customers;
SELECT * FROM categories;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;

-- 1.	Join the Customers table with the Orders table to list all orders made by a specific customer.
select * from customers inner join orders on customers.cus_id=orders.cus_id;

-- 2.	Find all orders placed by customers who live in a specific city (using the address field in Customers table).
select ord_id,order_date,total_amount,shipping_adress,payment_status,customers.address FROM customers inner join orders on customers.cus_id = orders.cus_id where customers.address = 'hyderabad';
select * from products;
SELECT * from categories;
-- 3.	List the products and their categories by joining the Products and Categories tables.
select (products.description_),c.category_name FROM 
products inner join 
categories as c on c.category_id =products.category_id; 
select * from orders;
-- 4.	Get a list of all products purchased by a particular customer, including their name, description, and quantity ordered (using Orders, Order_Items, and Products).

select * from order_items;
-- select p.product_id,name,DESCRIPTION_,stock_quantity
-- from products as p inner join order_items on p.product_id=order_items.product_id inner join orders on orders.cus_id =customers.cus_id;
SELECT 
    p.product_id,
    p.name,
    p.description_,
    oi.quantity
FROM orders o
INNER JOIN order_items oi
    ON o.ord_id = oi.ord_id
INNER JOIN products p
    ON oi.product_id = p.product_id
WHERE o.cus_id = 1;

SELECT 
    c.first_name,
    p.name,
    p.description_,
    oi.quantity
FROM customers c
JOIN orders o ON c.cus_id = o.cus_id
JOIN order_items oi ON o.ord_id = oi.ord_id
JOIN products p ON oi.product_id = p.product_id
WHERE c.cus_id = 1;

-- 5.	Join Order_Items with Orders to get a list of all products ordered along with the order's total amount.
select oi.order_items_id,o.total_amount,
o.ord_id,
p.name
from orders as o inner join order_items as oi on 
o.ord_id = oi.ord_id
inner join products as p on p.product_id = oi.product_id;
SELECT 
    o.ord_id,
    oi.order_items_id,
    p.name AS product_name,
    o.total_amount
FROM orders o
JOIN order_items oi ON o.ord_id = oi.ord_id
JOIN products p ON oi.product_id = p.product_id;


