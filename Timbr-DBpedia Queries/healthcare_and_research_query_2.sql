-- ------------------------------------------------------------
-- What diseases result from complications related to heart issues?
-- ------------------------------------------------------------
SELECT `entity_label` AS `Disease`, 
`complications` AS `Complications` 
FROM `dtimbr`.`disease` 
WHERE entity_label IS NOT NULL 
AND complications LIKE ‘%heart%’
-- ------------------------------------------------------------
