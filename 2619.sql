--2619
SELECT A.name, B.name, A.price
FROM products A
INNER JOIN providers B
ON A.id_providers = B.id
INNER JOIN categories C
ON A.id_categories = C.id
WHERE C.name = 'Super Luxury' AND 
A.price > 1000