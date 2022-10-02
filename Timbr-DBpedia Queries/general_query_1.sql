-- ------------------------------------------------------------
-- What types of persons and how many of each exist in the DBpedia ontology?
-- ------------------------------------------------------------
SELECT format_number(count(1), 0) AS `Number of People`, 
entity_type AS `Belong to Category (Concepts)` 
FROM `timbr`.`person` 
GROUP BY entity_type 
ORDER BY count(1) DESC
-- ------------------------------------------------------------
