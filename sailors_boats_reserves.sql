use mysqlpractice; #using default database
show tables;

/*Create the following tables based on the above Schema Diagram with appropriate data
types
and constraints and perform the following queries.
SAILORS (Saild, Salname, Rating, Age)
RESERVES (Sailid, boatid, Day)
BOATS (Boatid, Boat-name, Color) */

#1st query
#Insert 5 to 10 rows in all tables?

CREATE TABLE SAILORS(sailid int,sailname varchar(30),rating int,age int);
#adding foreign key
ALTER TABLE SAILORS ADD PRIMARY KEY(sailid);

#inserting values into sailors table
INSERT INTO SAILORS VALUES(590,"ganesh",10,19),
(591,"salvadors",8,20),
(592,"sravani",10,22),
(593,"suresh",7,18),
(594,"hsenag",9,25) ,
(595,"ramesh",6,17),
(596,"eswar",9,22);
#describing sailors table
select * from SAILORS;
/*
590	ganesh	10	19
591	salvadors	8	20
592	sravani	10	22
593	suresh	7	18
594	hsenag	9	25
595	ramesh	6	17
596	eswar	9	22
*/
			
describe SAILORS;
/*
sailid	int	NO	PRI		
sailname	varchar(30)	YES			
rating	int	YES			
age	int	YES	
*/		

#CREATING BOATS TABLE
CREATE TABLE BOAT(boatid int,boatname varchar(30),boatcolor varchar(30),primary key(boatid));
#INSERTING VALUES INTO BOAT TABLE
INSERT INTO BOAT VALUES(1,"mormugao","red"),
(2,"imphal","green"),
(3,"surat","red"),
(4,"masula","blue"),
(5,"beachbum","red"),
(6,"usainboat","green"),
(7,"aquaholic","green");

#describing boat table
select * from BOAT;	
/*
1	mormugao	red
2	imphal	green
3	surat	red
4	masula	blue
5	beachbum	red
6	usainboat	green
7	aquaholic	green
*/

describe BOAT;
/*
boatid	int	NO	PRI		
boatname	varchar(30)	YES			
boatcolor	varchar(30)	YES			
*/

#creating 	RESERVES table
CREATE TABLE RESERVES(rsailid int,rboatid int,day date);

#INSERTING VALUES INTO RESERVES
INSERT INTO RESERVES VALUES(590,1,"2022-10-19"),
(591,2,"2022-11-19"),
(592,3,"2022-10-13"),
(593,4,"2022-12-29"),
(594,5,"2022-08-12"),
(595,6,"2022-05-05"),
(596,7,"2022-09-08");

#ADDING FOREIGN KEYS
ALTER TABLE RESERVES ADD FOREIGN KEY(rsailid) REFERENCES SAILORS(sailid);
ALTER TABLE RESERVES ADD FOREIGN KEY(rboatid) REFERENCES BOAT(boatid);

#describing reserves
select * from RESERVES;
/*
590	1	2022-10-19
591	2	2022-11-19
592	3	2022-10-13
593	4	2022-12-29
594	5	2022-08-12
595	6	2022-05-05
596	7	2022-09-08
*/
DESCRIBE RESERVES;
/*
rsailid	int	YES	MUL		
rboatid	int	YES	MUL		
day	date	YES			
*/

#2nd query
#Find the name of sailors who reserved boat number 3.
select sailname from SAILORS,RESERVES where SAILORS.sailid=RESERVES.rsailid and RESERVES.rboatid=3;
#output
#sravani

#3rd query
#Find the name of sailors who reserved green boat.
select sailname from SAILORS sail,RESERVES resv,BOAT boat where sail.sailid=resv.rsailid and boat.boatid=resv.rboatid and boat.boatcolor="green";  
#output
/*
salvadors
ramesh
eswar
*/

#4th query
#Find the colors of boats reserved by Ramesh.
select sailname,boatcolor FROM SAILORS,BOAT,RESERVES WHERE SAILORS.sailid=RESERVES.rsailid and BOAT.boatid=RESERVES.rboatid and SAILORS.sailname="ramesh";
#OUTPUT
/*
ramesh	green
*/

#5th query
#Find the names of sailors who have reserved at least one boat.
select sailname from SAILORS,RESERVES where SAILORS.sailid=RESERVES.rsailid;
#output
/*
ganesh
salvadors
sravani
suresh
hsenag
ramesh
eswar
*/

#6th query
 #Find the all sailid,sailname of sailors who have a rating of 10 or have reserved boated 7.
select sailid,sailname from SAILORS,RESERVES WHERE SAILORS.sailid=RESERVES.rsailid and (SAILORS.rating=10 or RESERVES.rboatid=7);
#output
/*
590	ganesh
592	sravani
596	eswar
*/

#7th query
# Find the Sailid‘s of sailors with age over 20 who have not registered a red boat.
select sailid from SAILORS ,BOAT,RESERVES WHERE SAILORS.sailid=RESERVES.rsailid and BOAT.boatid=RESERVES.rboatid and (SAILORS.age>20 and BOAT.boatcolor!='red');
#output
/*
596
*/

#8th query
#Find the names of sailors who have reserved a red or green boat.
select sailname from SAILORS,RESERVES,BOAT where SAILORS.sailid=RESERVES.rsailid and BOAT.boatid=RESERVES.rboatid and (BOAT.boatcolor='green' or BOAT.boatcolor='red'); 
#output
/*
ganesh
salvadors
sravani
hsenag
ramesh
eswar
*/

#9th query
#Find sailors whose rating is better than some sailor called salvadors.
select sailname from SAILORS  WHERE rating>(select rating from SAILORS WHERE SAILORS.sailname="salvadors");
#output
/*
ganesh
sravani
hsenag
eswar
*/

#10th query
#Find the names of sailors who are older than the oldest sailor with a rating of 10.
select sailname from sailors where age>(select max(age)  from SAILORS where rating=10); 
#output
/*
hsenag
*/




#THANKYOU 
#CREATED AND DEVELOPED BY GANESH JAGGINENI
#LAKIREDDY BALI REDDY ENGINEERING COLLEGE


