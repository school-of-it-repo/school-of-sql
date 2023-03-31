/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Write an SQL query to get the count of NULL values
For each column




*/
drop table schoolofit.find_null_values;

create table schoolofit.find_null_values
(
	col1 varchar(20),
	col2 varchar(20),
	col3 varchar(20),
	col4 varchar(20),
	col5 varchar(20)
	);

insert into schoolofit.find_null_values
 (col1,col2,col3,col4,col5)
values
(null,'(1,2)','(1,3)','(1,4)','(1,5)'),
('(2,1)','(2,2)','(2,3)','(2,4)','(2,5)'),
(null,'(3,2)','(3,3)','(3,4)',null),
(null,'(4,2)',null,'(4,4)','(4,5)'),
(null,null,'(5,3)','(5,4)',null),
(null,'(6,2)','(6,3)','(6,4)','(6,5)');


select
	*
from
	schoolofit.find_null_values;