# Write a procedure which accept the account number of a customer and retrieve the  balance.
USE mysqlpractice;  #using a existing database
CREATE TABLE EMP_DATA(emp_name varchar(30),account_number varchar(30),balance int);
INSERT INTO EMP_DATA VALUES("ganesh","123A",300000),
("suresh","123B",243433),
("rameh","123C",2232433),
("sravani","123D",43433),
("eswar","123E",222222),
("pnakajam","123F",23434),
("brahmanandham","123G",150000);

SELECT * FROM EMP_DATA;

#CREATING PROCEDURE
delimiter //
CREATE PROCEDURE retrieve_bal(in acc_num varchar(30))
begin
SELECT balace from EMP_DATA where account_number=acc_num;
end
//
ALTER TABLE EMP_DATA RENAME COLUMN balance TO  balace;
#calling ther procedure 
call retrieve_bal('123D');