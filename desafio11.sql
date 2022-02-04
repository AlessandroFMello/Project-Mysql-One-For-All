SELECT 
    cancoes.cancao AS nome_musica,
    CASE
        WHEN
            cancoes.cancao LIKE '%Streets'
        THEN
            CONCAT(SUBSTRING(cancoes.cancao,
                        1,
                        LOCATE('Streets', cancoes.cancao) - 1),
                    'Code Review')
        WHEN
            cancoes.cancao LIKE '%Her Own'
        THEN
            CONCAT(SUBSTRING(cancoes.cancao,
                        1,
                        LOCATE('Her Own', cancoes.cancao) - 1),
                    'Trybe')
        WHEN
            cancoes.cancao LIKE '%Inner Fire'
        THEN
            CONCAT(SUBSTRING(cancoes.cancao,
                        1,
                        LOCATE('Inner Fire', cancoes.cancao) - 1),
                    'Project')
        WHEN
            cancoes.cancao LIKE '%Silly'
        THEN
            CONCAT(SUBSTRING(cancoes.cancao,
                        1,
                        LOCATE('Silly', cancoes.cancao) - 1),
                    'Nice')
        WHEN
            cancoes.cancao LIKE '%Circus'
        THEN
            CONCAT(SUBSTRING(cancoes.cancao,
                        1,
                        LOCATE('Circus', cancoes.cancao) - 1),
                    'Pull Request')
    END AS novo_nome
FROM
    SpotifyClone.Cancoes AS cancoes
HAVING novo_nome IS NOT NULL
ORDER BY cancoes.cancao ASC;