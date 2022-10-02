-- ------------------------------------------------------------
-- What academic journals have the highest impact factor?
-- ------------------------------------------------------------
SELECT entity_label AS `Journal`,
`impactfactor` AS `Impact_Factor`,
`impactfactorasof` AS `Impact_Factor_Year`,
`publisher.entity_label` AS `Publisher`
FROM `dtimbr`.`academicjournal` 
WHERE `publisher.entity_label` IS NOT NULL
AND `impactfactor` IS NOT NULL
AND `impactfactorasof` IS NOT NULL 
ORDER BY `impactfactor` DESC
-- ------------------------------------------------------------
