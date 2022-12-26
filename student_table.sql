create database mysqlpractice;
use mysqlpractice;
CREATE TABLE STUDENT(rollnum varchar(30)  primary key,studentname varchar(30),dob date,branch varchar(30),year varchar(30));
ALTER TABLE STUDENT  MODIFY COLUMN year int;
ALTER TABLE STUDENT RENAME COLUMN rollnum  TO studentnames;
ALTER TABLE STUDENT RENAME column studentname to rollnum;
ALTER TABLE STUDENT RENAME column studentnames to studentname;
select * from STUDENT;
DESCRIBE STUDENT;
INSERT INTO STUDENT VALUES("ganesh","590","2002-07-27","cse",1),
("srinu","591","1880-02-14","null",2),
("sasank","592","1996-04-12","civil",3),
("christopher","593","1883-09-09","ece",2),
("sravani","594","1982-06-26","null",4),
("robert","595","1889-04-12","cse",3),
("sushmita","596","2002-12-15","ece",1);

#DISPLAY STUDENT TABLE
SELECT * FROM STUDENT;

#QUERIES

#1st querry
#LIST ALL STUDENTS FROM ALL BRANCHES
select * from STUDENT;
 
 #2nd query
 #list student names start with s
 SELECT * FROM STUDENT WHERE studentname like 's%';
 
 #3rd query
 #list student names whose name contains ‘s as third literal.
 
SELECT * FROM STUDENT WHERe studentname like '__s%';

#4th query
#List students whose branch is NULL. 
SELECT * FROM STUDENT WHERE branch='null';

#5th query
#List students of CSE & ECE who born after 1980.
SELECT * FROM STUDENT WHERE branch in ('cse','ece') AND dob>'1980-01-01';

#6th query
#List all students in reverse order of their names
SELECT reverse(studentname) from STUDENT;

#7th query
#Delete students of any branch whose name starts with ‘s‘.
DELETE FROM STUDENT WHERE studentname like 's%' ;

#to check data is deleted or not 
select * from STUDENT;

#8th query
 #Update the branch of CSE students to ECE.
 update STUDENT SET branch='ece' WHERE branch='cse';
 
#9th query
# Display student name padded with  * after the name of all the students.
select RPAD(studentname,40,'*') AS NAMES from STUDENT;


