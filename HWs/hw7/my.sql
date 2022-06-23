SELECT user FROM mysql.user;

create user 'abbas'@'localhost';

alter user 'abbas'@'localhost' identified by '12345678';

drop user 'abbas'@'localhost';

-- SYSTEM MYSQL –u abbas –p 12345678;

SELECT CURRENT_USER();

grant all
    on class1211.persons
    to 'abbas'@'localhost' with grant option;

revoke all
    ON class1211.persons
    FROM 'abbas'@'localhost';

SHOW GRANTS
    FOR 'abbas'@'localhost';

SELECT *
FROM INFORMATION_SCHEMA.TABLE_PRIVILEGES
WHERE TABLE_SCHEMA='class1211' AND TABLE_NAME = 'persons';

SELECT *
FROM INFORMATION_SCHEMA.COLUMN_PRIVILEGES
WHERE TABLE_SCHEMA='class1211' AND TABLE_NAME = 'persons';