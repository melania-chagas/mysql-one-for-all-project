SELECT 
	cancoes.nome_cancao AS cancao,
	COUNT(historico_reproducoes.cancao_id) as reproducoes
FROM SpotifyClone.cancoes
    INNER JOIN SpotifyClone.historico_reproducoes
    ON historico_reproducoes.cancao_id = cancoes.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC LIMIT 2; 