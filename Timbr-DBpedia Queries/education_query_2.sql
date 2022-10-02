-- ------------------------------------------------------------
-- What are the 100 oldest battles of the United Kingdom?
-- ------------------------------------------------------------
SELECT entity_id AS `Event_Link`,
entity_label AS `DBpedia global id`,
`country.entity_label` AS `Country`,
`date` AS `Battle Date`
FROM `dtimbr`.`militaryconflict`
WHERE `country.entity_label` = ‘United Kingdom’
AND `date` IS NOT NULL
ORDER BY `date` LIMIT 100
-- ------------------------------------------------------------
