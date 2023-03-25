/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Problem statement: Write an SQL query to find user level metrics that
no of events scheduled, no of events attended  and not attended.





*/
drop table schoolofit.events;
drop table schoolofit.events_user;
create table schoolofit.events
(
event_date date,
event_id serial
);

insert into schoolofit.events
(event_date)
values('2023-03-09'),('2023-03-16'),('2023-03-23');

insert into schoolofit.events
(event_date)
values('2023-03-30')

create table schoolofit.events_user
(
event_id int,
user_id int);

insert into schoolofit.events_user
(event_id,user_id)
values
(1,151),
(2,151),
(3,151),
(1,299),
(3,299),
(2,373),
(1,222),
(2,222),
(3,222),
(4,222);


select * from schoolofit.events;

select * from schoolofit.events_user;


with _expected_present as
(
 select
 	 distinct e.event_id
 	,eu.user_id
 from
 	schoolofit.events e
 	cross join (select distinct user_id from schoolofit.events_user ) eu
)
, _base_data as (
select
	ep.event_id
	,ep.user_id
	,case when eu.user_id is null then 'NOT-Attended' else 'Attended' end as _status
from
	_expected_present ep
left join schoolofit.events_user eu on
	ep.event_id = eu.event_id and ep.user_id = eu.user_id
)
select
	user_id
	,(select count(*) from schoolofit.events) as _total_no_of_events
	,sum(case when _status='Attended' then 1 else 0 end ) _no_of_events_attended
	,sum(case when _status='NOT-Attended' then 1 else 0 end ) _no_of_events_not_attended

	,COALESCE('Missed events are ' || string_agg(
		case when _status='NOT-Attended' then event_id::VARCHAR end

	,',' order by event_id) ,'Attended all events')  as status
	,sum(case when _status='NOT-Attended' then 1 else 0 end ) * 1.0 / (select count(*) from schoolofit.events) _missed_ratio
from
	_base_data
group by user_id