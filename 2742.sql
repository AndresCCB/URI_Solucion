--2742
SELECT A.name, ROUND((A.omega * 1.618), 3) as "The N Factor"
FROM life_registry as A
INNER JOIN dimensions as B
ON A.dimensions_id = B.id
WHERE B.name in ('C875', 'C774') AND A.name LIKE 'Richard%'
ORDER BY A.omega ASC