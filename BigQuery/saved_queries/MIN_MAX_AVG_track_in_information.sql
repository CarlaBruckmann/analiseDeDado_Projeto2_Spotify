SELECT 
  -- bpm
  MAX(bpm) AS max_bpm,
  MIN(bpm) AS min_bpm,
  AVG(bpm) AS avg_bpm,

  -- danceability
  MAX(danceability__) AS max_danceability,
  MIN(danceability__) AS min_danceability,
  AVG(danceability__) AS avg_danceability,

  -- valence
  MAX(valence__) AS max_valence,
  MIN(valence__) AS min_valence,
  AVG(valence__) AS avg_valence,

  -- energy
  MAX(energy__) AS max_energy,
  MIN(energy__) AS min_energy,
  AVG(energy__) AS avg_energy,

  -- acousticness
  MAX(acousticness__) AS max_acousticness,
  MIN(acousticness__) AS min_acousticness,
  AVG(acousticness__) AS avg_acousticness,

  -- instrumentalness
  MAX(instrumentalness__) AS max_instrumentalness,
  MIN(instrumentalness__) AS min_instrumentalness,
  AVG(instrumentalness__) AS avg_instrumentalness,

  -- liveness
  MAX(liveness__) AS max_liveness,
  MIN(liveness__) AS min_liveness,
  AVG(liveness__) AS avg_liveness,

  -- speechiness
  MAX(speechiness__) AS max_speechiness,
  MIN(speechiness__) AS min_speechiness,
  AVG(speechiness__) AS avg_speechiness

FROM `projeto-2-laboratoria-456917.database_projeto_2.track_technical_info`;

