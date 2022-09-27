--2622
SELECT name 
FROM customers a
INNER JOIN legal_person b
ON a.id = b.id_customers