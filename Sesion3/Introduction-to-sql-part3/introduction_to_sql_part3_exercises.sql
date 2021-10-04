#######################################################
#######################################################
############    COPYRIGHT - DATA SOCIETY   ############
#######################################################
#######################################################

## INTRODUCTION TO SQL PART3 EXERCISE ANSWERS ##

## NOTE: To run individual pieces of code, select the line of code and
##       press ctrl + enter for PCs or command + enter for Macs


#### Exercise 1 ####
# =================================================-


# --------Question 1 --------
-- Switch to the employees database.
-- Select title, first_name, and last_name by performing an inner join on both of the tables in the employees database.
-- Identify an appropriate joining attribute.

-- Answer:
USE employees;

SELECT t.title, e.first_name, e.last_name         
FROM titles AS t 
INNER JOIN employees AS e ON t.emp_no = e.emp_no;

# --------------------------------------------------+
# --------Question 2 --------
-- Select dept_no from dept_emp, first_name, and last_name by performing a left join on both the tables.
-- Identify an appropriate joining attribute.
-- How many rows have null values?

-- Answer:

SELECT d.dept_no, e.first_name, e.last_name
FROM dept_emp AS d
LEFT JOIN employees AS e ON d.emp_no = e.emp_no 
WHERE dept_no is NULL;


# --------------------------------------------------+
# --------Question 3 --------
-- Select dept_no from dept_emp, first_name, and last_name by performing a right join on both the tables.
-- Identify an appropriate joining attribute.
-- How many rows have null values?

-- Answer:
SELECT d.dept_no, e.first_name, e.last_name
FROM dept_emp AS d
RIGHT JOIN employees AS e ON d.emp_no = e.emp_no
WHERE dept_no is NULL;

# --------------------------------------------------+
# --------Question 4 --------
-- Join three tables - departments, employees, and and dept_emp and display the employee name and dept_name
-- Join on the dept_no and emp_no. 

-- Answer:
SELECT e.first_name, d.dept_name
FROM departments AS d, employees AS e, dept_emp AS de
WHERE d.dept_no = de.dept_no AND e.emp_no = de.emp_no;
-- A y C, B y C


# --------------------------------------------------+
# --------Question 5 --------
-- Find all the pairs of employees working in the same department, along with their department name.
-- Display as employee_1, employee_2, and dept_name.
-- Make sure that the same employee's name does not get displayed in both the employee_1 and employee_2 columns.

-- Answer:
SELECT  e1.emp_no AS employee_one, e2.emp_no AS employee_two, d.dept_no
FROM dept_emp AS e1, dept_emp AS e2, departments AS d
WHERE e1.dept_no = e2.dept_no AND e1.dept_no = d.dept_no AND e1.emp_no != e2.emp_no;

-- trabaje con "3" tablas --> A y C, B y C


# --------Question 6 --------
-- Select dept_id from the dept_emp table and departments table using UNION.
-- What is the number of rows returned?

-- Answer:
SELECT de.dept_no FROM dept_emp AS de
UNION
SELECT d.dept_no FROM departments AS d;



#### Exercise 2 ####
# =================================================-



# --------Question 1 --------
-- Switch back to the employees schema
-- Find all employees whose first_name ends with 'a'.
-- Find all departments that have 'A' anywhere in the department name.

-- Answer:
USE employees;
SELECT * FROM employees WHERE first_name LIKE '%a';
SELECT * FROM departments WHERE dept_name LIKE '%A%';


# ---------------------------------------------------------+
# ---- Question 2 ----

-- Find the number of characters in the employees' first names. Name the column length_first_name

-- Answer:
SELECT first_name, LENGTH(first_name) AS 
length_firstname FROM employees;

# ---------------------------------------------------------+
# ---- Question 3 ----
-- Find the modulus of 10 of the salary of an employee.

-- Answer:
SELECT MOD(salary, 10) AS salary_modulus, salary FROM salaries;

# ---------------------------------------------------------+
# ---- Question 4 ----
-- What will be the time exactly 76 hours, 39 minutes, and 10 seconds from now?

-- Answer:
SELECT CURRENT_TIMESTAMP() 
AS time_now, 
ADDTIME(CURRENT_TIMESTAMP(), "76:39:10") 
AS new_time;

# ---------------------------------------------------------+
# ---- Question 5 ----
-- What is the number of days between 9th September 2017 and 24th April 2019?

-- Answer:
SELECT DATEDIFF("2019-04-24", "2017-09-09") 
AS date_difference;

# ---------------------------------------------------------+
# ---- Question 6 ----
-- What is the salary of the highest paid employee in our employee database?

-- Answer:
SELECT MAX(salary) 
AS highest_paid  FROM salaries;

# ---------------------------------------------------------+
# ---- Question 7 ----
-- Count the number of employees in each department.
-- Count using the dept_emp table.
-- Now slightly modify the query and find the subset of result,
-- where the department has more than 1000 employees.

-- Answer:

# ---------------------------------------------------------+
# ---- Question 8 ----
-- What is the max salary of each employee in each department?
-- Arrange in ascending order.

-- Answer:

# ---------------------------------------------------------+
# ---- Question 9 ----
-- What is the total salary cost incurred in each department? Name the column as 'salary_department'
-- Display total salary, dept_no, and dept_name. Order by salary_department in ascending order
-- Which department has the lowest total salary?

-- Answer:



