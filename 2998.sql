--2998
SELECT A.name, A.investment, 
CEILING((A.investment / AVG(DISTINCT B.profit))) as month_of_payback, 
(SUM(B.profit) - A.investment) as return
FROM clients A
INNER JOIN operations B
ON A.id = B.client_id
WHERE B.month in (1,2,3)
GROUP BY A.id
HAVING (SUM(B.profit) - A.investment) >= 0
ORDER BY return DESC;