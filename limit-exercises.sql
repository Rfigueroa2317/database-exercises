-- DUE ON WEDNESDAY THE LATEST! --
USE employees;
SELECT * FROM employees;

# 2
SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC, last_name LIKE 'Z%' LIMIT 10;


# 3

SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5;

# 4
SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 OFFSET 45;

