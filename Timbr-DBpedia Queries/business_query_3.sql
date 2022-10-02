-- ------------------------------------------------------------
-- What are all the companies that their parent company is owned by an organisation containing the word 'Warner'?
-- ------------------------------------------------------------
SELECT entity_label AS `Company Name`,
`owningcompany.entity_label` AS `Parent Company`,
`owningcompany.owner.entity_label` AS `Owner of Parent Company`,
entity_type AS `Company Category`,
`country.entity_label` AS `Company Country` 
FROM `dtimbr`.`organisation`
WHERE `owningcompany.owner.entity_label` LIKE ‘%Warner%’
-- ------------------------------------------------------------
