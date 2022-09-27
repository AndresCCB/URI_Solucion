--2611
SELECT A.id, A.name
FROM movies A
INNER JOIN genres B ON A.id_genres = B.id
WHERE B.description = 'Action'