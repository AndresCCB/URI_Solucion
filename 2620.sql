--2620
SELECT A.name, B.id
FROM customers A
INNER JOIN orders B ON A.id = B.id_customers
WHERE orders_date BETWEEN '2016-01-01' AND '2016-06-30'