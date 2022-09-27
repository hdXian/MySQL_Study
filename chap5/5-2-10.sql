drop table if exists buy, member;

create table member
(
	mem_id char(8) not null primary key,
    mem_name varchar(10) not null,
    height tinyint unsigned null,
    email char(30) null unique
);

insert into member values('BLK', "블랙핑크", 163, 'pink@gmail.com');
insert into member values('TWC', "트와이스", 167, null);
insert into member values('APN', "에이핑크", 164, 'pink@gmail.com');