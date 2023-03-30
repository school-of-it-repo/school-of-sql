/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


We converted windows folder structure into tabular format.
Write an SQL query to find the path of given input ie. ‘Where.txt’

F:/school_of_it/sql/work_out/select_clause/select.txt
F:/school_of_it/python/work_out/lambda/lambda.txt
F:/school_of_it/sql/work_out/where_clause/where.txt
F:/school_of_it/sql/work_out/advance_where_clause/where.txt



*/

drop table schoolofit.directory_structure;

create table schoolofit.directory_structure
(
id int,
name varchar(100),
parent_id int
);

insert into schoolofit.directory_structure
(id,name,parent_id)
values
(1,'F:',null),
(2,'school_of_it',1),
(3,'sql',2),
(4,'work_out',3),
(5,'select_clause',4),
(6,'select.txt',5),
(7,'python',2),
(8,'work_out',7),
(9,'lambda',8),
(10,'lambda.txt',9),
(11,'where_clause',4),
(12,'where.txt',11),
(13,'advance_where_clause',4),
(14,'where.txt',13);


select
	*
from
	schoolofit.directory_structure;