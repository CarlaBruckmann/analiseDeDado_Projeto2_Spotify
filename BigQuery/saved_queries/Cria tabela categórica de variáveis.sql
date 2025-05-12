CREATE OR REPLACE TABLE `projeto-2-laboratoria-456917.dados_consolidados.tbl_tracks_technical_category` AS
SELECT
  *, -- pega todas as variáveis da tabela e adiciona as seguintes:
  
  -- Danceability
  CASE
    WHEN danceability__ <= 57 THEN 'Baixo'
    WHEN danceability__ <= 69 THEN 'Médio'
    WHEN danceability__ <= 78 THEN 'Alto'
    ELSE 'Muito Alto'
  END AS categoria_danceability,

  -- Valence
  CASE
    WHEN valence__ <= 32 THEN 'Muito Triste'
    WHEN valence__ <= 51 THEN 'Triste'
    WHEN valence__ <= 70 THEN 'Feliz'
    ELSE 'Muito Feliz'
  END AS categoria_valence,

  -- Energy
  CASE
    WHEN energy__ <= 53 THEN 'Baixa'
    WHEN energy__ <= 66 THEN 'Média'
    WHEN energy__ <= 77 THEN 'Alta'
    ELSE 'Muito Alta'
  END AS categoria_energy,

  -- Acousticness
  CASE
    WHEN acousticness__ <= 6 THEN 'Pouco Acústica'
    WHEN acousticness__ <= 18 THEN 'Moderadamente Acústica'
    WHEN acousticness__ <= 43 THEN 'Acústica'
    ELSE 'Muito Acústica'
  END AS categoria_acousticness,

  -- Instrumentalness
  CASE
    WHEN instrumentalness__ = 0 THEN 'Baixa'
    WHEN instrumentalness__ <= 50 THEN 'Média'
    ELSE 'Alta'
  END AS categoria_instrumentalness,

  -- Liveness
  CASE
    WHEN liveness__ <= 9 THEN 'Pouca Presença ao Vivo'
    WHEN liveness__ <= 12 THEN 'Média Presença ao Vivo'
    WHEN liveness__ <= 23 THEN 'Alta Presença ao Vivo'
    ELSE 'Muito Alta Presença ao Vivo'
  END AS categoria_liveness,

  -- Speechiness
  CASE
    WHEN speechiness__ <= 4 THEN 'Pouco Falada'
    WHEN speechiness__ <= 6 THEN 'Moderadamente Falada'
    WHEN speechiness__ <= 11 THEN 'Bastante Falada'
    ELSE 'Muito Falada'
  END AS categoria_speechiness

FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`;