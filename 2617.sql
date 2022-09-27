--2617
SELECT A.name, B.name
FROM products A
INNER JOIN providers B
ON A.id_providers = B.id
WHERE B.name = 'Ajax SA'