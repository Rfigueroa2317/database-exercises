USE codeup_test_db;
USE employees;

SELECT first_name, last_name FROM employees ORDER BY first_name ASC, last_name DESC;






# SELECT * FROM employees WHERE last_name LIKE ('E%');
# SELECT * FROM employees WHERE last_name LIKE ('%q%');


# SELECT * FROM employees WHERE first_name = ('Irena') OR ('Vidya') OR ('Maya');
# SELECT first_name, gender FROM employees WHERE gender = 'Male' AND first_name = ('Irena') OR ('Vidya') OR ('Maya');
SELECT * FROM employees WHERE last_name LIKE ('E%') OR ('%E');
SELECT * FROM employees WHERE last_name LIKE ('E%') AND ('%E');
SELECT * FROM employees WHERE last_name LIKE ('q%');



