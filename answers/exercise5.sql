-- Write a Query that locates the zipcode, city, state, and county of all of the timezones that have pipes (|) in them.
-- (Add your query to the file exercise5.sql)

SELECT zip, city, state, county, timezone
FROM zipcodes
WHERE timezone LIKE '%|%'
ORDER BY city, state;