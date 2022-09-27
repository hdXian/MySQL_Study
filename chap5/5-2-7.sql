update member set mem_id = 'PLNK' where mem_id = 'BLK';

delete from member M where M.mem_id = 'BLK';