SELECT 
  COUNT(*)
FROM `projeto-2-laboratoria-456917.database_projeto_2.track_in_competition`
WHERE track_id IS NULL
  OR in_apple_playlists IS NULL
  OR in_apple_charts IS NULL
  OR in_deezer_playlists IS NULL
  OR in_deezer_charts IS NULL
  OR in_shazam_charts IS NULL;

  SELECT *
FROM `projeto-2-laboratoria-456917.database_projeto_2.track_in_competition`
WHERE track_id IS NULL
  OR in_apple_playlists IS NULL
  OR in_apple_charts IS NULL
  OR in_deezer_playlists IS NULL
  OR in_deezer_charts IS NULL
  OR in_shazam_charts IS NULL;