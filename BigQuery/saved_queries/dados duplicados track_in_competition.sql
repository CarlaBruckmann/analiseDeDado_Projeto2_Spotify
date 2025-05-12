SELECT 
  track_id,
  in_apple_playlists,
  in_apple_charts,
  in_deezer_playlists,
  in_deezer_charts,
  in_shazam_charts,
  COUNT(*) AS total
FROM `projeto-2-laboratoria-456917.database_projeto_2.track_in_competition`
GROUP BY 
  track_id,
  in_apple_playlists,
  in_apple_charts,
  in_deezer_playlists,
  in_deezer_charts,
  in_shazam_charts
HAVING COUNT(*) > 1;
