CREATE OR REPLACE TABLE `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks` AS
SELECT 
  sp.track_id,
  sp.track_name_clean,
  sp.artist_name_clean,
  sp.release_date,
  sp.in_spotify_playlists,
  sp.in_spotify_charts,
  sp.streams,

  comp.in_apple_playlists,
  comp.in_apple_charts,
  comp.in_deezer_playlists,
  comp.in_deezer_charts,

  tech.bpm,
  tech.key,
  tech.mode,
  tech.danceability__,
  tech.valence__,
  tech.energy__,
  tech.acousticness__,
  tech.instrumentalness__,
  tech.liveness__,
  tech.speechiness__

-- Define a primeira tabela base: Spotify (sp)
FROM `projeto-2-laboratoria-456917.dados_consolidados.vw1_track_in_spotify` AS sp

-- Faz um LEFT JOIN com a view de competição (comp)
LEFT JOIN `projeto-2-laboratoria-456917.dados_consolidados.vw1_track_in_competition` AS comp
  ON sp.track_id = comp.track_id          -- Conecta pelo track_id

  -- Faz um LEFT JOIN com a view de informações técnicas (tech)
LEFT JOIN `projeto-2-laboratoria-456917.dados_consolidados.vw1_track_technical_info` AS tech
  ON sp.track_id = tech.track_id;          -- Conecta pelo track_id