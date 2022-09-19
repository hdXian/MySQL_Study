drop table if exists gate_table;
create table gate_table (id int auto_increment primary key, entry_time datetime);

set @curDate = current_timestamp(); -- 현재 날짜, 시간

prepare myQuery from 'insert into gate_table values(NULL, ?)';

execute myQuery using @curDate;

deallocate prepare myQuery;

select * from gate_table;