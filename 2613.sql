--2613
SELECT a.id, a.name
FROM movies a
INNER JOIN prices b
ON a.id_prices = b.id
WHERE b.value < 2.00