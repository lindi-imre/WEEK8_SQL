#BASIC SELECT Write a query to get unique department ID from employee table.
SELECT DISTINCT DEPARTMENT_ID FROM employees;
#Write a query to get all employee details from the employee table order by first name, descending.
SELECT * FROM employees ORDER BY first_name DESC;
#Write a query to get the total salaries payable to employees.
SELECT SUM(salary) AS TotalSalary FROM employees;
#Write a query to get the maximum and minimum salary from employees table.
SELECT MIN(salary) FROM employees;
#Write a query to get the maximum and minimum salary from employees table.
SELECT MAX(salary) FROM employees;
#Write a query to get the average salary and number of employees in the employees table.
SELECT AVG(salary) FROM employees;
#Write a query to get the number of employees working with the company.
SELECT COUNT(salary) FROM employees;
#Write a query to get the number of jobs available in the employees table.
SELECT COUNT(DISTINCT salary) AS availableJobs FROM employees;
#Write a query get all first name from employees table in upper case.
SELECT UPPER(first_name) FROM employees;
#Write a query to get the first 3 characters of first name from employees table.
SELECT SUBSTR(first_name, 1, 3) FROM employees
#Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table.
SELECT CONCAT(first_name, ' ', last_name) FROM employees
#Write a query to get first name from employees table after removing white spaces from both side.
SELECT LTRIM(RTRIM(first_name)) FROM employees
#Write a query to get the length of the employee names (first_name, last_name) from employees table.
SELECT LENGTH(CONCAT(first_name, last_name)) FROM employees
#Write a query to select first 10 records from a table.
SELECT * FROM employees LIMIT 10