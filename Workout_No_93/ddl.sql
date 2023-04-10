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