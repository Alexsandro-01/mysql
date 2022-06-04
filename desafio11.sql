SELECT
  nome as nome_musica,
  (
    CASE
      WHEN nome LIKE '%Streets' THEN REPLACE(nome, 'Streets', 'Code Review')
      WHEN nome LIKE '%Her Own' THEN REPLACE(nome, 'Her Own', 'Trybe')
      WHEN nome LIKE '%Inner Fire' THEN REPLACE(nome, 'Inner Fire', 'Project')
      WHEN nome LIKE '%Silly' THEN REPLACE(nome, 'Silly', 'Nice')
      WHEN nome LIKE '%Circus' THEN REPLACE(nome, 'Circus', 'Pull Request')
    END
  ) as novo_nome
FROM
  musica
WHERE
  nome LIKE '%Streets' OR
  nome LIKE '%Her Own' OR
  nome LIKE '%Inner Fire' OR
  nome LIKE '%Silly' OR
  nome LIKE '%Circus'
ORDER BY
  nome;

