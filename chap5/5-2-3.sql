drop table if exists member;

create table member
(
	mem_id char(8) not null,
    mem_name varchar(10) not null,
    height tinyint unsigned null
);

alter table member
	add constraint -- 제약조건을 추가한다.
    primary key (mem_id);

desc member;