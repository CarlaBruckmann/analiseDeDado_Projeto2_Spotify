WITH ids_desejados AS (
  SELECT "5080031" AS track_id, 1 AS ordem UNION ALL
  SELECT "7173596", 2 UNION ALL
  SELECT "5675634", 3 UNION ALL
  SELECT "3814670", 4 UNION ALL
  SELECT "4967469", 5 UNION ALL
  SELECT "8173823", 6 UNION ALL
  SELECT "1119309", 7 UNION ALL
  SELECT "4586215", 8
)

SELECT 
  a.track_id,
  a.track_name,
  a.artist_s__name,
  a.released_day,
  a.released_month,
  a.streams,
  b.bpm,
  b.key,
  b.danceability__,
  b.valence__,
  b.energy__,
  b.acousticness__,
  b.instrumentalness__,
  b.liveness__,
  b.speechiness__
FROM `projeto-2-laboratoria-456917.database_projeto_2.track_in_spotify` a
JOIN `projeto-2-laboratoria-456917.database_projeto_2.track_technical_info` b
  ON a.track_id = b.track_id
JOIN ids_desejados i
  ON a.track_id = i.track_id
ORDER BY i.ordem;

