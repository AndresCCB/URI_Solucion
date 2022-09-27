--2999
SELECT A.nome,
ROUND(SUM(DISTINCT COALESCE(E.valor, 0)) - SUM(DISTINCT COALESCE(C.valor, 0)), 2) AS salario
FROM empregado A
LEFT JOIN emp_desc B
ON B.matr = A.matr
LEFT JOIN desconto C
ON C.cod_desc = B.cod_desc
INNER JOIN emp_venc D
ON D.matr = A.matr
INNER JOIN vencimento E 
ON E.cod_venc = D.cod_venc
GROUP BY A.nome, A.lotacao
HAVING ROUND(SUM(DISTINCT COALESCE(E.valor, 0)) - SUM(DISTINCT COALESCE(C.valor, 0)), 2) > 8000
ORDER BY A.lotacao asc;