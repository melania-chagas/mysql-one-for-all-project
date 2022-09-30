SELECT
	COUNT(historico_reproducoes.usuario_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_reproducoes

INNER JOIN SpotifyClone.usuarios
	ON usuarios.usuario_id = historico_reproducoes.usuario_id

WHERE usuarios.nome_usuario = 'Barbara Liskov';

