CREATE DATABASE hw1;
USE hw1;

CREATE TABLE Actors(
    id INT NOT NULL AUTO_INCREMENT,
    actor VARCHAR(255) NOT NULL,
    ayear DATE, 
    PRIMARY KEY(id)
);

CREATE TABLE Directors(
    id INT NOT NULL AUTO_INCREMENT,
    director VARCHAR(255) NOT NULL,
    dyear DATE, 
    PRIMARY KEY(id)
);

CREATE TABLE Movies(
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    directorID INT NOT NULL,
    myear DATE NOT NULL,
    rating DOUBLE NOT NULL,
    FOREIGN KEY(directorID) REFERENCES Directors(id),
    PRIMARY KEY(id)
);

CREATE TABLE Acts(
    actorID INT NOT NULL,
    movieID INT NOT NULL,
    FOREIGN KEY(actorID) REFERENCES Actors(id),
    FOREIGN KEY(movieID) REFERENCES Movies(id),
    PRIMARY KEY(actorID , movieID)
);

-- output ->
-- mysql> show tables;
-- +---------------+
-- | Tables_in_hw1 |
-- +---------------+
-- | actors        |
-- | acts          |
-- | directors     |
-- | movies        |
-- +---------------+
-- 4 rows in set (0.00 sec)      