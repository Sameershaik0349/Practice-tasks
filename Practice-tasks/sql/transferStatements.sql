

--  Display employee name and their department name using INNER JOIN.
select e_name,department.d_name from employee inner join department on employee.d_id = department.d_id;

-- Display all employee details along with department name for employees who belong to a department.

select employee.*,department.d_name
from employee inner join department on employee.d_id=department.d_id;

-- Find employees working in the IT department using INNER JOIN.

select e_name from employee inner join department on employee.d_id=department.d_id where department.d_name= 'it'

-- Count the number of employees in each department.

select count(employee.e_name) as total_employees,department.d_name from employee inner join department on employee.d_id = department.d_id GROUP BY department.d_name;

-- Display employees whose salary is greater than 40,000 along with their department name.

select e_name,e_salary, department.d_name from employee inner join department on employee.d_id=department.d_id where employee.e_salary > 40000;


-- Display employees who joined after 2020 along with department name.  date_join > ‘2020-01-01’
select e_name,join_date,department.d_name from employee inner join department on  employee.d_id = department.d_id where join_date > '2020-01-02'


-- Find the maximum salary in each department.

SELECT max(e_salary),department.d_name from employee inner join department on employee.d_id= department.d_id group by department.d_name;

-- Retrieve employees whose department name starts with 'H'.
select employee.*,department.d_name from employee inner join department on employee.d_id=department.d_id where department.d_name like  'H%';

-- List all employees whose department ID matches in both tables.

select employee.*,department.d_id from employee inner join department on employee.d_id= department.d_id;


-- Display employee names, salaries, and department names sorted by department name  

select employee.e_name,e_salary,department.d_name from employee inner join department on employee.d_id=department.d_id order by department.d_name;

----right join questions 

desc courses;
desc students;

-- Display all courses and their students using RIGHT JOIN.
select c_name , students.stu_name from students right join courses on courses.c_id= students.c_id;

-- Display all courses even if no students are enrolled.

select courses.c_id,c_name,students.stu_name from students right join courses on courses.c_id= students.c_id;

-- Find courses that do not have any students using RIGHT JOIN.
select courses.c_id,c_name  from students right join courses on courses.c_id= students.c_id where students.stu_id is null;

select * from courses;
select * from students;
-- Display course names and student names, showing NULL where 
--               students are not available.

SELECT c.c_name, s.stu_name
FROM students s
RIGHT JOIN courses c
ON s.c_id = c.c_id;


-- Count the number of students in each course using RIGHT JOIN.

select count(stu_name),courses.c_name from students right join  courses on courses.c_id = students.c_id group by courses.c_name;
-- 6.	Display course names and latest student join date for each course.
SELECT courses.c_name, MAX(students.join_date)
FROM students
RIGHT JOIN courses
ON students.c_id = courses.c_id
GROUP BY courses.c_name;

-- 7.	List all courses with the total number of students enrolled.
SELECT courses.c_name, COUNT(students.stu_id)
FROM students
RIGHT JOIN courses
ON students.c_id = courses.c_id
GROUP BY courses.c_name;

-- 8.	Display course details along with student details where course IDs match.
SELECT courses.*, students.*
FROM students
RIGHT JOIN courses
ON students.c_id = courses.c_id;

-- 9.	Find courses where students joined after 2024-01-01 using RIGHT JOIN.
SELECT courses.c_name, students.stu_name, students.join_date
FROM students
RIGHT JOIN courses
ON students.c_id = courses.c_id
WHERE students.join_date > '2024-01-01';

-- 10.	Display all course names and student names ordered by course name using
--             RIGHT JOIN.
SELECT courses.c_name, students.stu_name
FROM students
RIGHT JOIN courses
ON students.c_id = courses.c_id
ORDER BY courses.c_name;

