-- cd "C:\Program Files\MySQL\MySQL Server 8.0\bin" 
-- mysql.exe -u root -p 


USE class1211;

CREATE OR REPLACE VIEW birth_of_living (ID, dataOfBirth) as
SELECT personId, birth 
FROM persons
WHERE death IS NULL;


SELECT * 
FROM birth_of_living 
WHERE dataOfBirth >= '2000-1-1';


CREATE OR REPLACE VIEW birth_of_living_v2 (ID, dataOfBirth, dataOfDeath) AS
SELECT personID, birth, death
FROM persons
WHERE death IS NULL;

SHOW FULL TABLES IN class1211 WHERE 
TABLE_TYPE LIKE 'VIEW';

CREATE OR REPLACE VIEW deadly_vacc_info AS
SELECT *
FROM persons LEFT JOIN vaccine USING (vaccineID)
WHERE persons.death IS NOT NULL;


SELECT country 
FROM deadly_vacc_info 
WHERE gender='female';

SELECT * FROM deadly_vacc_info WHERE country='CHINA';



SELECT * 
FROM persons;

SELECT * 
FROM vaccine;