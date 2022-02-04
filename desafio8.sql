SELECT 
    artistas.artista AS artista, albuns.album AS album
FROM
    SpotifyClone.Artistas AS artistas
        LEFT JOIN
    SpotifyClone.Albuns AS albuns ON artistas.artista_id = albuns.artista_id
WHERE
    artistas.artista = 'Walter Phoenix'
ORDER BY albuns.album ASC;