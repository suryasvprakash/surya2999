SELECT NOW();

SELECT NOW(), USER(), VERSION();

SELECT NOW();SELECT USER();SELECT VERSION();
 
DROP database my_guvi_db;

CREATE DATABASE my_guvi_db;

SELECT DATABASE();

USE my_guvi_db;

SELECT DATABASE();

CREATE TABLE myfriends
(
    last_name   VARCHAR(15) NOT NULL,
    first_name  VARCHAR(15) NOT NULL,
    suffix      VARCHAR(5) NULL,
    sex         VARCHAR(1) NULL,
    city        VARCHAR(20) NOT NULL,
    state       VARCHAR(2) NOT NULL,
    age     int
);

DESCRIBE myfriends;

DESCRIBE myfriends;
DESC myfriends;
EXPLAIN myfriends;
SHOW COLUMNS FROM myfriends;
SHOW FIELDS FROM myfriends;

SHOW TABLES;
SHOW DATABASES;

SELECT * from myfriends;

DESCRIBE myfriends state;
INSERT INTO myfriends VALUES('mouse','mickey','Mr',NULL,'Chennai','TN',10);

INSERT INTO myfriends VALUES('Storm','Wonder',NULL,'F','Hollywood','LA',10);

SELECT * from myfriends;

INSERT INTO myfriends VALUES('motu','super','Mr','M','Mumbai','MH',20);
INSERT INTO myfriends VALUES('Bali','Bahu','Amer','M','MahilMadi','MM',25);

SELECT * from myfriends where state='MM';

SELECT first_name,last_name from myfriends;

SELECT first_name from myfriends where state='MM';

SELECT first_name from myfriends where age <= '20';
