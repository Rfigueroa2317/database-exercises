CREATE DATABASE IF NOT EXISTS movie_db;

USE movie_db;

DROP TABLE IF EXISTS movies;

CREATE TABLE movies(
    title VARCHAR(100) NOT NULL,
    rating
)