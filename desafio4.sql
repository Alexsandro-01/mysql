SELECT
  usr.nome as usuario,
  (CASE
    when year(MAX(hst.data_reproducao)) = 2021 then 'Usuário ativo'
    else 'Usuário inativo'
  END) as condicao_usuario
FROM
  usuario as usr
INNER JOIN
  historico as hst
ON
  hst.usuario_id = usr.id
GROUP BY
  usr.nome;

