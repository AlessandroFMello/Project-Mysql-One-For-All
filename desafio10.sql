SELECT 
    cancoes.cancao AS nome,
    COUNT(historico.cancao_id) AS reproducoes
FROM
    SpotifyClone.Historico AS historico
        LEFT JOIN
    SpotifyClone.Cancoes AS cancoes ON historico.cancao_id = cancoes.cancao_id
        INNER JOIN
    SpotifyClone.Usuarios AS usuarios ON usuarios.usuario_id = historico.usuario_id
        INNER JOIN
    SpotifyClone.Planos AS planos ON usuarios.plano_id = planos.plano_id
WHERE
    planos.plano IN ('gratuito' , 'pessoal')
GROUP BY nome
ORDER BY nome ASC;