USE test;

-- How to add a unique constraint to a column

ALTER TABLE <tablename>
ADD CONSTRAINT <constraintname> UNIQUE (<columnname>);

-- How to remove a unique constraint from a column
-- This means that the column must have unique values.
ALTER TABLE <tablename>
DROP INDEX <constraintname>;

SELECT * FROM pets;

ALTER TABLE pets
ADD CONSTRAINT u_species UNIQUE (species);

ALTER TABLE pets
DROP INDEX u_species;