SELECT
  mus.nome as cancao,
  count(hst.musica_id) as reproducoes
FROM
  historico as hst
INNER JOIN
  musica as mus
ON
  mus.id = hst.musica_id
GROUP BY
  hst.musica_id
ORDER By
  reproducoes DESC,
  mus.nome
LIMIT
  2;