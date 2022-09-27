--2625
SELECT substring(cpf, 1, 3 ) || '.' || substring(cpf, 4, 3 ) || '.' ||
substring(cpf, 7, 3) || '-' || substring(cpf, 10, 2) as CPF
FROM natural_person as A
INNER JOIN customers as B
ON B.id = A.id_customers