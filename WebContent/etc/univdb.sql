USE univdb;

create table student (
	id		varchar(20) NOT NULL,
	passwd  varchar(20) NOT NULL,
	name    varchar(20) NOT NULL,
	year	int			NULL,	
	snum	varchar(10) NULL,
	depart	varchar(20) NULL,
	mobile1 char(3)  	NULL,
	mobile2 varchar(10) NULL,
	address varchar(65) NULL,
	email   varchar(30) NULL,
	PRIMARY KEY ( id )
);

USE univdb;

desc student;

select * from student;


insert into student values ('gongji', 'young'   , '공지영', 2009, '2065787', '컴푸터공학과', '016', '2975-9854', '인천시', 'gong@hotmail.com');
insert into student values ('water', 'javayoung', '조수영', 2010, '1176432', '인터넷비즈니스과', '011', '2975-9854', '서울시', 'singer@gmail.com');
insert into student values ('novel', 'elephant' , '조경란', 2011, '2056485', '기술경영과', '016', '3487-9919', '부산시', 'novel@hanmail.com');

commit;