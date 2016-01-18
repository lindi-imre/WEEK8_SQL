SELECT DISTINCT DEPARTMENT_ID FROM employees;
SELECT * FROM employees ORDER BY first_name DESC;
SELECT SUM(salary) AS TotalSalary FROM employees;
SELECT MIN(salary) FROM employees;
SELECT MAX(salary) FROM employees;
SELECT AVG(salary) FROM employees;
SELECT COUNT(salary) FROM employees;
SELECT COUNT(DISTINCT salary) AS availableJobs FROM employees;
SELECT UPPER(first_name) FROM employees;
SELECT SUBSTR(first_name, 1, 3) FROM employees;
SELECT CONCAT(first_name, ' ', last_name) FROM employees;
SELECT LTRIM(RTRIM(first_name)) FROM employees;
SELECT LENGTH(CONCAT(first_name, last_name)) FROM employees;
SELECT * FROM employees LIMIT 10;