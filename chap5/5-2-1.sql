use naver_db;

drop table if exists buy, member;

create table member
(
	mem_id char(8) not null primary key,
    mem_name varchar(10) not null,
    height tinyint unsigned null
);