use market_db;

prepare myQuery from 'select * from member where mem_id = "BLK"';
execute myQuery;

deallocate prepare myQuery;