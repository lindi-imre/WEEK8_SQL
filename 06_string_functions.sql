SELECT employee_id, email_id
SELECT employee_id, email, SUBSTRING(email, 1, CHAR_LENGTH(email) - 2) AS email_trimmed FROM employees
SELECT first_name, LENGTH(first_name) AS letter_count from employees where first_name LIKE 'J%' or first_name LIKE 'A%' or first_name LIKE 'M%'
