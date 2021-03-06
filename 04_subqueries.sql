SELECT first_name, last_name, salary FROM employees WHERE salary > (SELECT salary FROM employees WHERE last_name = 'Bull');
SELECT first_name, last_name, job_id FROM employees WHERE JOB_ID = 'IT_PROG';
SELECT first_name, last_name, job_id FROM employees WHERE JOB_ID IN (SELECT JOB_ID FROM employees WHERE JOB_ID LIKE '%MGR%' OR JOB_ID LIKE '%MAN%');
SELECT first_name, last_name, salary FROM employees WHERE salary = (SELECT MIN(salary) FROM employees);
SELECT employee_id, first_name, last_name, department_id FROM (SELECT * FROM employees ORDER BY employee_id DESC LIMIT 10) sub ORDER BY employee_id ASC;
SELECT first_name, last_name FROM (SELECT * FROM employees ORDER BY employee_id DESC LIMIT 10) sub ORDER BY employee_id ASC;



