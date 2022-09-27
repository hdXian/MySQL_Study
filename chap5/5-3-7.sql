update v_member set addr='부산' where mem_id='BLK';

insert into v_member(mem_id, mem_name, addr) values('BTS', '방탄소년단', '경기');

create view v_height167
as
	select * from member
		where height >= 167;

select * from v_height167;