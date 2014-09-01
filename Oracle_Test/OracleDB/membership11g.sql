select * from membership;
drop table membership;
create table membership(
	id varchar(15) not null primary key,
	passwd varchar(10) not null,
	name varchar(15) not null,
	age number,
	gender varchar(5) not null,
	email varchar(30)
);
