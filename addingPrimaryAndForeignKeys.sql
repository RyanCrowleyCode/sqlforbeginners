CREATE DATABASE test;
SHOW DATABASES;
USE test;

SHOW TABLES;

CREATE TABLE addresses (
	id INT,
    house_number INT,
    city VARCHAR(20),
    postcode VARCHAR(7)
);

CREATE TABLE people (
	id INT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    address_id INT
);

CREATE TABLE pets (
	id INT,
    name VARCHAR(20),
    species VARCHAR(20),
    owner_id INT
);

-- Shows the Fields, Types, Null, Key, Default, Extra
DESCRIBE addresses;
DESCRIBE people;
DESCRIBE pets;

-- Add a primary key to a table
ALTER TABLE addresses
ADD PRIMARY KEY (id);

-- Remove primary key from a table
ALTER TABLE addresses
DROP PRIMARY KEY;

ALTER TABLE people
ADD PRIMARY KEY (id);

ALTER TABLE pets
ADD PRIMARY KEY (id);

-- Add a foreign key to a table
ALTER TABLE people
ADD CONSTRAINT FK_PeopleAddress
FOREIGN KEY (address_id) REFERENCES addresses(id);

ALTER TABLE pets
ADD CONSTRAINT FK_PetsPeople
FOREIGN KEY (owner_id) references people(id);


-- Remove a foreign key from a table BY CONSTRAINT NAME
ALTER TABLE people
DROP FOREIGN KEY FK_PeopleAddress;

