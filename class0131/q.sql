-- cd "C:\Program Files\MySQL\MySQL Server 8.0\bin" 
-- mysql.exe -u root -p 


USE class1211;

DROP PROCEDURE select_alive;
DROP PROCEDURE person_by_min_age;
DROP FUNCTION can_vote;
DROP FUNCTION get_age;

delimiter //
CREATE PROCEDURE select_alive ()
BEGIN
    SELECT *
    FROM persons
    WHERE death IS NULL;
END//
delimiter ;

CALL select_alive();


delimiter //
create procedure select_person_by_min_age(in min_age int)
begin
select *
from person
where timestampdiff(year,birth,curdate()) >= min_age;
end//
delimiter ;

-- delimiter //
-- CREATE PROCEDURE SELECT person_by_min_age (min_age INT)
-- BEGIN
--     SELECT *
--     FROM persons
--     WHERE TIMESTAMPDIFF(YEAR, birth, CURDATE()) ›= min_age;
-- END//
-- delimiter ;


delimiter //
CREATE FUNCTION can_vote (birth DATE)
RETURNS BOOL
DETERMINISTIC
BEGIN
    IF TIMESTAMPDIFF(YEAR, birth, CURDATE()) > 18 THEN
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
END//
delimiter ;
SELECT * FROM persons WHERE can_vote(birth);


delimiter //
CREATE FUNCTION get_age (birth DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN TIMESTAMPDIFF (YEAR, birth, CURDATE()) ;
END//
delimiter ;

SELECT get_age (birth) FROM persons;

SET @avg_age = (SELECT AVG(get_age(birth)) FROM persons);
SELECT * FROM persons WHERE get_age(birth) > @avg_age;



DROP PROCEDURE test;
delimiter //
CREATE PROCEDURE test()
BEGIN 
    DECLARE min_age INT ;
    SET min_age = (SELECT MIN(get_age(birth)) FROM persons );
    SELECT * 
    FROM PERSON 
    WHERE TIMESTAMPDIFF(YEAR, birth , CURDATE()) = min_age ;  
END // 
delimiter  ;