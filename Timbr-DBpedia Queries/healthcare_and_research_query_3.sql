-- ------------------------------------------------------------
-- What are good solvents for chemical compounds that have a melting point > 200 and a solubility < 1000?
-- ------------------------------------------------------------
SELECT `entity_label` AS `Compound`, 
`meltingpoint` AS `Melting_Point`,
`weight` AS `Weight`,
`formula` AS `Formula`, 
`solubility` AS `Solubility`, 
`solventwithgoodsolubility.entity_label` AS `Good_Solvent`
FROM `dtimbr`.`chemicalcompound` 
WHERE `solventwithgoodsolubility.entity_label` IS NOT NULL 
AND solubility IS NOT NULL 
AND solubility < 1000 
AND meltingpoint > 200 
ORDER BY solubility
-- ------------------------------------------------------------
