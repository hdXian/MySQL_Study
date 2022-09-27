use market_db;

create view v_viewtest1
as
	select B.mem_id 'Member ID', M.mem_name as 'Member Name',
		B.prod_name 'Product Name', concat(M.phone1, M.phone2) as 'Office Phone'
        from buy B
        inner join member M
        on B.mem_id = M.mem_id;

select distinct `Member ID`, `Member Name` from v_viewtest1;