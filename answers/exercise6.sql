-- Write a Query that returns the city, state and number of instances of all of the timezones that have pipes (|) in them.
-- (Add your query to the file exercise6.sql)

SELECT zip, city, state, COUNT(timezone)
FROM zipcodes
WHERE timezone LIKE '%|%'
GROUP by zip, city, state
ORDER BY state, city;