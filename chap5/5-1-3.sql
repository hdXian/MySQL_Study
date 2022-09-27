
drop table if exists member;

create table member
(
	mem_id char(8) not null,
	mem_name varchar(10) not null,
    mem_number tinyint not null,
    addr char(2) not null,
    phone1 char(3) null,
    phone2 char(8) null,
    height tinyint unsigned null,
    debut_date date null
);
