-- USE university	-- define database to avoid referencing everytime

-- adding data
INSERT INTO `university`.`course` 	-- schema & table name
(`course_id`, `course_name`)	-- column/attributes name
VALUES (001, "Biochemistry"), (002, "Data Science"), (003, "Operating Systems");	-- values to the attributes
 
 -- new table
 CREATE TABLE `university`.`person` (
  `idperson` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `dni` VARCHAR(11) NOT NULL,
  PRIMARY KEY (`idperson`),
  UNIQUE INDEX `idperson_UNIQUE` (`idperson` ASC) VISIBLE);

-- seeing the table
SELECT `course`.`course_id`,
    `course`.`course_name`
FROM `university`.`coursecoursecourse_namecourse_idcoursecourse`;


INSERT INTO `university`.`person`
(`idperson`,
`name`,
`dni`)
VALUES
(1, "Sarah Morgan", "45234445"), (2,"Eric Kelly", "56678433");

-- updating values
UPDATE `university`.`person`
SET
`name` = "Laura",
`dni` = "45.678.888"
WHERE `idperson` = 1;

-- DESC person; 	 sorting the selected data in descending order

-- adding columns
ALTER TABLE person
ADD dateOfBirth DATE;

-- modifying the columns
ALTER TABLE person
MODIFY dateofBirth YEAR;

-- delete the new column
ALTER TABLE person
DROP COLUMN dateOfBirth;

-- adding columns with default values
-- change!!!!! for null
ALTER TABLE person
ADD dateofBirth INT NOT NULL
DEFAULT 1990;

-- updating the default values
UPDATE `university`.`person`
SET
`dateOfBirth` = 1989
WHERE `idperson` = 1;

UPDATE `university`.`person`
SET
`dateOfBirth` = 1999
WHERE `idperson` = 2;

-- adding more values
INSERT INTO `university`.`person`
(`idperson`,
`name`,
`dni`, 
`dateOfBirth`)
VALUES
(3,"Lisa Loretta", "56.567.234", 1999);


-- delete data
DELETE FROM `university`.`person`
WHERE dateOfBirth != 1999;

-- delete the entire data from the table
DELETE FROM course;

-- remove the table itself from the database, use DROP TABLE
DROP TABLE course;
-- always delete the child table with the foreign key first 
-- because if we delete referenced table first, it will throw an error

