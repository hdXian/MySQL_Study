insert into buy values (null, 'BLK', '지갑');

insert into buy values (null, 'BLK', '맥북');

update member set mem_id = 'PINK' where mem_id='BLK';

select B.mem_id, M.mem_name, B.prod_name
	from buy B
    inner join member M
    on B.mem_id = M.mem_id;

delete from member where mem_id = 'PINK';

select * from buy;