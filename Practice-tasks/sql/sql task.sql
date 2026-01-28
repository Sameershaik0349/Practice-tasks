show DATABASES;
create DATABASE Holidaytask;
 use Holidaytask;
-- Create a table Students where student_name and phone_number must not accept NULL values.

create table students (
    student_name VARCHAR(50) NOT NULL,
    phone_number BIGINT NOT NULL
);

desc students;

-- Create a table Employees where emp_name and department cannot be NULL.

create table employess (
    emp_name VARCHAR(50) NOT NULL,
    department varchar(50) NOT NULL
);

-- Create a table Users where username must be unique.

create table users (
    username VARCHAR(50) UNIQUE
);
-- Create a table Customers where email does not allow duplicate values.

create table customers (
    email varchar(50)  UNIQUE
);

-- Create a table Orders where order_status defaults to 'Pending'.

create table orders (
    order_status varchar(20) DEFAULT('pending')
);

-- Create a table Accounts where created_date automatically stores the current date.

create table accounts (
    acc_id int AUTO_INCREMENT PRIMARY KEY,
    created_date int DEFAULT (current_date)
);

desc accounts;

-- Create a table Products where product_id auto-increments automatically.

create table products (
    products_id int AUTO_INCREMENT primary key
);

-- Create a table Students where roll_no starts automatically from 1.

create table studnetss(
    roll_no int auto_increment primary KEY
);

-- Create a table Employees where salary must be greater than 10000.
create  table employeess (
    id int auto_increment primary KEY,
    salary BIGINT check (salary>10000)
);

insert into employeess values(1,10001);
select * from employeess;
desc employeess;

-- Create a table Marks where score must be between 0 and 100.
create table marks (
    id int auto_increment primary KEY,
    score int   check(score >= 0 and score <=100)
);


-- Create a table Accounts where age must be 18 or above.

create  table accounts2(
    id int AUTO_INCREMENT PRIMARY KEY,
    age int check (age >=18)
);
-- Multiple Constraints
-- Create a table Login where:
-- email is NOT NULL
-- email is UNIQUE
create table login (
    id int auto_increment primary KEY,
    email varchar(50) NOT NULL UNIQUE
)

desc login;

-- 1️⃣3️⃣ Multiple Constraints
-- Create a table Products where:
-- price cannot be NULL
-- price must be greater than 0

create table products2(
    id int auto_increment primary key,
    price int NOT NULL check(price > 0)    
);
-- Create a table Tickets where:
-- status defaults to 'Open'
-- priority must be between 1 and 5

create table tickets (
    id int AUTO_INCREMENT primary KEY,
    status varchar(50) default 'open' check (status >= 1 and status <=5)
);
-- Create a table Employee_Details where:
-- emp_id is AUTO_INCREMENT
-- email is UNIQUE
-- emp_name is NOT NULL
 create  table employee_details (
    emp_id int auto_increment primary KEY,
    emp_name VARCHAR(50) NOT NULL,
    email varchar(50) UNIQUE
 );

