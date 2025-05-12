CREATE OR REPLACE VIEW `projeto-2-laboratoria-456917.dados_consolidados.vw_final_tracks` AS

-- Seleciona as colunas que queremos trazer das três tabelas
SELECT 
  sp.track_id,                         -- ID único da música
  sp.track_name_clean,                  -- Nome da música (tratado/limpo)
  sp.artist_name_clean,                 -- Nome do(s) artista(s) (tratado/limpo)
  sp.release_date,                      -- Data de lançamento no formato YYYY-MM-DD
  sp.in_spotify_playlists,               -- Número de playlists do Spotify que a música participa
  sp.in_spotify_charts,                  -- Posição nas paradas do Spotify
  sp.streams,                            -- Número de streams no Spotify
  
  comp.in_apple_playlists,               -- Número de playlists da Apple Music
  comp.in_apple_charts,                  -- Posição nas paradas da Apple Music
  comp.in_deezer_playlists,              -- Número de playlists do Deezer
  comp.in_deezer_charts,                 -- Posição nas paradas do Deezer
  
  tech.bpm,                              -- Batidas por minuto da música
  tech.key,                              -- Tom musical
  tech.mode,                             -- Modo musical (Maior ou Menor)
  tech.danceability__,                   -- Índice de dançabilidade
  tech.valence__,                        -- Índice de positividade
  tech.energy__,                         -- Nível de energia
  tech.acousticness__,                   -- Quantidade de sons acústicos
  tech.instrumentalness__,               -- Quantidade de sons instrumentais
  tech.liveness__,                       -- Presença de público ou som ao vivo
  tech.speechiness__                     -- Presença de fala na música

-- Define a primeira tabela base: Spotify (sp)
FROM `projeto-2-laboratoria-456917.dados_consolidados.vw1_track_in_spotify` AS sp

-- Faz um LEFT JOIN com a view de competição (comp)
LEFT JOIN `projeto-2-laboratoria-456917.dados_consolidados.vw1_track_in_competition` AS comp
  ON sp.track_id = comp.track_id          -- Conecta pelo track_id

  -- Faz um LEFT JOIN com a view de informações técnicas (tech)
LEFT JOIN `projeto-2-laboratoria-456917.dados_consolidados.vw1_track_technical_info` AS tech
  ON sp.track_id = tech.track_id;          -- Conecta pelo track_id