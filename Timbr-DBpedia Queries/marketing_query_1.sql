-- ------------------------------------------------------------
-- What are the things having a slogan which contain the word 'Best'?
-- ------------------------------------------------------------
SELECT entity_label AS `Label`,
entity_type AS `Category`,
slogan AS `Slogan`
FROM `etimbr`.`thing` 
WHERE slogan LIKE ‘%Best%’
-- ------------------------------------------------------------
