USE my_guvi_db;
drop table myfriends;

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

INSERT INTO myfriends VALUES('Storm','Wonder',NULL,'F','Hollywood','LA',10);

INSERT INTO myfriends VALUES('motu','super','Mr','M','Mumbai','MH',20);
INSERT INTO myfriends VALUES('Bali','Bahu','Amer','M','MahilMadi','MM',25);

INSERT INTO myfriends VALUES('dummy','dummy','dummy','D','DD','MM',25);

SELECT * from myfriends;

CREATE TABLE personalinfo
(
    first_name  VARCHAR(15) NOT NULL,
    height   VARCHAR(15) NOT NULL,
    weight  VARCHAR(15) NOT NULL,
    lang      VARCHAR(5) NULL,
    fans         int
);


insert into personalinfo values('mickey',3,20,'Tamil',70000);
insert into personalinfo values('Wonder',6,50,'Eng',50000);
insert into personalinfo values('super',4,40,'Hindi',20000);
insert into personalinfo values('Bahu',7,80,'Multi',10000);
insert into personalinfo values('junk',7,80,'junky',10000);

SELECT * from personalinfo;


select mf.first_name , pi.height , pi.weight , pi.lang , pi.fans from myfriends mf, personalinfo pi where mf.first_name = pi.first_name;


select mf.first_name , pi.height , pi.weight , pi.lang , pi.fans from myfriends mf left join personalinfo pi on mf.first_name = pi.first_name;
select mf.first_name , pi.height , pi.weight , pi.lang , pi.fans from myfriends mf right join personalinfo pi on mf.first_name = pi.first_name;
