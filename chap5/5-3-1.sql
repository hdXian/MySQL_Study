create view v_member
as
	select mem_id, mem_name, addr from member;

select * from v_member;

select mem_name, addr from v_member
where addr in ('서울', '경기');