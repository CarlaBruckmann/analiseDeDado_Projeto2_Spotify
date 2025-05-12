SELECT
  CORR(streams, in_spotify_playlists) AS correlacao_streams_playlists
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`;
--
SELECT
  CORR(streams, danceability__) AS correlacao_streams_danceability
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`;

--
SELECT
  CORR(bpm, streams) AS correlacao_streams_bpm
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`;
--
SELECT
  CORR(in_spotify_charts, in_deezer_charts) AS correlacao_charts
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`;
--
SELECT
  CORR(in_spotify_playlists, in_deezer_playlists) AS correlacao_playlists
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`;

--
SELECT
  CORR(total_solo_tracks, total_streams) AS correlacao_musicas_streams
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.solo_tracks`;

-- Hipotese 5:
SELECT
  CORR(streams, danceability__) AS correlacao_streams_danceability
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`;

SELECT
  CORR(streams, valence__) AS correlacao_streams_valence
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`;

SELECT
  CORR(streams, energy__) AS correlacao_streams_energy
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`;

SELECT
  CORR(streams, acousticness__) AS correlacao_streams_acousticness
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`;
  
SELECT
  CORR(streams, instrumentalness__) AS correlacao_streams_instrumentalness
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`;

SELECT
  CORR(streams, liveness__) AS correlacao_streams_liveness
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`;

SELECT
  CORR(streams, speechiness__) AS correlacao_streams_speechiness
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`;

