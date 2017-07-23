CREATE TABLE students
(
    last_name   VARCHAR(15) NOT NULL,
    first_name  VARCHAR(15) NOT NULL,
    suffix      VARCHAR(5) NULL,
    sex         VARCHAR(1) NULL,
    city        VARCHAR(20) NOT NULL,
    state       VARCHAR(2) NOT NULL,
    age     int
);
INSERT INTO students VALUES('praksh','surya','Mr',NULL,'Chennai','TN',10);
INSERT INTO students VALUES('karthick','kamalesh','Mr',NULL,'Chennai','TN',20);
select count(*) from myfriends;
SELECT DISTINCT(FIRST_NAME) FROM myfriends;
