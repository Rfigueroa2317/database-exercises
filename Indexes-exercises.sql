USE employees_db;

CREATE TABLE employees_db (
    id INT NOT NULL AUTO_INCREMENT,
    author VARCHAR(50) NOT NULL,
    content VARCHAR(240) NOT NULL,
    PRIMARY KEY (id)
)