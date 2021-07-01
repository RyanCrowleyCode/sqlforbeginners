-- HOW TO ADD AND REMOVE COLUMNS FROM A TABLE

SELECT * FROM PRODUCTS;

-- Adding a column
ALTER TABLE products
ADD COLUMN coffee_origin VARCHAR(30);

-- Removing a column
ALTER TABLE products
DROP COLUMN  coffee_origin;