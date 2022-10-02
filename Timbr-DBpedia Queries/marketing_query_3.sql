-- ------------------------------------------------------------
-- What are the most common words (more than 4 letters) used in company mottos?
-- ------------------------------------------------------------
SELECT lower(word) AS `word`, 
count(1) AS `num` FROM ( SELECT explode(split(motto, ‘ ‘)) AS `word` 
FROM `timbr`.`organisation` 
WHERE motto IS NOT NULL ) 
WHERE `length`(word) > 4 
GROUP BY lower(word) 
ORDER BY num DESC LIMIT 50
-- ------------------------------------------------------------
