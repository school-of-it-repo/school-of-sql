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
Generate the report based on below conditions
1.Mark Perfect – if user Properly done swipe in and Swipe Out.
2 Otherwise mark in/out time missed.
3. Last entry swipe status = IN then mark as ‘still that person in that building’


*/

drop table schoolofit.office_tracker;
create table schoolofit.office_tracker
(
log_id serial,
name varchar(20),
location_name varchar(20),
swipe_status varchar(20),
swipe_time timestamp
);

--truncate table schoolofit.office_tracker;
insert into schoolofit.office_tracker
(name,location_name,swipe_status,swipe_time)
values
('Person-1','Building-1','IN',now()::timestamp - interval '10 hour'),
('Person-1','Building-1','OUT',now()::timestamp - interval '9 hour'),

('Person-1','Building-2','IN',now()::timestamp - interval '8 hour'),
('Person-1','Building-2','OUT',now()::timestamp - interval '7 hour'),

('Person-1','Building-1','IN',now()::timestamp - interval '6 hour'),
('Person-1','Building-1','OUT',now()::timestamp - interval '5 hour'),

('Person-1','Building-3','OUT',now()::timestamp - interval '4 hour'),

('Person-1','Building-5','IN',now()::timestamp - interval '3 hour'),
('Person-1','Building-5','OUT',now()::timestamp - interval '2 hour'),

('Person-1','Building6','IN',now()::timestamp - interval '1 hour'),

('Person-2','Building-10','OUT',now()::timestamp - interval '11 hour'),

('Person-2','Building-10','IN',now()::timestamp - interval '10 hour'),
('Person-2','Building-10','OUT',now()::timestamp - interval '9 hour'),

('Person-2','Building-12','IN',now()::timestamp - interval '8 hour'),
('Person-2','Building-13','IN',now()::timestamp - interval '7 hour'),

('Person-2','Building-14','IN',now()::timestamp - interval '6 hour'),
('Person-2','Building-15','OUT',now()::timestamp - interval '5 hour');


commit;


select
	*
from
	schoolofit.office_tracker;


select
	log_id
	,name
	,location_name
	,swipe_status
	,swipe_time

	,case
		when swipe_status='IN' and 'OUT' = lead(swipe_status) over(partition by name,location_name order by swipe_time asc) then 'Perfect'
		when swipe_status='OUT' and 'IN' = lag(swipe_status) over(partition by name,location_name order by swipe_time asc) then 'Perfect'

		when swipe_status='IN' and count(*) over( partition by name) = row_number() over(partition by name) then concat_ws(' ','Still',name,'in', location_name)

		when swipe_status='IN' then concat_ws(' ','OUT time missed in ', location_name)

		when swipe_status='OUT'  then concat_ws(' ','IN time missed in ', location_name)
	end as _report_status

from
	schoolofit.office_tracker
order by log_id


