USE employees;

#2
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY emp_no DESC;
SELECT emp_no, birth_date, CONCAT(first_name, ' ', last_name) AS 'first_name_last_name', gender, hire_date
FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY emp_no DESC;

#3
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25;

#4 & 5
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND YEAR(hire_date) BETWEEN 1990 AND 1999
ORDER BY birth_date, hire_date DESC;

#6
SELECT *, DATEDIFF(CURDATE(), hire_date) AS 'days_worked'
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND YEAR(hire_date) LIKE '199%'
ORDER BY birth_date, hire_date DESC;




