-- ------------------------------------------------------------
-- CEO's of US companies that were born outside of the USA
-- ------------------------------------------------------------
SELECT entity_label AS `company_name`,
`country.entity_label` AS `company_country`, 
`ceo.entity_label` AS `ceo_name`, 
`ceo.birthPlace.entity_label` AS `birthplace`,
`ceo.birthPlace.country.entity_label` AS `ceo_birth_country`
FROM `dtimbr`.`company` 
WHERE `ceo.entity_label` IS NOT NULL 
AND `country.entity_label` = ‘United States of America’ 
AND `ceo.birthPlace.country.entity_label` != ‘United States of America’
-- ------------------------------------------------------------
