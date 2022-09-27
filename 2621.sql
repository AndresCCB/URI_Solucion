--2621
SELECT A.name
FROM products A
INNER JOIN providers B ON A.id_providers = B.id
WHERE A.amount >= 10 AND A.amount <= 20 AND B.name like 'P%'