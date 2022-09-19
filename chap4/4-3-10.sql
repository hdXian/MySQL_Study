drop procedure if exists whileProc;

delimiter $$
create procedure whileProc()
begin
	declare i int;
    declare hap int;
    set i = 1;
    set hap = 0;
    
    while (i<=100) do
		set hap = hap + i;
        set i = i + 1;
	end while;

select '1부터 100까지의 합 ==>' as '출력결과', hap;
end $$
delimiter ;
call whileProc();