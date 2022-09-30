SELECT
	cancoes.nome_cancao AS nome_musica,
	REPLACE (
		REPLACE (
			REPLACE (
				REPLACE (
					REPLACE ( cancoes.nome_cancao, 
						'Bard', 'QA'),
								'Amar', 'Code Review'),
									'Pais', 'Pull Requests'),
										'SOUL', 'CODE'),
											'SUPERSTAR', 'SUPERDEV')
                                            AS novo_nome
FROM SpotifyClone.cancoes

ORDER BY nome_musica DESC;
