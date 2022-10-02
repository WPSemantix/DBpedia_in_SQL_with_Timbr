-- ------------------------------------------------------------
-- What entities are owners of banks in Europe?
-- ------------------------------------------------------------
SELECT entity_label AS `Bank`,
`owner.entity_label` AS `Owner`,
`country.entity_label` AS `Country`,
`country.continent.entity_label` AS `Continent`
FROM `dtimbr`.`bank`
WHERE `country.continent.entity_label` = ‘Europe’ 
AND `owner.entity_label` IS NOT NULL
-- ------------------------------------------------------------
