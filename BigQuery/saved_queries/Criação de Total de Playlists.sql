CREATE OR REPLACE TABLE `projeto-2-laboratoria-456917.dados_consolidados.ttl_playlists` AS
SELECT
  sp.track_id,
  sp.track_name_clean,
  sp.artist_name_clean,
  sp.in_spotify_playlists,
  cp.in_deezer_playlists,
  cp.in_apple_playlists,
  -- nova variável somando tudo
  (IFNULL(sp.in_spotify_playlists, 0) +
   IFNULL(cp.in_deezer_playlists, 0) +
   IFNULL(cp.in_apple_playlists, 0)) AS total_playlists
FROM `projeto-2-laboratoria-456917.dados_consolidados.vw1_track_in_spotify` sp
LEFT JOIN `projeto-2-laboratoria-456917.dados_consolidados.vw1_track_in_competition` cp
  ON sp.track_id = cp.track_id;
