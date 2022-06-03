SELECT
  usr.nome as usuario,
  count(hst.usuario_id) as qtde_musicas_ouvidas,
  ROUND(SUM(mus.duracao) / 60, 2) as total_minutos
FROM
  usuario as usr
INNER JOIN
  historico as hst
ON 
  hst.usuario_id = usr.id
INNER JOIN
  musica as mus
ON
  mus.id = hst.musica_id
GROUP BY
  hst.usuario_id
ORDER BY
  usr.nome ASC;
