create or replace view v_viewtest2
as
	select mem_id, mem_name, addr from member;
    
desc v_viewtest2;

desc member;

show create view v_viewtest2;