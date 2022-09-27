--2623
SELECT A.name, B.name
FROM products A
INNER JOIN categories B ON A.id_categories = B.id
WHERE A.amount > 100 AND (B.id = 1 OR B.id = 2 OR B.id = 3
OR B.id = 6 OR B.id = 9)
ORDER BY B.id ASC