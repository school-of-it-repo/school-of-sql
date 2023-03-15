/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------

Given this table calculate the ratio of Gender Female  to male

This example will help you to understand how to handle ZERO division  ERROR in  SQL

*/
create table schoolofit.calculate_ratio
(
id serial
,name varchar(20)
,gender varchar(20)
);

insert into schoolofit.calculate_ratio
(name,gender)
values
('Person-A','FEMALE'),
('Person-B','FEMALE'),
('Person-C','FEMALE'),
('Person-D','FEMALE'),
('Person-E','FEMALE'),
('Person-F','FEMALE'),
('Person-G','MALE');

/
select
	sum( case when gender='FEMALE' then 1 else 0 end)
	/sum(case when gender='MALE' then 1 else 0 end) as _ratio
from
	schoolofit.calculate_ratio;
/
delete from schoolofit.calculate_ratio where GENDER='MALE';
/
select
	sum( case when gender='FEMALE' then 1 else 0 end)
	/sum(case when gender='MALE' then 1 else 0 end) as _ratio
from
	schoolofit.calculate_ratio;
/