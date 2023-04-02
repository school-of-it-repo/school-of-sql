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

