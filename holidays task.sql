-- 'ddl commands'

-- create DATABASE holiday;
-- use holiday;
-- create table info (id INT,name varchar(50),marks int,city varchar(50));
-- desc employee;
-- alter table info add column email VARCHAR(50);
-- rename TABLE info to employee;
-- alter table employee modify column marks bigint;
-- alter table employee add column (mobile bigint,adress varchar(90));
-- alter table employee drop column mobile;
-- alter table employee MODIFY column salary BIGint;

TRUNCATE Table employee;
drop table employee;
-->"drop" --> can delete entire table and enire specific column 
alter table employee drop column city;--> for column
drop table employee;---. for entire table
---truncate ---> can delete enire records but it can not delete enitre table and specific column
TRUNCATE table employee; ----> 
---.delete ---> it can delete specific  column of records or values  and can delete entire table but can not delete specific column in table:
DELETE from employee where id = 1;
DELETE from employee;


-- ---'dml commands'
-- desc employee;
-- insert into employee values(1,'sameer',100,'hyderabad','nizampet KTR colony');
-- select * from employee;

-- insert into employee values (2,'praboss',99,'hyderabad','KhanSaar'),(3,'mahesh babu',99,'vizag','varanasi'),(4,'ntr',99,'hyderabad','manofmases');
-- update  employee set marks= '100' where id = '2';
-- update employee set
-- marks = case 
-- when id =1 then 33333
-- when id =2 then 23333
-- when id =3 then 3333
-- when id = 4 then 43333
-- end;

-- delete from employee where id = 1;

-- update employee set marks = marks *0.05;
-- ;

-- a. Write a query to create a table student with id, name, marks, and city. 
CREATE TABLE student(
id INT,
name VARCHAR(30),
marks INT,
city VARCHAR(20)
);

-- b. Write a query to add a new column email to an existing table. 
ALTER TABLE student ADD email VARCHAR(50);

-- c. Write a query to rename a table from emp to employee. 
RENAME TABLE emp TO employee;

-- d. Write a query to change datatype of salary column from INT to  BIGINT. 
ALTER TABLE employee MODIFY salary BIGINT;


-- e. Write a query to drop a column mobile from a table. 
ALTER TABLE employee DROP mobile;

-- f.  Write a query to add multiple columns at a time using ALTER. 
ALTER TABLE employee ADD dept VARCHAR(20), age INT;

-- g. Write a query to truncate all records from a table. 
TRUNCATE TABLE employee;

-- h. Write a query to drop a table permanently. 
DROP TABLE employee;

-- i. 
-- Write a query to add a primary key to an existing table. 
ALTER TABLE employee ADD PRIMARY KEY(emp_id);

-- j. 
-- What is the difference between DROP, TRUNCATE, and DELETE?
DELETE FROM employee WHERE emp_id=5;
TRUNCATE TABLE employee;
DROP TABLE employee;





-- 1. Write a query to insert a single record into a table. 
INSERT INTO employee VALUES(101,'Ravi',25000,'HR');


-- 2. Write a query to insert multiple records using a single INSERT statement. 
INSERT INTO employee VALUES
(102,'Suresh',30000,'IT'),
(103,'Manoj',28000,'Sales');

-- 3. Write a query to update salary of an employee with emp_id = 101. 
UPDATE employee SET salary=35000 WHERE emp_id=101;

-- 4. Write a query to update multiple columns at a time. 
UPDATE employee SET salary=40000, dept='Admin' WHERE emp_id=102;

-- 5. Write a query to delete a specific employee using emp_id. 
DELETE FROM employee WHERE emp_id=103;

-- 6. Write a query to delete all records from a table without dropping it. 
DELETE FROM employee;


-- 7. Write a query to increase salary by 5% for all employees. 
UPDATE employee SET salary = salary + salary*0.05;

-- 8. Write a query to update department name from HR to Human Resource. 
UPDATE employee SET dept='Human Resource' WHERE dept='HR';

-- 9. Write a query to delete employees joined before 2020. 
DELETE FROM employee WHERE join_year < 2020;

-- 10. Write a query to insert records using another table. 
INSERT INTO employee SELECT * FROM old_employee;



-- 1. Create a table using NOT NULL constraint. 
CREATE TABLE employee1(
id INT NOT NULL,
name VARCHAR(30)
);

-- 2. Create a table with UNIQUE constraint on email column.
CREATE TABLE employee2(
id INT,
email VARCHAR(40) UNIQUE
);

-- 3. Create a table with DEFAULT value for city column. 
CREATE TABLE employee3(
id INT,
city VARCHAR(20) DEFAULT 'Hyderabad'
);

-- 4. Create a table using AUTO_INCREMENT for id column. 
CREATE TABLE employee4(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30)
);

-- 5. Create a table using CHECK constraint for salary > 15000. 
CREATE TABLE employee5(
id INT,
salary INT CHECK(salary > 15000)
);

-- 6. Create a table using multiple constraints together. 
CREATE TABLE employee6(
id INT PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(40) UNIQUE NOT NULL,
city VARCHAR(20) DEFAULT 'Hyderabad',
salary INT CHECK(salary > 15000)
);

-- 7. Write a query to add UNIQUE constraint to an existing table. 
ALTER TABLE employee1 ADD UNIQUE(name);

-- 8. Write a query to drop a constraint from a table.
ALTER TABLE employee1 DROP "created constraint name";

