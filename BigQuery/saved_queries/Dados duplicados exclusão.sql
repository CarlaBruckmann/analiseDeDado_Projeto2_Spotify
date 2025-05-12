--No dansbox, não é possivel DELETE, então seleciona todos os itens, exceto o id que deseja excluir
SELECT *
FROM `projeto-2-laboratoria-456917.database_projeto_2.track_in_spotify`
WHERE track_id != "7173596";
