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