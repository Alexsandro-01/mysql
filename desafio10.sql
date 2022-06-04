SELECT
  msc.nome as nome,
  count(hst.musica_id) as reproducoes
FROM
  historico as hst
INNER JOIN
  usuario as usr
ON 
  usr.id = hst.usuario_id
INNER JOIN
  plano as pln
ON
  pln.id = usr.plano_id
INNER JOIN
  musica as msc
ON
  msc.id = hst.musica_id
WHERE
  pln.nome = 'gratuito' OR pln.nome = 'pessoal'
GROUP BY
  msc.nome,
  hst.musica_id
ORDER BY
  msc.nome;