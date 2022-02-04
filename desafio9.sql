SELECT 
    COUNT(historico.cancao_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.Historico AS historico
        INNER JOIN
    SpotifyClone.Usuarios AS usuarios ON historico.usuario_id = usuarios.usuario_id
WHERE
    usuarios.usuario = 'Bill';