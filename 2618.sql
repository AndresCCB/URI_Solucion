--2618
SELECT A.name, B.name, C.name
FROM products A
INNER JOIN providers B ON A.id_providers = B.id
INNER JOIN categories C ON A.id_categories = C.id
WHERE B.name = 'Sansul SA' AND C.name  = 'Imported'