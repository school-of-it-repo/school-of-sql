/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Find maximum sum from which two numbers

*/


create table schoolofit.biggest_sum
(id int);

insert into schoolofit.biggest_sum
(id)
values
(34),(12),(56),(78),(90),(2),(5),(6),(12),(67);

select
	id
from
	schoolofit.biggest_sum ;

''' Solution - 1 '''
with _data as (
select
	id
from
	schoolofit.biggest_sum
order by id desc limit 2

)
select
max(id) as _id_1,min(id) as _id_2,sum(id) as _sum
from _data;

''' Solution - 2 '''
with _cleaned_data as
(
	select
	id,row_number() over() as _row_num
from
	schoolofit.biggest_sum
)
select
	s1.id as _id_1,s2.id as _id_2,(s1.id+s2.id) as _sum
from
	_cleaned_data s1
cross join _cleaned_data s2
where s1._row_num < s2._row_num
order by _sum desc,s1.id desc;