SELECT
  COUNT(hst.usuario_id) as quantidade_musicas_no_historico
FROM
  historico as hst
INNER JOIN
  usuario as usr
ON
  hst.usuario_id = usr.id
WHERE
  usr.nome LIKE "Bill";