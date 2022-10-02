-- ------------------------------------------------------------
-- Who directed most of Adam Sandler's films?
-- ------------------------------------------------------------
SELECT `director.entity_label` AS `Director Name`,
count(1) AS `num`, 
collect_list(entity_label) AS `movies` 
FROM `dtimbr`.`film` 
WHERE `starring.actor.entity_label` = ‘Adam Sandler’ 
AND `director` IS NOT NULL 
GROUP BY `director.entity_label` 
ORDER BY `num` DESC
-- ------------------------------------------------------------
