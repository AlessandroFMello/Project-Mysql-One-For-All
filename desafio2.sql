SELECT  
  COUNT(DISTINCT cancoes.cancao_id) AS cancoes,
	COUNT(DISTINCT artistas.artista_id) AS artistas,
  COUNT(DISTINCT albuns.album_id) AS albuns
FROM
  SpotifyClone.Cancoes AS cancoes,
  SpotifyClone.Artistas AS artistas,
  SpotifyClone.Albuns AS albuns;