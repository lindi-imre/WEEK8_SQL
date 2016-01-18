#Write a query to get the number of employees with the same job.
SELECT job_id, COUNT(job_id) AS count FROM employees GROUP BY job_id
#Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.
SELECT job_id, MIN(salary) FROM employees WHERE job_id LIKE '%MGR%' OR job_id LIKE '%MAN%'
#Write a query to get the department ID and the total salary payable in each department.
SELECT job_id, count(salary) AS num_of_employees FROM employees GROUP BY job_id
#Write a query to get the average salary for each job ID excluding programmer.
SELECT job_id, AVG(salary) AS avg_salary FROM employees where job_id != 'IT_PROG' GROUP BY job_id

SELECT job_id, max_salary FROM jobs where max_salary >= 4000
SELECT job_id, AVG(SALARY) FROM employees GROUP BY job_id HAVING COUNT(job_id) > 10