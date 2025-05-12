WITH total_partnered_tracks AS (
  SELECT
    artist_name_clean,
    track_name_clean,
    track_id
  FROM `projeto-2-laboratoria-456917.dados_consolidados.vw_final_tracks`
  WHERE REGEXP_CONTAINS(artist_name_clean, r',') -- identifica colaborações
)

-- Consulta final, usando a tabela temporária
SELECT *
FROM total_partnered_tracks;