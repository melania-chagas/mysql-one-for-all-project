SELECT
	artistas.nome_artista AS artista,
  albuns.nome_album AS album,
  COUNT(seguidores_artistas.usuario_id) AS seguidores
FROM SpotifyClone.albuns

INNER JOIN SpotifyClone.artistas
	ON artistas.artista_id = albuns.artista_id
    
INNER JOIN SpotifyClone.seguidores_artistas
	ON seguidores_artistas.artista_id = artistas.artista_id
    
GROUP BY albuns.album_id

ORDER BY
	seguidores DESC,
    artista ASC,
    album ASC;