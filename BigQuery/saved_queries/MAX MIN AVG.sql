SELECT 
  -- Apple Music
  MAX(CAST(in_apple_playlists AS INT64)) AS max_apple_playlists,
  MIN(CAST(in_apple_playlists AS INT64)) AS min_apple_playlists,
  AVG(CAST(in_apple_playlists AS INT64)) AS avg_apple_playlists,

  MAX(CAST(in_apple_charts AS INT64)) AS max_apple_charts,
  MIN(CAST(in_apple_charts AS INT64)) AS min_apple_charts,
  AVG(CAST(in_apple_charts AS INT64)) AS avg_apple_charts,

  -- Deezer
  MAX(CAST(in_deezer_playlists AS INT64)) AS max_deezer_playlists,
  MIN(CAST(in_deezer_playlists AS INT64)) AS min_deezer_playlists,
  AVG(CAST(in_deezer_playlists AS INT64)) AS avg_deezer_playlists, 

  MAX(CAST(in_deezer_charts AS INT64)) AS max_deezer_charts,
  MIN(CAST(in_deezer_charts AS INT64)) AS min_deezer_charts,
  AVG(CAST(in_deezer_charts AS INT64)) AS avg_deezer_charts,


FROM `projeto-2-laboratoria-456917.database_projeto_2.track_in_competition`;



