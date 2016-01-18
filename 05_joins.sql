"""Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments."""
SELECT location_id, street_address, city, state_province, country_id FROM locations NATURAL JOIN departments
"""Write a query to find the names (first_name, last name), department ID and name of all the employees."""
SELECT emp.first_name, emp.last_name, emp.department_id, dep.department_name from employees as emp INNER JOIN departments as dep on dep.department_id = emp.department_id
"""#Find the names (first_name, last_name), job, department number, and department name of the employees who work in London."""
SELECT emp.first_name, emp.last_name, emp.department_id, jobs.job_title, loc.city from employees as emp INNER JOIN jobs on emp.job_id = jobs.job_id inner join departments as dep on emp.department_id = dep.department_id inner join locations as loc on loc.location_id = dep.location_id where loc.city = 'London'
"""Write a query to get the department name and number of employees in the department."""
SELECT department_name, count(department_name) FROM departments natural join employees as emp group by emp.department_id

select first_name, last_name, hire_date from employees where hire_date > (SELECT (SELECT hire_date FROM employees where last_name = 'Jones'))