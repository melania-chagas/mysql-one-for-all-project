SELECT 
  usuarios.nome_usuario AS usuario,
  COUNT(historico_reproducoes.cancao_id) AS qt_de_musicas_ouvidas,
  ROUND(SUM(cancoes.duracao_cancao) / 60, 2) AS total_minutos
FROM SpotifyClone.historico_reproducoes
INNER JOIN SpotifyClone.usuarios
  ON historico_reproducoes.usuario_id = usuarios.usuario_id
INNER JOIN SpotifyClone.cancoes 
  ON cancoes.cancao_id = historico_reproducoes.cancao_id
GROUP BY usuario
ORDER BY usuario ASC;

