use 21761a0590;   #using already created database;
select * from student;   #using already created table in student table
delimiter //
#Write a procedure which accepts the student number and displays the department in which he belongs to.
create procedure find_branch(in roll int)
begin
select branch from student where rollno=roll;
end;
//

call find_branch(590);  #calling the procedure with roll number 590;