

--identifica valor não totalmente numéricos
SELECT DISTINCT streams , track_id, track_name
FROM `projeto-2-laboratoria-456917.dados_consolidados.vw1_track_in_spotify`
WHERE NOT REGEXP_CONTAINS(streams, r'^\d+$');