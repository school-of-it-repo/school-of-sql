/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Problem statement: find  first and second delivery method





*/
create table schoolofit.column_compare
(
  name1 varchar(20),
  name2 varchar(20)
);

insert into schoolofit.column_compare
(name1,name2)
values
('a','a'),
('b','b'),
('c','C'),
('D','d'),
('E',null),
(null,null),
('f','F'),
('x','Z'),
('r','v');


select
	*
from
	schoolofit.column_compare

select
	coalesce(lower(name1),'-')=coalesce(lower(name2),'-') as status
	,count(1)
	--,round((sum(count(*)) over() - count(1) ) * 1.0 / sum(count(*)) over() *100,2) as "ratio_%"
	,round(count(1) *1.0 / sum(count(*)) over() * 100,2) as "ratio_%"
from
	schoolofit.column_compare
group by 1