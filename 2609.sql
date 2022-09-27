--2609
SELECT B.name, SUM(A.amount)
FROM products A
INNER JOIN categories B ON A.id_categories = B.id
GROUP BY B.name
