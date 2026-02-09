------- ORDER_BY


CREATE DATABASE E_COMMERCE;

USE E_COMMERCE;
CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Laptop', 75000),
(2, 'Smartphone', 45000),
(3, 'Headphones', 3000),
(4, 'Smart Watch', 15000),
(5, 'Tablet', 28000),
(6, 'Gaming Laptop', 120000);

SELECT * FROM PRODUCTS
ORDER BY PRICE DESC
LIMIT 3;


