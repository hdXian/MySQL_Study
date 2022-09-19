drop procedure if exists ifProc2;
delimiter $$
create procedure ifProc2()
begin
	declare myNum int;
    set myNum = 200;
    
    if myNum = 100 then
		select '100입니다' as '출력결과';
	else
		select '100이 아닙니다' as '출력결과';
	end if;
end $$
delimiter ;
call ifProc2();