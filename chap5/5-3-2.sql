select B.mem_id, M.mem_name, B.prod_name, M.addr, concat(M.phone1, M.phone2) '연락처'
from buy B
	inner join member M
    where B.mem_id = M.mem_id;