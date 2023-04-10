/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------

Problem statement: Prepare Report status based on in/out swipe status



*/

create table schoolofit.list_of_fruits
(name varchar(20));

insert into schoolofit.list_of_fruits
values
('apple'),('apple'),('apple'),('banana')
,('banana'),('banana'),('orange'),('orange'),('watermelon'),('watermelon')
,('apple'),('mango'),('plums');


select * from 	schoolofit.list_of_fruits;


select distinct
	count(*) as _count
	,string_agg(name,',' ) over (partition by count(*)) as _list_of_fruits
from
	schoolofit.list_of_fruits
group by name order by _count ;