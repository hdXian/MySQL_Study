alter view v_viewtest1
as
	select B.mem_id '회원 아이디', M.mem_name as '회원 이름',
		B.prod_name '제품 이름', concat(M.phone1, M.phone2) as '연락처'
        from buy B
		inner join member M
        on B.mem_id = M.mem_id;

select distinct `회원 아이디`, `회원 이름` from v_viewtest1;

drop view v_viewtest1;