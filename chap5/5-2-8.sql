drop table if exists buy;

create table buy
(
	num int auto_increment not null primary key,
    mem_id char(8) not null,
	prod_name char(6) not null
);

alter table buy
	add constraint
    foreign key(mem_id) references member(mem_id)
    on update cascade -- 기준 테이블의 열이 변경되면 함께 변경된다.
    on delete cascade; -- 기준 테이블의 열이 삭제되면 함께 삭제된다.