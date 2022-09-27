--2614
SELECT A.name, B.rentals_date
FROM customers as A
INNER JOIN rentals as B
ON B.id_customers = A.id
WHERE B.rentals_date between '2016-09-01' AND '2016-09-30'