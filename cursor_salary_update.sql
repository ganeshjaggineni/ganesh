#Create a cursor to modify the salary of all employees belonging to 'Research' department by 150%
use mysqlpractice;
select * from employee1;
describe employee1;
#output
/*
john	b	smith	123456789	1965-01-09	vzm	m	30000	333445555	5
franklin	t	wong	333445555	1955-12-09	vizag	m	40000	888665555	5
joyce	a	english	453453453	1972-07-31	houston	f	25000	333445555	5
ramesh	k	narayan	666884444	1962-09-15	humble	m	39000	333445555	5
james	e	borg	888665555	1937-11-10	houston	m	55000		1
jennifer	s	walice	987654321	1941-06-20	belaire	f	43000	888665555	4
ahmad	v	jabbar	987987987	1969-03-29	houston	m	25000	987654321	4
alicia	j	zelaya	999887777	1968-01-09	spring	f	25000	987654321	4
*/

select * from department1;
#output
/*
headquarters	1	888665555	1981-06-19
administration	4	987654321	1995-01-01
research	5	333445555	1968-05-22
*/

#creating cursor
delimiter //
create procedure emp_salary_update(in dept varchar(30))
begin
declare flag int;
declare sal int;
declare update_cur cursor for select salary from employee1 e, department1 d where e.dno=d.dnumber and d.dname=dept;

declare continue handler for not found set flag=1;
open update_cur;
loop
fetch update_cur into sal;
update employee1 e,department1 d set salary=salary+(sal*5/100) where e.dno=d.dnumber;
end loop;
end;
//

#set SQL_SAFE_UPDATES=0;

call emp_salary_update("research");



