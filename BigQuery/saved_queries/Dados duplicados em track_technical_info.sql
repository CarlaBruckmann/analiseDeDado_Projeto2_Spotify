SELECT 
  track_id,
  COUNT(*) AS total
FROM `projeto-2-laboratoria-456917.database_projeto_2.track_technical_info`
GROUP BY track_id
HAVING COUNT(*) > 1;

SELECT 
  track_id,
  bpm,
  key,
  mode,
  danceability__,
  valence__,
  energy__,
  acousticness__,
  instrumentalness__,
  liveness__,
  speechiness__,
  COUNT(*) AS total
FROM `projeto-2-laboratoria-456917.database_projeto_2.track_technical_info`
GROUP BY 
  track_id,
  bpm,
  key,
  mode,
  danceability__,
  valence__,
  energy__,
  acousticness__,
  instrumentalness__,
  liveness__,
  speechiness__
HAVING COUNT(*) > 1;
