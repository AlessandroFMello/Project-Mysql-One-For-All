SELECT 
    cancoes.cancao AS cancao,
    COUNT(historico.cancao_id) AS reproducoes
FROM
    SpotifyClone.Historico AS historico
        LEFT JOIN
    SpotifyClone.Cancoes AS cancoes ON cancoes.cancao_id = historico.cancao_id
GROUP BY cancoes.cancao
ORDER BY reproducoes DESC , cancao ASC
LIMIT 2;