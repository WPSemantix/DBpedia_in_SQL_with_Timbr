-- ------------------------------------------------------------
-- What is the total number of hospitals by country?
-- ------------------------------------------------------------
SELECT max(`country.entity_label`) AS `country`,
COUNT(entity_id) AS `total_hospitals` 
FROM `dtimbr`.`hospital` 
WHERE `country.entity_id` IS NOT NULL 
GROUP BY `country.entity_id` 
ORDER BY COUNT(entity_id) DESC
-- ------------------------------------------------------------
