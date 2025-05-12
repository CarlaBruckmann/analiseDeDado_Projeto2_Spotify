-- Duplicatas por track_id
SELECT track_id, COUNT(*) AS quantidade
FROM `projeto-2-laboratoria-456917.database_projeto_2.track_in_spotify`
GROUP BY track_id
HAVING COUNT(*) > 1;

-- Duplicatas por track_name + artist_s__name
SELECT track_name, artist_s__name, COUNT(*) AS quantidade
FROM `projeto-2-laboratoria-456917.database_projeto_2.track_in_spotify`
GROUP BY track_name, artist_s__name
HAVING COUNT(*) > 1;

-- Visualizar registros duplicados completos
SELECT *
FROM `projeto-2-laboratoria-456917.database_projeto_2.track_in_spotify`
WHERE CONCAT(track_name, artist_s__name) IN (
  SELECT CONCAT(track_name, artist_s__name)
  FROM `projeto-2-laboratoria-456917.database_projeto_2.track_in_spotify`
  GROUP BY track_name, artist_s__name
  HAVING COUNT(*) > 1
)
ORDER BY track_name, artist_s__name;