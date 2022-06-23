-- cd "C:\Program Files\MySQL\MySQL Server 8.0\bin" 
-- mysql.exe -u root -p 

USE class1211;

SELECT first_name FROM persons;
SELECT DISTINCT first_name FROM persons;
SELECT first_name, last_name FROM persons;

SELECT first_name, last_name, birth
FROM persons
WHERE death IS NULL;

SELECT *
FROM persons
WHERE birth >= '2000-1-1';

SELECT *
FROM persons
ORDER BY birth;

SELECT *
FROM persons
ORDER BY birth DESC;

SELECT *
FROM persons
ORDER BY birth , last_name DESC;

SELECT first_name, last_name, birth
FROM persons
WHERE MONTH(birth) = 10;

SELECT first_name, last_name, CURDATE(), TIMESTAMPDIFF(YEAR , birth , CURDATE()) AS age
FROM persons;

SELECT personID, first_name, last_name, birth
FROM persons
WHERE MONTH(birth) = MONTH(DATE_ADD(CURDATE() , INTERVAL 1 MONTH));

SELECT
    COUNT(personID) AS alive_count,
    MIN(TIMESTAMPDIFF(YEAR , birth, CURDATE())) AS min_age,
    MAX(TIMESTAMPDIFF(YEAR , birth, CURDATE())) AS max_age,
    AVG(TIMESTAMPDIFF(YEAR , birth, CURDATE())) AS average_age
FROM persons
WHERE death IS NULL;