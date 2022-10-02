-- ------------------------------------------------------------
-- What types of work contain the word 'Batman' (including the release date, ISBN, or IMDB-ID if available)?
-- ------------------------------------------------------------
SELECT entity_id AS `Datasource Link`,
entity_label AS `Title`,
entity_type AS `Category`,
releasedate AS `Release Date`,
imdbid AS `IMDB-ID`,
isbn AS `ISBN` 
FROM `etimbr`.`work` 
WHERE entity_label LIKE ‘%Batman%’
-- ------------------------------------------------------------
