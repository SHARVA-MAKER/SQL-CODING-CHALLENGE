---------- AGGREGATE FUNCTIONS

CREATE DATABASE STATISTICAL_SALES;

USE STATISTICAL_SALES;

CREATE TABLE sales (
    sale_id INT,
    product_name VARCHAR(50),
    quantity INT,
    total_amount DECIMAL(10,2)
);


INSERT INTO sales (sale_id, product_name, quantity, total_amount) VALUES
(1, 'Laptop', 2, 150000),
(2, 'Mobile', 5, 125000),
(3, 'Headphones', 10, 30000),
(4, 'Tablet', 3, 84000),
(5, 'Smart Watch', 4, 60000);


SELECT COUNT(*) AS total_sales 
FROM sales;


SELECT SUM(total_amount) AS total_revenue
 FROM sales;
 
 SELECT AVG(total_amount) AS avg_sales_amount
 FROM sales;
 
 SELECT MAX(total_amount) AS higher_price
 FROM sales;
 
 SELECT MIN(total_amount) AS lower_price
 FROM sales;