use mysqlpractice;
#creating employee database 
CREATE DATABASE EMPLOYEE;
#creating employee table
CREATE TABLE EMPLOYEE1 (fname varchar(30),mname varchar(30),lname varchar(30),ssn bigint,bdate date,address varchar(30),sex char,salary int);
#inserting values into EMPLOYEE TABLE

INSERT INTO EMPLOYEE1 VALUES("john","b","smith",123456789,"1965-01-09","vzm","m",30000);
INSERT INTO EMPLOYEE1 VALUES("franklin","t","wong",333445555,"1955-12-09","vizag","m",40000),
("alicia","j","zelaya",999887777,"1968-01-09","spring","f",25000),
("jennifer","s","walice",987654321,"1941-06-20","belaire","f",43000),
("ramesh","k","narayan",666884444,"1962-09-15","humble","m",39000),
("joyce","a","english",453453453,"1972-07-31","houston","f",25000),
("ahmad","v","jabbar",987987987,"1969-03-29","houston","m",25000),
("james","e","borg",888665555,"1937-11-10","houston","m",55000);

select * from EMPLOYEE1;
ALTER TABLE EMPLOYEE1 ADD PRIMARY KEY(ssn);
describe EMPLOYEE1;

#CREATING DEPARTMENT TABLE
CREATE TABLE DEPARTMENT1 (dname varchar(30),dnumber int,mgrssn bigint,mgrstartdate date);
insert into DEPARTMENT1 values("research",5,333445555,"1968-05-22"),
("administration" ,4,987654321,"1995-01-01"),
("headquarters",1,888665555,"1981-06-19");
SELECT * FROM DEPARTMENT1;
ALTER TABLE DEPARTMENT1 ADD PRIMARY KEY(dnumber);

#CREATING DEPARTMENTLOCATION TABLE

CREATE TABLE DEPTLOCATION1 (dnumber int,dlocation varchar(30));
insert into DEPTLOCATION1 values(1,"houston"),
(4,"stafford"),
(5,"bellaire"),
(5,"sugarland"),
(5,"houston");
ALTER TABLE DEPTLOCATION1 ADD PRIMARY KEY(dnumber,dlocation);

#CREATING PROJECT TABLE

CREATE TABLE PROJECT (pname varchar(30),pnumber int,plocation varchar(30),dnum int);
INSERT INTO PROJECT values ("productx",1,"bellaire",5),
("producty",2,"sugarland",5),
("productz",3,"houston",5),
("computerization",10,"stafford",4),
("reorganization",20,"houston",1),
("newbenefits",30,"stafford",4);

#CHANGING PROJECT TO PROJECT1 
ALTER TABLE PROJECT RENAME PROJECT1;

ALTER TABLE PROJECT1 ADD PRIMARY KEY(pname);
ALTER TABLE PROJECT1 DROP primary key;
ALTER TABLE PROJECT1 ADD primary key(pnumber);

#creating works on talbe

create table WORKSON1 (essn bigint,pno int,hours varchar(10));

INSERT INTO  WORKSON1 VALUES(123456789,1,"32.5"),
(123456789,2,"75"),
(666884444,3,"40.0");

INSERT INTO WORKSON1 values(453453453,1,"20.0"),
(453453453,2,"20.0"),
(333445555,2,"10.0"),
(333445555,3,"10.0"),
(333445555,10,"10.0"),
(333445555,20,"10.0"),
(999887777,30,"30.0"),
(999887777,10,"30.0"),
(987987987,10,"10.0"),
(987987987,30,"5.0"),
(987654321,30,"20.0"),
(987654321,20,"15.0"),
(888665555,20,"NULL");

select * from WORKSON1;
DESC WORKSON1;
ALTER TABLE WORKSON1 ADD PRIMARY KEY(essn,pno);

ALTER TABLE EMPLOYEE1 ADD column superssn bigint;
ALTER TABLE EMPLOYEE1 ADD COLUMN dno int;

#adding foreign keys
ALTER TABLE EMPLOYEE1 ADD  FOREIGN KEY(superssn) references EMPLOYEE1(ssn);

ALTER TABLE EMPLOYEE1 ADD FOREIGN KEY(dno) references DEPARTMENT1(dnumber);
ALTER TABLE DEPARTMENT1 ADD FOREIGN KEY(mgrssn) references EMPLOYEE1(ssn);
ALTER TABLE DEPTLOCATION1 ADD FOREIGN KEY(dnumber) references DEPARTMENT1(dnumber);
ALTER TABLE PROJECT1 ADD FOREIGN KEY(dnum) references DEPARTMENT1(dnumber);
ALTER TABLE WORKSON1 ADD FOREIGN KEY(essn) references EMPLOYEE1(ssn);
SET FOREIGN_KEY_CHECKS=0;
ALTER TABLE  WORKSON1 ADD foreign key(pno) references PROJECT1(pnumber);

select * from PROJECT1;
DESC PROJECT1;
DESC WORKSON1;


update EMPLOYEE1 set superssn="123456789" where fname="john";
update EMPLOYEE1 set dno="4" where fname="joyce";
update EMPLOYEE1 set dno="1" where fname="franklin";
update EMPLOYEE1 set superssn="999887777" where fname="alicia";
update EMPLOYEE1 set superssn="987987987" where fname="ahmed";
update EMPLOYEE1 set superssn="987654321" where fname="jennifer";
update EMPLOYEE1 set superssn="888665555" where fname="james";
update EMPLOYEE1 set superssn="666884444" where fname="ramesh";
update EMPLOYEE1 set superssn="453453453" where fname="joyce";
update EMPLOYEE1 set superssn="333445555" where fname="franklin";
update EMPLOYEE1 set dno="4" where fname="joyce";
update EMPLOYEE1 set dno="1" where fname="franklin";
update EMPLOYEE1 set dno="5" where fname="ramesh";
update EMPLOYEE1 set dno="1" where fname="james";
update EMPLOYEE1 set dno="5" where fname="ahmed";
update EMPLOYEE1 set dno="1" where fname="alicia";
 update EMPLOYEE1 set superssn="987987987" where fname="ahmad";
 update EMPLOYEE1 set dno="5" where fname="ahmad";
 select * from EMPLOYEE1;
update EMPLOYEE1 set dno="5" where fname="john";
update EMPLOYEE1 set dno="4" where fname="jennifer";

#1st query
#Display all employees’ names along with their department names
select fname,lname,address,dname from EMPLOYEE1 e,DEPARTMENT1 d where e.dno=d.dnumber and d.dname="research";


#3rd query 
# Display all employees’ names along with their dependent details.
select fname,lname,address from EMPLOYEE1 e,DEPARTMENT1 d where d.dnumber=e.dno;

#dependent table creation
CREATE TABLE DEPENDENT1(essn varchar(30),dependentname varchar(30),gender char,bdate date ,relationship varchar(30));

insert into DEPENDENT1 VALUES('333445555','Alice','F','1986-04-05','Daughter'),
('333445555','Theodore','M','1983-10-25','Son'),
('333445555','Joy','F','1958-05-03','Spouse'),
('987654321','Abner','M','1942-02-28','Spouse'),
('123456789','Michael','M','1988-01-04','Son'),
('123456789','Elizabeth','F','1967-05-05','Spouse');
ALTER TABLE DEPENDENT1 ADD PRIMARY KEY(essn,dependentname);
ALTER TABLE DEPENDENT1 ADD FOREIGN KEY(essn) references EEMPLOYEE(ssn);
SELECT * FROM DEPENDENT1;

#4th query
#Display all employees’ names along with their dependent details
SELECT fname,lname,dependentname from EMPLOYEE1 e,DEPENDENT1 d where e.ssn=d.essn;


#5th query
# List the names of all employees with  dependents count.
select fname,count(*) as no_of_dependents from EMPLOYEE1 e,DEPENDENT1 d where e.ssn=d.essn group by ssn;

#6th query
 #List the names of all employees with two or more dependents.
 create view emp as select fname,count(*) as no_of_dependents from EMPLOYEE1 e,DEPENDENT1 d where e.ssn=d.essn group by ssn;
 select fname from emp where no_of_dependents>2;
 
 #7th query
 # List the names of employee who have no dependents.
 select fname from EMPLOYEE1 where fname not in(select fname from emp);

#8th query
#List the names of employees who have at least one dependent.
select fname from emp where no_of_dependents>=1;

#9th query
#Display name of the department and name of manager for all the departments.
select fname,dname from EMPLOYEE1 e,DEPARTMENT1 d where e.ssn=d.mgrssn;

#10th query
