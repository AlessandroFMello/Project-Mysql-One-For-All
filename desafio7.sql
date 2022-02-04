SELECT 
    artistas.artista,
    albuns.album AS album,
    COUNT(seguindo.artista_id) AS seguidores
FROM
    SpotifyClone.Artistas AS artistas
        INNER JOIN
    SpotifyClone.Albuns AS albuns ON artistas.artista_id = albuns.artista_id
        INNER JOIN
    SpotifyClone.Seguindo AS seguindo ON seguindo.artista_id = artistas.artista_id
GROUP BY artistas.artista , albuns.album
ORDER BY seguidores DESC , artistas.artista ASC , albuns.album ASC;