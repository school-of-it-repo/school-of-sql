/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Problem statement: Find ‘ON’ time status in range.





*/
drop table schoolofit.event_on_off

create table schoolofit.event_on_off
(event_time timestamp,
status varchar(20)
);



insert into schoolofit.event_on_off
values
('2023-04-01 10:01','ON'),
('2023-04-01 10:02','ON'),
('2023-04-01 10:03','ON'),
('2023-04-01 10:04','OFF'),
('2023-04-01 10:07','ON'),
('2023-04-01 10:08','ON'),
('2023-04-01 10:09','OFF'),
('2023-04-01 10:11','ON'),
('2023-04-01 10:12','OFF');

select
	*
from
	schoolofit.event_on_off

with _find_gap as (
select
	event_time
	,status
	,case when status = lag(status) over(order by event_time) then 0 else 1 end  as _gap
	,lead(event_time) over(order by event_time) _lead_event_time
from
	schoolofit.event_on_off eve
)
,_find_buckets as (
select
	event_time
	,status
	,sum(_gap) over (order by event_time) as _bucket
	,_lead_event_time
from
	_find_gap
)
select

	min(event_time) start_time
	,max(_lead_event_time) end_time
	,count(_bucket) cnt
from
	_find_buckets
where status='ON'
group by
	_bucket
order by start_time;