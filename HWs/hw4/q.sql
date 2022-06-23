-- cd "C:\Program Files\MySQL\MySQL Server 8.0\bin" 
-- mysql.exe -u root -p 

CREATE TABLE vaccine (
vaccineID INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
country VARCHAR(255) NOT NULL,
quantity INT NOT NULL,
PRIMARY KEY (vaccineID)
);

INSERT INTO vaccine (name, country ,quantity) VALUES ("Sinopharm", "China" , 5920300);
INSERT INTO vaccine (name, country ,quantity) VALUES ("Pfizer", "Germany/US" , 4013);
INSERT INTO vaccine (name, country ,quantity) VALUES ("Oxford–AstraZeneca", "UK/Belgium" , 234021);
INSERT INTO vaccine (name, country ,quantity) VALUES ("Sputnik V", "RUSSIA" , 1032);
INSERT INTO vaccine (name, country ,quantity) VALUES ("COVIran Barekat", "Iran" , 120043);
  
SELECT *
FROM vaccine;


SELECT *
FROM persons;

ALTER TABLE persons
FOREIGN KEY (vaccineID)
REFERENCES vaccine(vaccineID);

ALTER TABLE persons
ADD COLUMN vaccineID INT UNSIGNED;

ALTER TABLE persons
ADD FOREIGN KEY (vaccineID) 
REFERENCES vaccine(vaccineID);

SELECT *
FROM persons;

UPDATE persons SET vaccineID = 5 WHERE personID = 4;

SELECT *
FROM persons LEFT JOIN vaccine ON persons.vaccineID=vaccine.vaccineID;

SELECT *
FROM persons RIGHT JOIN vaccine ON persons.vaccineID=vaccine.vaccineID;

SELECT *
FROM persons INNER JOIN vaccine ON persons.vaccineID=vaccine.vaccineID;

SELECT persons.first_name, persons.last_name, vaccine.country
FROM persons INNER JOIN vaccine ON persons.vaccineID=vaccine.vaccineID;

SELECT persons.first_name, persons.last_name, vaccine.name
FROM persons INNER JOIN vaccine ON persons.vaccineID=vaccine.vaccineID
WHERE persons.death IS NOT NULL;

SELECT vaccine.name, COUNT(persons.personID)
FROM persons RIGHT JOIN vaccine ON persons.vaccineID=vaccine.vaccineID
GROUP BY vaccine.name;