create database joins;

use joins;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course_id INT
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);


INSERT INTO Courses (course_id, course_name) VALUES
(101, 'Data Analytics'),
(102, 'MBA'),
(103, 'Computer Science'),
(104, 'HR Management');


INSERT INTO Students (student_id, student_name, course_id) VALUES
(1, 'Arun', 101),
(2, 'Meena', 102),
(3, 'Ravi', 103),
(4, 'Divya', 105),   -- Invalid course (not in Courses table)
(5, 'Karthik', 101),
(6, 'Anjali', NULL); -- No enrollment


select
s.student_name,c.course_name
from students s
inner join courses c
on s.course_id= c.course_id;


select
s.student_name,c.course_name
from students s
left join courses c
on s.course_id= c.course_id;

select
s.student_name,c.course_name
from students s
right join courses c
on s.course_id= c.course_id;


CREATE TABLE Current_Employees (
    emp_id INT,
    emp_name VARCHAR(50)
);

CREATE TABLE Past_Employees (
    emp_id INT,
    emp_name VARCHAR(50)
);


INSERT INTO Current_Employees VALUES
(1, 'Arun'),
(2, 'Meena'),
(3, 'Ravi'),
(4, 'Divya');

INSERT INTO Past_Employees VALUES
(3, 'Ravi'),
(4, 'Divya'),
(5, 'Karthik'),
(6, 'Anjali');


SELECT emp_id, emp_name
FROM Current_Employees

UNION ALL

SELECT emp_id, emp_name
FROM Past_Employees;

SELECT emp_id, emp_name
FROM Current_Employees

UNION

SELECT emp_id, emp_name
FROM Past_Employees;
