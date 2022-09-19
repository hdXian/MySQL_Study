drop procedure if exists ifProc3;

delimiter $$

create procedure ifProc3()
begin
	declare debutDate date;
    declare curDate date;
    declare days int;
    
    select debut_date into debutDate
    from market_db.member
    where mem_id = 'APN';
    
    set curDATe = current_date();
    set days = datediff(curDATe, debutDate);
    
    if (days/365) >= 5 then
		select CONCAT('데뷔한 지 ', days, '일이나 지났습니다. 핑순이들 축하합니다!') '축하 메시지';
	else
		select '데뷔한 지' + days + '일 밖에 안되었네요. 핑순이들 화이팅~';
	end if;
end $$

delimiter ;

call ifProc3();