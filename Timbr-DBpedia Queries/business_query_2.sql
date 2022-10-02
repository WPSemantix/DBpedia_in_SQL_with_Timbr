-- ------------------------------------------------------------
-- What companies in Europe or Asia have the highest operating income per employee?
-- ------------------------------------------------------------
SELECT entity_label AS `Company Name`, 
format_number(operatingincome, 0) AS `Operating Income`,
format_number(numberofemployees, 0) AS `Number of Employees`,
format_number(operatingincome/numberofemployees, 0) AS `Operating Income per Employee`,
`country.entity_label` AS `Country`,
`country.continent.entity_label` AS `Continent` 
FROM `dtimbr`.`company` 
WHERE operatingincome > 150000000 
AND `country.continent.entity_label` IN (‘Europe’, ‘Asia’)
ORDER BY operatingincome DESC
-- ------------------------------------------------------------
