SELECT
	cancoes.nome_cancao AS nome,
	COUNT(historico_reproducoes.cancao_id) AS reproducoes
FROM SpotifyClone.historico_reproducoes

INNER JOIN SpotifyClone.usuarios
	ON usuarios.usuario_id = historico_reproducoes.usuario_id
    
INNER JOIN SpotifyClone.cancoes
	ON cancoes.cancao_id = historico_reproducoes.cancao_id

WHERE usuarios.plano_id = 1 OR usuarios.plano_id = 4

GROUP BY nome
ORDER BY nome ASC;
