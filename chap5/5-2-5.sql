drop table if exists buy;

create table buy
(
	num int auto_increment not null primary key,
    mem_id char(8) not null,
    prod_name char(6) not null
);

alter table buy
	add constraint
    foreign key(mem_id)
    references member(mem_id);