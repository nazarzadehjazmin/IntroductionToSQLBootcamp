#######################################################
#######################################################
############    COPYRIGHT - DATA SOCIETY   ############
#######################################################
#######################################################

## INTRODUCTION TO SQL PART4 EXERCISE ANSWERS ##

## NOTE: To run individual pieces of code, select the line of code and
##       press ctrl + enter for PCs or command + enter for Macs


#### Exercise 1 ####
# =================================================-

# ----- Question 1 -----
-- Use the employees schema. Find all the employee first names with hire date 1985-08-31 or 1985-09-01.
-- Write the query as a nested non-correlated subquery.

-- Answer:


# -------------------------------------------------------------+
# ----- Question 2 -----
-- Find all employee numbers whose salaries are greater than
-- the employee number = 10001
-- Write the query as a nested non-correlated subquery.

-- Answer:


# -------------------------------------------------------------+
# ----- Question 3 -----
-- Find the details of employees from dept_emp table ,
-- where the employee has worked in more than 1 department
-- Write the query as a nested correlated subquery.

-- Answer:


# -----------------------------------------------------------+
# ----- Question 4 -----
-- Find the number of employees in each department.
-- Use nested queries approach to write the query.
-- Use the dept_emp table to find the count of employees.
-- Use the departments table to find the name of the department.

-- Answer:



#### Exercise 2 ####
# =================================================-

# ----- Question 1 -----
-- Create a view called `title_info` with the following columns:
-- titles of employees that are working
-- number of employees under those titles (use the employee table)
-- mean salary of employee under each title
-- Display the view.

-- Answer:


# -----------------------------------------------------------+
# ----- Question 2 -----
-- Update the following information in the view:
-- Update the title "Engineer" as "Junior Engineer".
-- Were you able to make the update?
-- Why and why not?

-- Answer:


# -----------------------------------------------------------+
# ----- Question 3 -----
-- Drop the view.

-- Answer:


# -----------------------------------------------------------+
# ----- Question 4 -----
-- Create dept_name as the index to the departments table.
-- Show the index.
-- Now delete the index.

-- Answer:


# -----------------------------------------------------------+
# ----- Question 5 -----
-- We have three users updating the database at the same time.
-- Set the autocommit = 0.
-- We want to add two new rows to the departments table.
-- Start a transaction.
-- Make sure to set savepoints whenever required.
-- Add two rows into project - (dept_no, dept_name)
	-- ("d010", "IT")
	-- ("d011", "Accounting")
-- In the middle of the transaction, we realized that the second row we are trying to add is false data.
-- Rollback to the first row insertion point.
-- Commit the transaction.
-- Check the project table to make sure only one row is added. 

-- Answer:


#### Exercise 3 ####
# =================================================-

# ----- Question 1 -----
-- View all databases.
-- View all tables of the employees database.
-- View all columns of all the tables of the employees database.

-- Answer:


# -----------------------------------------------------------+
# ----- Question 2 -----
-- Create a stored procedure to view emp_no, first_name, last_name, gender, hire_date of employee where of dept_no = d001.
-- Name it as "Show_employee_details"
-- Call the stored procedure. 

-- Answer:

