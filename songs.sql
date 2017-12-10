DROP SCHEMA IF EXISTS songs;
CREATE SCHEMA songs;
USE songs;

DROP TABLE IF EXISTS members;

CREATE TABLE members (
  user_id varchar(50) PRIMARY KEY,
  city int(30),
  age int(10),
  gender varchar(10),
  registration_method int(10),
  registration_time int(20),
  expiration_date int(20)
  );
  
LOAD DATA LOCAL INFILE 'c:/Users/Swigo/OneDrive/Documents/GitHub/DATA-607/members.csv/members.csv' 
INTO TABLE members 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
