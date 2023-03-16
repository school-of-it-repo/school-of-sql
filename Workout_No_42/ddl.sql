/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------

Problem statement:  Data Cleanup. We received this question from our whatsup group.


*/

create table schoolofit.user_request_11
(
id int
,col1 varchar(10)
,col2 varchar(10)
,col3 varchar(20)
);
truncate table schoolofit.user_request_11;
insert into schoolofit.user_request_11
(id,col1,col2,col3)
values
(1,'ABC',null,null),
(1,null,'DEF',null),
(1,null,'FGH',null),
(1,null,'IJK',null),
(1,null,null,'MNO'),
(1,null,null,'PQR'),
(1,null,null,'STU'),
(1,null,null,'XYZ');


select
	id
	,col1
	,col2
	,col3
from
	schoolofit.user_request_11;