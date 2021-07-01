-- HOW TO DELETE TABLES FROM A DATABASE

CREATE DATABASE example;

SHOW DATABASES;

USE example;

CREATE TABLE test (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    age INT
);

SELECT * FROM test;
SHOW TABLES;

-- This is how you delete a table
DROP TABLE test;

-- This is how you clear all of the rows in the table. DANGEROUS!
-- essentially, it drops the table and then creates it again.
TRUNCATE TABLE test;