--2995
SELECT temperature, COUNT(temperature) as number_of_records
FROM records
GROUP BY mark,temperature
ORDER BY mark;