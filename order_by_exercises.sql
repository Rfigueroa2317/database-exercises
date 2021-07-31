USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY first_name;
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY first_name, last_name;
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY last_name,first_name;
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY last_name DESC, first_name DESC;

SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no;
SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no;





# SELECT * FROM employees WHERE last_name LIKE ('E%');
# SELECT * FROM employees WHERE last_name LIKE ('%q%');
# today's push


# SELECT * FROM employees WHERE first_name = ('Irena') OR ('Vidya') OR ('Maya');
# SELECT first_name, gender FROM employees WHERE gender = 'Male' AND first_name = ('Irena') OR ('Vidya') OR ('Maya');
SELECT * FROM employees WHERE last_name LIKE ('E%') OR ('%E');
SELECT * FROM employees WHERE last_name LIKE ('E%') AND ('%E');
SELECT * FROM employees WHERE last_name LIKE ('q%');



