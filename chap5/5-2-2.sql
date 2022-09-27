drop table if exists member;

create table member
(
	mem_id char(8) not null,
	mem_name varchar(10) not null,
    height tinyint unsigned null,
    primary key (mem_id)
);

desc member;