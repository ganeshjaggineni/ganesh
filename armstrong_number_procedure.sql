use mysqlpractice; #database 
delimiter //
create procedure arms(in num int)
begin
declare temp int;
declare sum int;
declare rem int;
declare length int;
set temp=num;
set sum=0;
set rem=0;
set length=char_length(num);
while num>0 do
set rem=mod(num,10);
set sum=sum+pow(rem,length);
set num=num div 10;
end while;
select if(temp=sum,"armstrong","not armstrong");
end;
//

call arms(153);
call arms(143);