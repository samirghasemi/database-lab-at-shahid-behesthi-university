CREATE DATABASE class1211;
USE class1211;

CREATE TABLE Persons (
    personID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    last_name VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    birth DATE NOT NULL,
    death DATE,
    gender ENUM('female', 'male') NOT NULL,
    PRIMARY KEY (personID)
);

SELECT * FROM persons;

INSERT INTO Persons (last_name , first_name, birth ,death, gender) VALUES ("Alavi", "Akbar" , "1990-11-12" , null ,"male");
INSERT INTO Persons (last_name , first_name, birth ,death, gender) VALUES ("Makhdumi", "Maryam" , "1992-10-13" , null ,"female");
INSERT INTO Persons (last_name , first_name, birth ,death, gender) VALUES ("Akbari", "Maryam" , "1985-12-14" , "1999-05-03" ,"female");
INSERT INTO Persons (last_name , first_name, birth ,death, gender) VALUES ("Mostafavi", "Ahmad" , "1991-07-05" , null ,"male");
INSERT INTO Persons (last_name , first_name, birth ,death, gender) VALUES ("Alemi", "Mohammad Reza" , "1999-10-16" , null ,"male");
INSERT INTO Persons (last_name , first_name, birth ,death, gender) VALUES ("Tehrani", "Ali" , "1979-06-17" , "2007-07-02" ,"male");
INSERT INTO Persons (last_name , first_name, birth ,death, gender) VALUES ("Khalilzad", "Rojin" , "1980-04-18" , null ,"female");
INSERT INTO Persons (last_name , first_name, birth ,death, gender) VALUES ("Maroofi", "Saba" , "1993-08-19" , null ,"female");
INSERT INTO Persons (last_name , first_name, birth ,death, gender) VALUES ("Baradaran", "Nushin" , "2001-06-20" , null ,"female");
INSERT INTO Persons (last_name , first_name, birth ,death, gender) VALUES ("Kaabi", "Ali" , "1970-02-21" , "2000-11-12" ,"female");

LOAD DATA LOCAL INFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\sample.csv'
INTO TABLE persons
FIELDS TERMINATED BY '
,'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

UPDATE persons
SET first_name = "AliAli"
WHERE first_name = "Ali";

DELETE FROM persons
WHERE last_name = "Kaabi";

