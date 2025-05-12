SELECT
  APPROX_QUANTILES(danceability__, 4) AS quartis
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`;
---
SELECT
  APPROX_QUANTILES(valence__, 4) AS quartis
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`;
---
SELECT
  APPROX_QUANTILES(energy__, 4) AS quartis
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`;
---
SELECT
  APPROX_QUANTILES(acousticness__, 4) AS quartis
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`;
---
SELECT
  APPROX_QUANTILES(instrumentalness__, 4) AS quartis
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`
WHERE instrumentalness__ IS NOT NULL;
---
SELECT
  APPROX_QUANTILES(liveness__, 4) AS quartis
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`;
---
SELECT
  APPROX_QUANTILES(speechiness__, 4) AS quartis
FROM
  `projeto-2-laboratoria-456917.dados_consolidados.tbl_final_tracks`;  


