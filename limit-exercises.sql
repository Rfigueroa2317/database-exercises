-- DUE ON WEDNESDAY THE LATEST! --
USE employees;
SELECT * FROM employees;

# 2
SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC, last_name LIKE 'Z%' LIMIT 10;


# 3
SELECT salary FROM salaries WHERE emp_no LIMIT 5 OFFSET 3;

SELECT * FROM employees WHERE employees IN

