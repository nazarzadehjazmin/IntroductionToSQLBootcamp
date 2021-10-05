#######################################################
#######################################################
############    COPYRIGHT - DATA SOCIETY   ############
#######################################################
#######################################################

## INTRODUCTION TO SQL PART2 EXERCISE ANSWERS ##

## NOTE: To run individual pieces of code, select the line of code and
##       press ctrl + enter for PCs or command + enter for Macs


#### Exercise 1 ####
# =================================================-

# -------- Question 1 --------

-- Use "company" database.

CREATE DATABASE company_sch;
USE company_sch;

-- Create two tables in the "company" database.
-- Name the tables "Employee" and "Department"
-- 1. "Employee" should contain 3 columns:
-- 	a. employee_id of type varchar(10)
-- 	b. employee_name of type varchar(30),
-- 	c. employee_mail of type varchar(30)
-- 2. "Department" should contain 3 columns:
--  a. dept_id int(3)
-- 	b. dept_name varchar(20) 
-- 	c. dept_phone varchar(15)


-- Use dept_id as the foreign key to the employee table. 
-- Name employee_id and dept_id as the primary keys in their respective tables.
-- NOTE: Create the parent table first and then the child table, otherwise you will get an error!
-- Inspect the table structures.

-- Answer:

-- 1 dept /lot of employees -> fk in employee table 
-- parent table = department
-- child table = employee

CREATE TABLE `company_sch`.`department` (
  `dept_id` INT(3) NOT NULL,
  `dept_name` VARCHAR(20) NULL,
  `dept_phone` VARCHAR(15) NULL,
  PRIMARY KEY (`dept_id`));
  
CREATE TABLE `company_sch`.`employee` (
  `employee_id` VARCHAR(10) NOT NULL,
  `employee_name` VARCHAR(30) NULL,
  `employee_mail` VARCHAR(30) NULL,
  `dept_id` INT(3) NULL,
  PRIMARY KEY (`employee_id`),
  INDEX `dept_id` (`dept_id` ASC) VISIBLE,
  CONSTRAINT `dept_id`
    FOREIGN KEY (`dept_id`)
    REFERENCES `company_sch`.`department` (`dept_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);


# ------------------------------------------------+

# -------- Question 2 --------
-- Insert two rows into the Department table as follows: (dept_id, dept_name, dept_phone)
-- (101, "SAP", 3335641023)
-- (103, "BA", 2233456244)  
-- Display all the data in the Department table.

-- Answer:
INSERT INTO `company_sch`.`department`
(`dept_id`,
`dept_name`,
`dept_phone`)
VALUES
(101, "SAP", 3335641023),
(103, "BA", 2233456244);

SELECT * FROM company_sch.department;

# ------------------------------------------------+
# -------- Question 3 --------
-- Insert three rows in to the Employee table as follows: 
-- (employee_id, employee_name, employee_mail, dept_id)
-- ("SAP2343", "Andrew", "andrew@abc.com", 101)
-- ("BA5324", "Jennie", "jennie@abc.com", 103)
-- ("BA6765", "Rashmi", "rashmi@abc.com", 103)
-- Display all the data in the employee table.

-- Answer:
INSERT INTO `company_sch`.`employee`
(`employee_id`,
`employee_name`,
`employee_mail`,
`dept_id`)
VALUES
("SAP2343", "Andrew", "andrew@abc.com", 101),
("BA5324", "Jennie", "jennie@abc.com", 103),
("BA6765", "Rashmi", "rashmi@abc.com", 103);

SELECT * FROM company_sch.employee;

# ------------------------------------------------+
# -------- Question 4 --------
-- Insert a new row into the Employee table as follows:
-- (employee_id, employee_name, employee_mail, dept_id)
-- ("SAP2453", "Andrea", "andrea@abc.com", 104)
-- Insert a new row into the department table as follows: (dept_id, dept_name, dept_phone)
-- ("abc34", "MS&S", 3335900023)
-- Are you able to successfully run the query?
-- why or why not?

-- Answer:
INSERT INTO `company_sch`.`employee`
(`employee_id`,
`employee_name`,
`employee_mail`,
`dept_id`)
VALUES
("SAP2453", "Andrea", "andrea@abc.com", 104);
-- the dept_id doesn't exist

INSERT INTO `company_sch`.`department`
(`dept_id`,
`dept_name`,
`dept_phone`)
VALUES
("abc34", "MS&S", 3335900023);
-- dept_id is not varchar, it's int

# ------------------------------------------------+
# -------- Question 5 --------

-- Check the table before updating it.
-- Update the Department table by changing the value "SAP" to "SAP ERP".
-- Check the table after updating it.

-- Answer:

SELECT * FROM company_sch.department;

UPDATE `company_sch`.`department`
SET
`dept_name` = 'SAP ERP',
`dept_phone` = '3335641023'
WHERE `dept_id` = 101;
-- '101', 'SAP', '3335641023'

SELECT * FROM company_sch.department;

# ------------------------------------------------+
# -------- Question 6 --------
-- Show the columns in the Employee table.
-- Add a new column emp_phone int(10) into the Employee table.
-- Modify the column emp_phone by changing the datatype to varchar(15) from int.
-- Show the columns in the Employee table.
-- Delete the column emp_phone from the Employee table.
-- Show the columns in the Employee table to check the final result.

-- Answer:
SELECT * FROM company_sch.employee;

ALTER TABLE employee
ADD emp_phone INT(10);

ALTER TABLE employee
MODIFY emp_phone VARCHAR(15);

SELECT * FROM company_sch.employee;

ALTER TABLE employee
DROP COLUMN emp_phone;

SELECT * FROM company_sch.employee;

# ------------------------------------------------+
# -------- Question 7 --------
-- Delete BA's record from the Department table. NOTE: Remember to delete the corresponding child rows first in the Employee table.
-- Delete all the rows from the Employee table.
-- Drop all the tables from the company database.

-- Answer:

-- 	Child
DELETE FROM `company_sch`.`employee`
WHERE dept_id = 103;

-- Parent
DELETE FROM `company_sch`.`department`
WHERE dept_id = 103;

DROP TABLE employee;
DROP TABLE department;


#### Exercise 2 ####
# =================================================-

# --------Question 1 --------
-- Import data from the employees.sql script that's in the data folder.
-- if the employees.sql is throwing a `failed to import error` while loading, open the employees.sql in a text editor
-- on lines 102, 104, 106, 108, 110, and 112 give the full path of load_departments.dump, 
-- load_employees.dump, load_dept_emp.dump, load_titles.dump, load_salaries1.dump, show_elapsed.sql
-- for example: /Users/user-name/desktop/skillsoft-sql-2021/data/show_elapsed.sql in macs
-- C:/Users/user-name/desktop/skillsoft-sql-2021/data/show_elapsed.sql in windows
-- save the changes and try importing again
-- Switch to the employees database.
-- Inspect the schema of the tables in the employee database.

-- Answer:
USE employees;

SELECT * FROM employees.departments;
SELECT * FROM employees.dept_emp;
SELECT * FROM employees.employees;
SELECT * FROM employees.salaries;
SELECT * FROM employees.titles;

# --------------------------------------------------+
# --------Question 2 --------
-- Select distinct dept_name from departments table.
-- Alias the table as 'dep'.

-- Answer:
SELECT DISTINCT dep.dept_name -- distinct dept_name
FROM departments AS dep;  -- alias department as dep

# --------------------------------------------------+
# --------Question 3 --------
-- Select emp_no, first_name as 'Name' and all in uppercase from the Employee table.

-- Answer:
SELECT emp_no, UPPER(first_name) AS Name
FROM employees;
-- first_name as Name in upper case

# --------------------------------------------------+
# --------Question 4 --------
-- Display all the data of employees whose dept_no is d007.

-- Answer:
SELECT * FROM dept_emp 
WHERE dept_no = 'd007';
-- select the data where dept_no is d007

# --------------------------------------------------+
# --------Question 5 --------
-- Find the data of all the titles where the emp_no is in the set
-- 10001, 10005, 10007.

-- Answer:
SELECT * FROM titles					
WHERE emp_no IN (10001, 10005, 10007);
-- select data from titles table if emp_no contains 10001, 10005, 10007.

# --------------------------------------------------+
# --------Question 6 --------
-- Display all the data from salaries tables where the salary of the employee is between 60000 and 70000.
-- Answer:
SELECT * FROM salaries
WHERE salary BETWEEN 60000 AND 70000;
-- use between/and to specify the range 

# --------------------------------------------------+
# --------Question 7 --------
-- Order the salaries table in decreasing order of salary.
-- Retrieve the emp_no of the highest paid employee.

-- Answer:
SELECT * FROM salaries
ORDER BY salary DESC;
-- HIGHEST PAID EMPLOYEE = '10897', '136004', '2002-04-04', '9999-01-01'
