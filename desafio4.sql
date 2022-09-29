SELECT 
  usuarios.nome_usuario AS usuario,
  IF(MAX(YEAR(historico_reproducoes.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuarios
INNER JOIN SpotifyClone.historico_reproducoes
  ON usuarios.usuario_id = historico_reproducoes.usuario_id
GROUP BY usuario
ORDER BY usuario ASC;
