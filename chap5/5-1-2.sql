use naver_db;

drop table if exists member;

create table member
(
	mem_id char(8),
	mem_name varchar(10),
    mem_number tinyint,
    addr char(2),
    phone1 char(3),
    phone2 char(8),
    height tinyint unsigned,
    debut_date date
);

desc member;