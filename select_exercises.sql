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

# Before you continue on this exercise, make sure that you go back to
# 'album_seeder' so you can do it right and finish it. otherwise you won't
# be able to finish the rest of the homework ***
SELECT artist, name FROM albums;