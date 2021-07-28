USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (id int UNSIGNED NOT NULL AUTO_INCREMENT,
                     artist VARCHAR (50) NOT NULL,
                     name VARCHAR (50) NOT NULL,
                     sales FLOAT,
                     genre VARCHAR (50),
                     release_date DATE NOT NULL,
#                      discography VARCHAR(100) NOT NULL,
                     PRIMARY KEY (id));


SELECT artist, name FROM albums;