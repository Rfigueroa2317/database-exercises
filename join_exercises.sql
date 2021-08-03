CREATE DATABASE IF NOT EXISTS join_test_db;

USE join_test_db;

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);
#2
INSERT INTO users (name, email, role_id)
VALUES ('jim bob', 'jimbob@example.com', null),
       ('clyde', 'clyde@example.com', 2),
       ('vegeta', 'vegeta@example.com', 2);

SELECT *
FROM users;

#3
SELECT users.name as user_name, roles.name as role_name
FROM users u
         JOIN roles r on u.role_id = r.id;
INSERT INTO users (name, email, role_id)
VALUES ('jim bob', 'jimbob@example.com', 4);

#4
SELECT r.name, COUNT(r.name) as 'Role Count'
FROM users u
         JOIN roles r on u.role_id = r.id
GROUP BY r.name;


SELECT *
FROM employees e
         JOIN dept_manager dm on e.emp_no = dm.em_no
         JOIN departments d on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;


SELECT title
FROM titles t
         JOIN dept_emp de on t.emp_no = de.emp_no
WHERE t.to_date = '9999-01-01'
  AND de.dept_no = (SELECT dept_no FROM departments WHERE dept_name = 'Customer Service')
GROUP BY t.title;


SELECT d.dept_name as                         'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) 'Department Manager',
       s.salary    as                         Salary
FROM departments d
         JOIN dept_manager dm on d.dept_no = dm.dept_no
         JOIN empoyees e on dm.emp_no = e.emp_no
         JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'
  AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;


SELECT e.first_name as first_name,
       e.last_name as last_name,
       (SELECT first_name, last_name FROM employees manager_emp WHERE dm.emp_no = manager_emp.emp_no)
FROM employees e
         JOIN dept_emp de on e.emp_no = de.emp_no
         JOIN dept_manager dm on e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01'
AND de.to_date = '9999-01-01'