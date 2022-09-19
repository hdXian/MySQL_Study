drop procedure if exists whileProc2;

delimiter $$
create procedure whileProc2()
begin
	declare i int;
    declare hap int;
    set i = 1;
    set hap = 0;
    
    mywhile:
	while (i<=100) do
		if (i%4 = 0) then
			set i = i + 1;
			iterate mywhile;
		end if;
        
        set hap = hap + i;
        if (hap > 1000) then
			leave mywhile;
		end if;
        
        set i = i + 1;
	end while;
    
    select '1부터 100까지의 합(4의 배수 제외, 1000 넘으면 종료) ==>' as '출력결과', hap;
end $$
delimiter ;

call whileproc2();