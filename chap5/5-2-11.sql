drop table if exists member;

create table member
(
	mem_id char(8) not null primary key,
    mem_name varchar(10) not null,
    height tinyint unsigned null check(height >= 100),
    phone1 char(3) null
);

insert into member values('BLK', "블랙핑크", 163, null);
insert into member values('TWC', "트와이스", 99, null);

alter table member
	add constraint
    check(phone1 in ('02', '031', '032', '054', '055', '061'));
    
insert into member values('TWC', "트와이스", 167, '02');
insert into member values('OMY', "오마이걸", 167, '010');



