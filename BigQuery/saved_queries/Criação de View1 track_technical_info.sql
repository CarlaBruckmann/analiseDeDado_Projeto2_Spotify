CREATE OR REPLACE VIEW `projeto-2-laboratoria-456917.dados_consolidados.vw1_track_technical_info` AS
SELECT
  CAST(track_id AS INT64) AS track_id,  -- convertido para número
  bpm,
  mode,
  danceability__,
  valence__,
  energy__,
  acousticness__,
  instrumentalness__,
  liveness__,
  speechiness__,
  COALESCE(key, 'desconhecido') AS key  -- Substituindo valores nulos por "desconhecido"
FROM `projeto-2-laboratoria-456917.database_projeto_2.track_technical_info`
WHERE REGEXP_CONTAINS(track_id, r'^\d+$');  -- garante que track_id seja numérico