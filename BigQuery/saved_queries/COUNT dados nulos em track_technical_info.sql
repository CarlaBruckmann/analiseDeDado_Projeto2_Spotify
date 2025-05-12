SELECT 
  COUNT(*)
FROM `projeto-2-laboratoria-456917.database_projeto_2.track_technical_info`
WHERE track_id IS NULL
  OR bpm IS NULL
  OR key IS NULL
  OR mode IS NULL
  OR danceability__ IS NULL
  OR valence__ IS NULL
  OR energy__ IS NULL
  OR acousticness__ IS NULL
  OR instrumentalness__ IS NULL
  OR liveness__ IS NULL
  OR speechiness__ IS NULL;

  SELECT *
FROM `projeto-2-laboratoria-456917.database_projeto_2.track_technical_info`
WHERE track_id IS NULL
 OR bpm IS NULL
  OR key IS NULL
  OR mode IS NULL
  OR danceability__ IS NULL
  OR valence__ IS NULL
  OR energy__ IS NULL
  OR acousticness__ IS NULL
  OR instrumentalness__ IS NULL
  OR liveness__ IS NULL
  OR speechiness__ IS NULL;

  SELECT
  COUNTIF(track_id IS NULL) AS null_track_id,
  COUNTIF(bpm IS NULL) AS null_bpm,
  COUNTIF(key IS NULL) AS null_key,
  COUNTIF(mode IS NULL) AS null_mode,
  COUNTIF(danceability__ IS NULL) AS null_danceability,
  COUNTIF(valence__ IS NULL) AS null_valence,
  COUNTIF(energy__ IS NULL) AS null_energy,
  COUNTIF(acousticness__ IS NULL) AS null_acousticness,
  COUNTIF(instrumentalness__ IS NULL) AS null_instrumentalness,
  COUNTIF(liveness__ IS NULL) AS null_liveness,
  COUNTIF(speechiness__ IS NULL) AS null_speechiness
FROM `projeto-2-laboratoria-456917.database_projeto_2.track_technical_info`;
