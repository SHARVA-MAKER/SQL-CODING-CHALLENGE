-------- GROUPBY AND HAVING

CREATE DATABASE EMPLOYEE_DETAILS;

USE EMPLOYEE_DETAILS;

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50)
);


INSERT INTO employees VALUES
(1,'Amit','IT'), (2,'Ravi','IT'), (3,'Suresh','IT'),
(4,'Kiran','IT'), (5,'Neha','IT'), (6,'Vijay','IT'),
(7,'Pooja','IT'), (8,'Anil','IT'), (9,'Manoj','IT'),
(10,'Divya','IT'), (11,'Rahul','IT'), (12,'Sneha','IT'),

(13,'Arun','HR'), (14,'Meena','HR'), (15,'Lakshmi','HR'),
(16,'Priya','HR'), (17,'Naveen','HR'), (18,'Karthik','HR'),
(19,'Swathi','HR'), (20,'Ramesh','HR'),

(21,'Ajay','Sales'), (22,'Sanjay','Sales'), (23,'Kumar','Sales'),
(24,'Rekha','Sales'), (25,'Deepak','Sales'), (26,'Sunita','Sales'),
(27,'Vimal','Sales'), (28,'Anusha','Sales'), (29,'Prakash','Sales'),
(30,'Geetha','Sales'), (31,'Nitin','Sales');


SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY(department)
HAVING COUNT(*) > 10;