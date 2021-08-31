USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no;
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no;



# SELECT * FROM employees WHERE last_name LIKE ('E%');
# SELECT * FROM employees WHERE last_name LIKE ('%q%');
# today's push


# SELECT * FROM employees WHERE first_name = ('Irena') OR ('Vidya') OR ('Maya');
# SELECT first_name, gender FROM employees WHERE gender = 'Male' AND first_name = ('Irena') OR ('Vidya') OR ('Maya');

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




