--2990
SELECT B.cpf, B.enome, A.dnome
FROM departamentos as A
INNER JOIN empregados as B ON A.dnumero = B.dnumero 
LEFT JOIN trabalha as C ON C.cpf_emp = B.cpf
LEFT JOIN projetos as D ON C.pnumero = D.pnumero
WHERE D.pnumero IS NULL
ORDER BY B.cpf