--2997
departamento.nome as "Departamento",
empregado.nome as "Empregado",
CASE
	WHEN coalesce(sum(vencimento.valor),0) > 0 THEN ROUND(COALESCE(SUM(vencimento.valor),0),2)
    ELSE 0
END AS "Salario Bruto",
CASE
	WHEN coalesce(desconto.val_desc,0) > 0 THEN ROUND(COALESCE(desconto.val_desc,0),2)
    ELSE 0
END AS "Total Desconto",
CASE
	WHEN COALESCE(SUM(vencimento.valor),0) - COALESCE(desconto.val_desc,0) > 0 THEN ROUND(COALESCE(SUM(vencimento.valor),0) - COALESCE(desconto.val_desc,0),2)
    ELSE 0
END AS "Salario Liquidoaws"
from emp_venc 
	RIGHT JOIN empregado ON empregado.matr = emp_venc.matr 
	LEFT JOIN vencimento ON vencimento.cod_venc = emp_venc.cod_venc 
	LEFT JOIN departamento ON departamento.cod_dep = empregado.lotacao 
	LEFT JOIN (SELECT empregado.matr, SUM(desconto.valor) as val_desc
		FROM empregado 
			INNER JOIN emp_desc 
				ON emp_desc.matr = empregado.matr 
			LEFT JOIN desconto 
				ON desconto.cod_desc = emp_desc.cod_desc
			GROUP BY empregado.matr) as desconto 
				ON desconto.matr = empregado.matr
GROUP BY departamento.nome, empregado.nome, desconto.val_desc, empregado.lotacao_div
ORDER BY (COALESCE(SUM(vencimento.valor),0) - COALESCE(desconto.val_desc,0)) DESC, lotacao_div DESC