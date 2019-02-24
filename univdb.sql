USE univdb;

drop table student;

create table student (
	#seq     int NOT NULL AUTO_INCREMENT,
	id		varchar(20)  ,
	passwd  varchar(20)  ,
	name    varchar(20)  ,
	year	int			NULL,	
	snum	varchar(10) NULL,
	depart	varchar(20) NULL,
	mobile1 char(3)  	NULL,
	mobile2 varchar(10) NULL,
	address varchar(65) NULL,
	email   varchar(30) NULL,
	PRIMARY KEY ( id )
);

desc student;

select * from student;


insert into student values ( 'gongji', 'young'   , '', 2009, '2065787', '', '016', '2975-9854', '', 'gong@hotmail.com');
insert into student values ( 'novel2', 'elephant' , '', 2011, '2056485', '', '016', '3487-9919', '', 'novel@hanmail.com');
insert into student values ( 'water', 'javayoung', '', 2010, '1176432', '', '011', '2975-9854', '', 'singer@gmail.com');
insert into student values ( 'novel', 'elephant' , '', 2011, '2056485', '', '016', '3487-9919', '', 'novel@hanmail.com');
