/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------

Problem statement: Write an SQL query to find the list of id’s have ONLY Null and empty (‘’)
Status.


*/

create table schoolofit.user_request_12
(
	id int
	,status varchar(20)
);
insert into schoolofit.user_request_12
(id,status)
values
(1, null),
(2, ''),
(3, 'a'),
(4, null),
(4, 'a'),
(5, ''),
(5, 'a'),
(6, ''),
(6, null),
(6, null);select
	id
	,status
from
	schoolofit.user_request_12 ;
/

select id
from
	schoolofit.user_request_12
group by id
having max(nullif(status,'')) is null
order by id ;
