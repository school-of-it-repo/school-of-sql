/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Problem statement: Number of Calls between two person.


*/

create table schoolofit.call_tracker
(
log_id serial
,from_id int
,to_id int
,call_duration int
);

insert into schoolofit.call_tracker
(from_id,to_id,call_duration)
values
(1,2,12),
(1,2,30),
(1,5,20),
(1,5,10),
(1,4,20),
(1,5,30),
(2,1,20),
(5,2,30),
(10,8,40),
(1,4,30);
/

select
	*
from
	schoolofit.call_tracker;

/

with _data as
(
	SELECT LEAST(from_id,to_id) as from_id,
       GREATEST(from_id,to_id) as to_id,
       call_duration

     FROM schoolofit.call_tracker
)
select
	from_id
	,to_id
	,COUNT(*) as call_count,
    SUM(call_duration) as total_duration
from
	_data
group by
	from_id,to_id
order by from_id

/