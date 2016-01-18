SELECT job_id, COUNT(job_id) AS count FROM employees GROUP BY job_id;
SELECT job_id, MIN(salary) FROM employees WHERE job_id LIKE '%MGR%' OR job_id LIKE '%MAN%';
SELECT job_id, count(salary) AS num_of_employees FROM employees GROUP BY job_id;
SELECT job_id, AVG(salary) AS avg_salary FROM employees where job_id != 'IT_PROG' GROUP BY job_id;
SELECT job_id, max_salary FROM jobs where max_salary >= 4000;
SELECT job_id, AVG(SALARY) FROM employees GROUP BY job_id HAVING COUNT(job_id) > 10;