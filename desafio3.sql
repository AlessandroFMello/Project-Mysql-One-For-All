SELECT
	usuarios.usuario,
    COUNT(historico.usuario_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(cancoes.duracao_segundos) / 60, 2) AS total_minutos
FROM
	SpotifyClone.Usuarios AS usuarios
    LEFT JOIN SpotifyClone.Historico AS historico
    ON usuarios.usuario_id = historico.usuario_id
    LEFT JOIN SpotifyClone.Cancoes AS cancoes
    ON cancoes.cancao_id = historico.cancao_id
GROUP BY usuarios.usuario
ORDER BY usuarios.usuario ASC;