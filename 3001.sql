--3001
SELECT name, CASE
    WHEN TYPE = 'A' THEN 20.0
    WHEN TYPE = 'B' THEN 70.0
    WHEN TYPE = 'C' THEN 530.5
END as price
FROM products
ORDER BY TYPE ASC, id DESC