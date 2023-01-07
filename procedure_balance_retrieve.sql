#Write a procedure which accept the account number of a customer and retrieve the balance.
use  mysqlpractice;
create table cust(bank_no varchar(30),name varchar(30),balance bigint);
insert into cust values("590b","gani",30000),
("591b","eswar",29000),
("592b","sravani",35000);
delimiter //
create procedure bal_retrieve(in accnum varchar(30))
begin
select balance from cust where accnum=bank_no;
end;
//

call bal_retrieve("590b");
call bal_retrieve("592b");
