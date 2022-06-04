SELECT
  art.nome as artista,
  alb.nome as album
FROM
  album as alb
INNER JOIN
  artista as art
ON
  art.id = alb.artista_id
WHERE
  art.nome LIKE 'Walter Phoenix'
ORDER BY
  album ASC;