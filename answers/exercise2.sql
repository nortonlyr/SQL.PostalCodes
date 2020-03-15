-- Write a Query that returns the city, state and number of instances of all of the FALSE or NULL timezones.
-- (Add your query to the file exercise2.sql)

SELECT city, state, COUNT(timezone) AS total_missing
FROM zipcodes
WHERE timezone = 'FALSE'
OR timezone IS NULL
GROUP BY city, state
ORDER BY city, state;