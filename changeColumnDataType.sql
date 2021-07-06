USE test;

-- How to change a columns data type

ALTER TABLE <tablename> MODIFY <columnname> <data type>;

DESCRIBE addresses;

ALTER TABLE addresses MODIFY city VARCHAR(30);