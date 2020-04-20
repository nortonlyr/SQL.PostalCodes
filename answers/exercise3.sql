-- Write a Query that finds the correct value for the missing timezones based on shared city, state or city, state, and county.
-- (Add your query to the file exercise3.sql)

CREATE TEMPORARY TABLE q3 AS
SELECT
    DISTINCT t1.zip,
    t1.city,
    t1.state,
    t1.county,
    t1.timezone AS timezone_old,
    CASE WHEN t1.timezone = 'FALSE' AND t2.timezone IS NOT NULL THEN t2.timezone ELSE t1.timezone END AS timezone
FROM zipcodes t1
    LEFT JOIN (
        SELECT DISTINCT zip,
                        city,
                        state,
                        timezone
        FROM zipcodes
        WHERE timezone <> 'FALSE'
        ) t2
        ON t1.city = t2.city AND t1.state = t2.state;