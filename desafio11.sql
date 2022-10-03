
SELECT 
	cancoes.nome_cancao AS nome_musica,
    CASE
        WHEN cancoes.nome_cancao LIKE '%bard%'
					THEN REPLACE(cancoes.nome_cancao, 'Bard', 'QA')

        WHEN cancoes.nome_cancao LIKE '%amar%'
					THEN REPLACE(cancoes.nome_cancao,'Amar', 'Code Review')
				
        WHEN cancoes.nome_cancao LIKE '%pais%'
					THEN REPLACE(cancoes.nome_cancao, 'Pais', 'Pull Requests')

        WHEN cancoes.nome_cancao LIKE '%soul%'
					THEN REPLACE(cancoes.nome_cancao, 'SOUL', 'CODE')

        WHEN cancoes.nome_cancao LIKE '%superstar%'
					THEN REPLACE(cancoes.nome_cancao, 'SUPERSTAR', 'SUPERDEV')
    END AS novo_nome
		
FROM SpotifyClone.cancoes
GROUP BY nome_musica
HAVING novo_nome IS NOT NULL
ORDER BY nome_musica DESC;
