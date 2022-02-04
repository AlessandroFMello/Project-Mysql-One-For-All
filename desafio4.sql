SELECT 
    usuarios.usuario,
    IF(YEAR(MAX(historico.data_reproducao)) >= 2021,
        'Usuário ativo',
        'Usuário inativo') AS condicao_usuario
FROM
    SpotifyClone.Usuarios AS usuarios
        LEFT JOIN
    SpotifyClone.Historico AS historico ON usuarios.usuario_id = historico.usuario_id
GROUP BY usuarios.usuario
ORDER BY usuarios.usuario ASC;