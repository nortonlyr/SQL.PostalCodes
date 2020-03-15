-- States, Counties
-- Write a Query that returns all the unique state names.
-- (Add your query to the file exercise1-a.sql)

SELECT DISTINCT state
FROM zipcodes
ORDER BY state;

-- Write a Query that returns all the Counties by State on separate lines.  ?????
-- (Add your query to the file exercise1-b.sql)

SELECT county,state
FROM zipcodes
Order BY state, county


-- Write a Query that returns all the Counties by state, as a concatenated string.
-- (Add your query to the file exercise1-c.sql)

SELECT GROUP_CONCAT(county), state
FROM zipcodes
GROUP BY state
ORDER BY state;

SELECT CONCAT(county, ': ', state)
FROM zipcodes;


-- Write a Query that returns number of Counties by state.
-- (Add your query to the file exercise1-d.sql)

SELECT  state, COUNT(county) AS total
FROM zipcodes
GROUP BY state
ORDER BY state;

SELECT state, count(county)
FROM zipcodes
GROUP BY state
ORDER BY state;

-- Write a Query that returns all of the individual timezones.
-- (Add your query to the file exercise1-e.sql)

SELECT DISTINCT timezone FROM zipcodes
ORDER BY timezone;


-- Fixing Data
-- Write a Query that returns the zipcode, city, state, and county of all of the FALSE or NULL timezones.
-- (Add your query to the file exercise1-f.sql)

SELECT zip, city, state, county, timezone
FROM zipcodes
WHERE timezone = 'FALSE'
OR timezone IS NULL;