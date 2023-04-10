/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------

Find # no of visited floor and maximum
no. of visited floor and unique resources at each name level




*/

drop table schoolofit.max_floor_visit ;
create table schoolofit.max_floor_visit
(
name varchar(20)
,address varchar(30)
,email varchar(40)
,visited_floor int
,resources varchar(30)
);

insert into schoolofit.max_floor_visit
(name,address,email,visited_floor,resources)
values
('Person-A','Bangalore','Person-A@gmail.com',1,'CPU'),
('Person-A','Bangalore','Person-A@gmail.com',1,'CPU'),
('Person-A','Bangalore','Person-A@gmail.com',1,'DESKTOP'),
('Person-A','Bangalore','Person-A@gmail.com',2,'DESKTOP'),
('Person-A','Bangalore','Person-A@gmail.com',3,'CPU'),
('Person-B','Bangalore','Person-B@gmail.com',1,'CPU'),
('Person-B','Bangalore','Person-B@gmail.com',2,'CPU'),
('Person-B','Bangalore','Person-B@gmail.com',2,'CPU'),
('Person-C','Bangalore','Person-C@gmail.com',4,'DESKTOP'),
('Person-C','Bangalore','Person-C@gmail.com',4,'DESKTOP');

select * from schoolofit.max_floor_visit ;


select
	distinct
	 name
	,count(*) over(partition by name)
	,temp._result as _distinct_resources
	,temp1._result as _most_visited_floor
from
	schoolofit.max_floor_visit _outer
	left join lateral (select string_agg(distinct resources,',' order by resources) from schoolofit.max_floor_visit _inner where _inner.name=_outer.name) as temp(_result) on true
		left join lateral (select visited_floor from schoolofit.max_floor_visit _inner where _inner.name=_outer.name group by visited_floor order by count(*) desc limit 1) as temp1(_result) on true

order by name;