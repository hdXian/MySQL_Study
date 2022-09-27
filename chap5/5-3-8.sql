insert into v_height167 values('TRA', '티아라', 6, '서울', null, null, 159, '2005-01-01');

select * from v_height167;

select * from member;

alter view v_height167
as
	select * from member where height>=167
    with check option;
    
insert into v_height167 values('TRA', '티아라', 6, '서울', null, null, 159, '2005-01-01');