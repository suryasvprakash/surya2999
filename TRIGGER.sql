SHOW TRIGGERS;
 
  drop table quickinfo;
 
  CREATE TABLE quickinfo(
    first_name  VARCHAR(15) NOT NULL,
    city        VARCHAR(20) NOT NULL,
    username    VARCHAR(40) NOT NULL,
    modified_time TIMESTAMP
  );
 
  truncate table myfriends;
 
  drop trigger ins_trigger;
 
  CREATE TRIGGER ins_trigger BEFORE INSERT ON myfriends FOR EACH ROW insert into quickinfo values(NEW.first_name,NEW.city,USER(),NOW());
 
  select * from myfriends;
  select * from quickinfo;
 
  INSERT INTO myfriends (last_name,first_name,suffix,sex,city,state,age) VALUES('Jr','IronMan','Mr.','M','Hollywood','LA',50);
 
  INSERT INTO myfriends(last_name,first_name,suffix,sex,city,state,age) VALUES('motu','super','Mr','M','Mumbai','MH',20);


  INSERT INTO myfriends(last_name,first_name,suffix,sex,city,state,age) VALUES('Bali','Bahu','Amer','M','MahilMadi','MM',25);

  INSERT INTO myfriends(last_name,first_name,suffix,sex,city,state,age) VALUES('dummy','dummy','dummy','D','DD','MM',25);

 
  select * from myfriends;
  select * from quickinfo;
 
  drop trigger updt_trigger;
 
  CREATE TRIGGER updt_trigger BEFORE UPDATE ON myfriends FOR EACH ROW insert into quickinfo values(NEW.first_name,NEW.city,USER(),NOW());
 
  update myfriends set first_name = 'superstar';
  drop trigger del_trigger;
 
  CREATE TRIGGER del_trigger BEFORE DELETE ON myfriends FOR EACH ROW DELETE FROM quickinfo where first_name = OLD.first_name;
 
  select * from quickinfo;
 
  select * from myfriends;
 
  DELETE FROM myfriends where first_name = 'superstar' and state = 'LA';
 
  select * from myfriends;

  select * from quickinfo;
