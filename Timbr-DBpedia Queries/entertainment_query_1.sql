-- ------------------------------------------------------------
-- Who are the artists with most popular songs?
-- ------------------------------------------------------------
SELECT `artist.entity_label` AS `Artist_Name`, 
COUNT(entity_label) AS `Total_Songs` 
FROM `dtimbr`.`song` 
WHERE `entity_label` IS NOT NULL
AND `artist.entity_label` IS NOT NULL 
GROUP BY `Artist_Name` 
ORDER BY `Total_Songs` DESC
-- ------------------------------------------------------------
