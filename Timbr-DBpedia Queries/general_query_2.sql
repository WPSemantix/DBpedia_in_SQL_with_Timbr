-- ------------------------------------------------------------
-- What are all the things (any concept with a date) that happened on the 1st of Jan. 2000?
-- ------------------------------------------------------------
SELECT entity_id AS `DBpedia global id`,
entity_type AS `Category`, 
entity_label AS `Label` 
FROM `etimbr`.`thing` 
WHERE `date` = ‘2000-01-01’
-- ------------------------------------------------------------
