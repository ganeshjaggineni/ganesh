#1Write an update trigger on Account table. The system should keep track of the records that are being updated.
create table Account(accno int,balance float);
insert into Account(accno,balance) values(111,1000), 
(222,2000), 
(333,3000),
(444,4000), 
(555,5000);
delimiter //
CREATE TRIGGER ACCUPDATE  BEFORE UPDATE ON Account FOR EACH ROW
begin
declare emsg varchar(50);
set emsg="NEW BALANCE CANNOT BE LESS THAN OLD BALANCE";
if new.balance < old.balance then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT=emsg;
end if;
end
//
set sql_safe_updates=0;
update  Account set balance=590.3 where accno=555;