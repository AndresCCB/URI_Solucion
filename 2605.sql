--2605
SELECT a.name, b.name 
FROM products a
INNER JOIN providers b ON a.id_providers = b.id
INNER JOIN categories c ON a.id_categories = c.id
WHERE c.id = 6