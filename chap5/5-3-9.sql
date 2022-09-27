create view v_complex
as
	select B.mem_id, M.mem_name, B.prod_name, M.addr
		from buy B
        inner join member M
        on B.mem_id = M.mem_id;

select * from v_complex;