--2616
SELECT A.id, A.name
FROM customers A
LEFT JOIN locations B ON A.id = B.id_customers
WHERE B.id_customers IS NULL 
ORDER BY A.id