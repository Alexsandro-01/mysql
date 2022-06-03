SELECT
  MIN(pln.valor) as faturamento_minimo,
  MAX(pln.valor) as faturamento_maximo,
  ROUND(SUM(pln.valor) / COUNT(pln.valor), 2) as faturamento_medio,
  SUM(pln.valor) as faturamento_total
FROM
  plano as pln
INNER JOIN
  usuario as usr
ON
  usr.plano_id = pln.id;
