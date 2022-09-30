SELECT
	artistas.nome_artista AS artista,
    albuns.nome_album AS album
    
FROM SpotifyClone.albuns

INNER JOIN SpotifyClone.artistas
	ON artistas.artista_id = albuns.artista_id
    
WHERE artistas.nome_artista = 'Elis Regina'

ORDER BY
    artista ASC;