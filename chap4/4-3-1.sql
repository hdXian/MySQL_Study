drop procedure if exists ifProc1;
delimiter $$ -- 구분자를 $$로 설정.
create procedure ifProc1()
begin
	if 100 = 100 then
    select '100은 100과 같습니다'; -- select <문자열> -> 문자열을 출력해줌. print() 기능.
	end if;
end $$
delimiter ; -- 구분자를 ;로 설정.

call ifProc1();