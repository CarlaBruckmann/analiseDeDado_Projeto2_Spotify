CREATE OR REPLACE VIEW `projeto-2-laboratoria-456917.dados_consolidados.vw1_track_in_spotify` AS
SELECT
  -- Colunas originais
  CAST(track_id AS INT64) AS track_id,--converte para número
  track_name,
  artist_s__name,
  released_year,
  released_month,
  released_day,
  in_spotify_playlists,
  in_spotify_charts,
  CAST(streams AS INT64) AS streams,--converte para número

  -- Colunas limpas
  REGEXP_REPLACE(track_name, r'[^a-zA-Z0-9áéíóúãõâêîôûçÁÉÍÓÚÃÕÂÊÎÔÛÇ"()\-.,!?\n\r ]', '') AS track_name_clean,
  REGEXP_REPLACE(artist_s__name, r'[^a-zA-Z0-9áéíóúãõâêîôûçÁÉÍÓÚÃÕÂÊÎÔÛÇ"()\-.,!?\n\r ]', '') AS artist_name_clean,

  -- Nova variável: data no formato 'aaaa-mm-dd' (como string)
  CONCAT(
    CAST(released_year AS STRING), '-',
    LPAD(CAST(released_month AS STRING), 2, '0'), '-', --LPAD para 2 digitos.
    LPAD(CAST(released_day AS STRING), 2, '0')
  ) AS release_date,

  -- Nova variável: presença total em playlists
  in_spotify_playlists + in_spotify_charts AS total_playlist_presence

FROM `projeto-2-laboratoria-456917.database_projeto_2.track_in_spotify`
WHERE 
  REGEXP_CONTAINS(track_id, r'^\d+$') --garante que track_id seja numérico
  AND REGEXP_CONTAINS(streams, r'^\d+$') --retira valores não numéricos
  AND track_id NOT IN ("5080031"); --retira musica duplicada