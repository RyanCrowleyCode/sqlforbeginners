SHOW DATABASES;

CREATE DATABASE coffee_store;

USE coffee_store;

-- Creating a table with columns
-- id is the primary key, and it auto increments
-- name is a VARCHAR (like a string) with a maximum of 30 characters)
-- price is a decimal (precise) that will be 3 digits long, two of them decimals. This means a max of 9.99
CREATE TABLE products (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    price DECIMAL(3,2)
);

CREATE TABLE customers (
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    gender ENUM('M','F'),
    phone_number VARCHAR(11)
);

-- creating product_id and customer_id, which will be foreign keys. Example of how to set them as foreign keys.
CREATE TABLE orders (
	id INT AUTO_INCREMENT PRIMARY key,
    product_id INT,
    customer_id INT,
    order_time DATETIME,
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

SHOW TABLES;