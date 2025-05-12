WITH solo_tracks AS ( --cria tabela temporária
  SELECT
    artist_name_clean, --seleciona o nome do artista
    COUNT(track_id) AS total_solo_tracks, --conta quantas musicas (track_id) esse artista tem 
    SUM(streams) AS total_streams --soma total de streams
  FROM `projeto-2-laboratoria-456917.dados_consolidados.vw_final_tracks`
  WHERE NOT REGEXP_CONTAINS(artist_name_clean, r',') --filtrar para pegar somente artistas solo, sem virulas no nome
  GROUP BY artist_name_clean -- agrupa os resultados por artista para fazer a contagem -- total 301 resultados
)
SELECT *
FROM solo_tracks;

--teste
SELECT
  artist_name_clean,
  track_name_clean
FROM `projeto-2-laboratoria-456917.dados_consolidados.vw_final_tracks`
WHERE artist_name_clean LIKE 'Taylor Swift'; --teste com o nome Taylor Swift, para saber se a quantidade total está correta.