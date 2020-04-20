-- Write a query that locates the correct values and updates the FALSE and NULL values.
-- (Add your query to the file exercise4.sql)


SELECT count(*), count(distinct zip) FROM zipcodes

UPDATE zipcodes z1
INNER JOIN q3
ON z1.zip=q3.zip
SET z1.timezone = q3.timezone
WHERE z1.timezone = 'FALSE';

SELECT * FROM zipcodes
where timezone = 'FALSE';