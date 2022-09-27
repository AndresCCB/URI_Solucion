--2738
SELECT A.name, ROUND((((B.math*2)+(B.specific*3)+(B.project_plan*5))/10),2) as avg
FROM candidate as A
INNER JOIN score as B
ON B.candidate_id = A.id
ORDER BY AVG DESC