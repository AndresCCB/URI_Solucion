--2996
SELECT A.year, B.name as sender, C.name as receiver
FROM packages as A
INNER JOIN users as B ON A.id_user_sender = B.id
INNER JOIN users as C ON A.id_user_receiver = C.id
WHERE (A.color = 'blue' OR A.year = '2015') 
AND B.address != 'Taiwan' AND C.address != 'Taiwan'
ORDER BY A.year DESC, A.id_package DESC