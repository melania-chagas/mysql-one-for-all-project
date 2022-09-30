SELECT
  FORMAT(MIN(planos.preco_plano), 2) AS faturamento_minimo,
  FORMAT(MAX(planos.preco_plano),2) AS faturamento_maximo,
  FORMAT(AVG(planos.preco_plano), 2) AS faturamento_medio,
  FORMAT(SUM(planos.preco_plano),2) AS faturamento_total
FROM
	SpotifyClone.usuarios
INNER JOIN SpotifyClone.planos
  ON usuarios.plano_id = planos.plano_id;