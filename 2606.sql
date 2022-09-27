--2606
SELECT a.id, a.name
FROM products a
INNER JOIN categories b
ON a.id_categories = b.id
WHERE b.name like 'super%'