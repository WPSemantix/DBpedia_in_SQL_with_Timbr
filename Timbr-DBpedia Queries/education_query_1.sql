-- ------------------------------------------------------------
-- Which universities have the highest number of faculty members?
-- ------------------------------------------------------------
SELECT entity_label AS `University`, 
`facultysize` AS `Faculty Size`, 
`numberofstudents` AS `Number of Students`, 
`numberofundergraduatestudents` AS `Number of Undergraduate Students`
FROM `timbr`.`university` 
ORDER BY facultysize DESC
-- ------------------------------------------------------------
