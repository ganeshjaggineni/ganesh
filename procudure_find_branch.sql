#Write a procedure which accepts the student number and displays the department in which he belongs to.

#creating table
create table stu_details(sno varchar(30),name varchar(30),dept varchar(30));
insert into stu_details values("590A","ganesh","cse"),
("590A","trinadha","ece"),
("590A","mangamma","eee"),
("590A","sravani","mech"),
("590A","eswar","civil"),
("590A","suresh","cse");

#creating procedure
delimiter //
create procedure find_branch(in stu_num varchar(30))
begin
select dept from stu_details where stu_num=sno;
end;
//

#calling procdures
call find_branch("590A");
