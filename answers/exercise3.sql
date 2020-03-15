-- Write a Query that finds the correct value for the missing timezones based on shared city, state or city, state, and county.
-- (Add your query to the file exercise3.sql)

SELECT t1.zip, t1.city, t1.state, t1. county, t1.timezone, t2.zip, t2.city, t2.state, t2.county, t2.timezone
FROM zipcodes AS t1 JOIN zipcodes as t2
ON t1.zip = t2.zip
WHERE t1.timezone IS NOT NULL and t2.timezone != 'FALSE'
ORDER BY t1.county;
