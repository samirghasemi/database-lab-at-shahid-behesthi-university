CREATE TABLE personforindex (
personID INT UNSIGNED NOT NULL AUTO_INCREMENT,
last_name VARCHAR(255) NOT NULL,
first_name VARCHAR(255) NOT NULL,
birth DATE NOT NULL,
death DATE,
gender ENUM('female', 'male') NOT NULL,
vaccineID INT UNSIGNED,
FOREIGN KEY (vaccineID) REFERENCES vaccine(vaccineID),
PRIMARY KEY (personID),
INDEX (last_name, first_name)
);

CREATE INDEX idx_gndr ON persons (gender);
DROP INDEX idx_gndr ON persons;
CREATE INDEX idx_gndr ON persons (gender);
SHOW INDEXES FROM persons;

CREATE TABLE personforindex1 (
personID INT UNSIGNED NOT NULL AUTO_INCREMENT,
last_name VARCHAR(255) NOT NULL,
first_name VARCHAR(255) NOT NULL,
birth DATE NOT NULL,
death DATE,
gender ENUM('female', 'male') NOT NULL,
vaccineID INT UNSIGNED,
FOREIGN KEY (vaccineID) REFERENCES vaccine(vaccineID),
PRIMARY KEY (personID),
INDEX (last_name(4), first_name(4))
);

CREATE TABLE personforindex2 (
personID INT UNSIGNED NOT NULL AUTO_INCREMENT,
last_name VARCHAR(255) NOT NULL,
first_name VARCHAR(255) NOT NULL,
birth DATE NOT NULL,
death DATE,
gender ENUM('female', 'male') NOT NULL,
vaccineID INT UNSIGNED,
FOREIGN KEY (vaccineID) REFERENCES vaccine(vaccineID),
PRIMARY KEY (personID),
INDEX (last_name(4), first_name(4))
);

CREATE TABLE personforindex3 (
personID INT UNSIGNED NOT NULL AUTO_INCREMENT,
last_name VARCHAR(255) NOT NULL,
first_name VARCHAR(255) NOT NULL,
birth DATE NOT NULL,
death DATE,
gender ENUM('female', 'male') NOT NULL,
vaccineID INT UNSIGNED,
mobile VARCHAR(15) NULL,
FOREIGN KEY (vaccineID) REFERENCES vaccine(vaccineID),
PRIMARY KEY (personID),
INDEX (last_name(4), first_name(4)),
UNIQUE INDEX uq_mobile (mobile)
);