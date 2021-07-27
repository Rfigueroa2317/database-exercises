USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (id int UNSIGNED NOT NULL AUTO_INCREMENT,
                    artist VARCHAR (50) NOT NULL,
                    name VARCHAR (50) NOT NULL,
                    sales FLOAT,
                    genre VARCHAR (50),
                    PRIMARY KEY (id));

INSERT INTO albums (
    artist, name, sales, genre,release_date)
VALUES ('Meat Loaf','Bat Out of Hell',21.7,'Hard rock, glam rock, progressive rock','1977-01-01'),(
    'Eagles','Their Greatest Hits',41.2,'Country rock,soft rock,folk rock','1976-01-01'),(
           'Whitney Houston','The Bodyguard',32.4,'R&B, soul, pop, soundtrack','1992-01-01'
       );


DESCRIBE albums;

SELECT * FROM albums;