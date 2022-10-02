-- ------------------------------------------------------------
-- Who are all the soccer managers who were also soccer players?
-- ------------------------------------------------------------
SELECT `birthdate`,
`entity_id` AS `DBpedia global id`, 
`entity_label` AS `Full_Name`
FROM `timbr`.`person` 
WHERE `entity_type` LIKE ‘%soccermanager%’
AND `entity_type` LIKE ‘%soccerplayer%’ 
ORDER BY `birthdate`
-- ------------------------------------------------------------
