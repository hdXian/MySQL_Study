insert into member values('BLK', '블랙핑크', 163);

insert into buy values(null, 'BLK', '지갑');

insert into buy values(null, 'BLK', '맥북');

select M.mem_id, M.mem_name, B.prod_name
	from buy B
    inner join member M
    on B.mem_id = M.mem_id;