SELECT first_name, last_name, salary, department_id FROM employees WHERE (salary < 1000 or salary > 15000);
SELECT first_name, last_name, hire_date FROM `employees` WHERE YEAR(hire_date) = 1987;
SELECT first_name FROM `employees` WHERE first_name like '%b%' and first_name like '%c%';
SELECT last_name, job_id, salary FROM `employees` WHERE job_id = 'IT_PROG' or job_id = 'SH_CLERK' AND (salary != 4500 and salary != 10000 and salary != 15000);
SELECT * FROM `employees` WHERE (last_name = 'BLAKE' or last_name = 'SCOTT' or last_name = 'KING' or last_name = 'FORD');