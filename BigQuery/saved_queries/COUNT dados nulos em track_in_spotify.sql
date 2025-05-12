SELECT 
  COUNT(*)
FROM `projeto-2-laboratoria-456917.database_projeto_2.track_in_spotify`
WHERE track_id IS NULL
  OR track_name IS NULL
  OR artist_s__name IS NULL
  OR artist_count IS NULL
  OR released_year IS NULL
  OR released_day IS NULL
  OR released_month IS NULL
  OR in_spotify_playlists IS NULL
  OR in_spotify_charts IS NULL
  OR streams IS NULL;

  SELECT *
FROM `projeto-2-laboratoria-456917.database_projeto_2.track_in_spotify`
WHERE track_id IS NULL
 OR track_name IS NULL
  OR artist_s__name IS NULL
  OR artist_count IS NULL
  OR released_year IS NULL
  OR released_day IS NULL
  OR released_month IS NULL
  OR in_spotify_playlists IS NULL
  OR in_spotify_charts IS NULL
  OR streams IS NULL;