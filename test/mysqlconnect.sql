show databases;
use test;

create table member(
 id varchar(50) not null primary key,
 passwd varchar(16) not null,
 name varchar(10) not null,
 reg_date datetime not null
);

create table test(
 num_id int not null primary key auto_increment,
 title varchar(50) not null,
 content text not null
);

show tables;


insert into member(id,passwd,name,reg_date)
values('hongkd','1111','홍길동',now());

insert into member values('jsp2','0001','mysql2',now());
insert into member values('hong@hanmail.net','1111','홍',now());
select * from member ;
select id,passwd from member where id='hong@hanmail.net';
update member set passwd='3579' where id='hong@hanmail.net';

