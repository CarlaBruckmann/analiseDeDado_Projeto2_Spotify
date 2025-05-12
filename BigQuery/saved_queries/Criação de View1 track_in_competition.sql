CREATE OR REPLACE VIEW `projeto-2-laboratoria-456917.dados_consolidados.vw1_track_in_competition` AS
SELECT
  CAST(track_id AS INT64) AS track_id, -- convertido para número
  in_apple_playlists,
  in_apple_charts,
  in_deezer_playlists,
  in_deezer_charts
FROM `projeto-2-laboratoria-456917.database_projeto_2.track_in_competition`
WHERE REGEXP_CONTAINS(track_id, r'^\d+$'); -- garante que track_id seja numérico