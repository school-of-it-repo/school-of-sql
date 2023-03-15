/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------

Data entry operator entered wrong data for gender column.
We need to correct those details. Write an SQL query to replace the Gender Male to Female
And Vice versa.


*/

create table schoolofit.gender_change
(
id serial,
name varchar(50),
gender varchar(20)
);

insert into schoolofit.gender_change
(name,gender)
values
('Person-A','MALE'),
('Person-B','MaLe'),
('Person-C','male'),
('Person-D','FEMALE'),
('Person-E','FeMaLe'),
('Person-F','Female'),
('Person-G','malE'),
('Person-H','Female'),
('Person-I','MALE'),
('Person-J','TRANSGENDER'),
('Person-K','TrANSgENder'),
('Person-L','transgender');

/

select
	id
	,name
	,gender
from
	schoolofit.gender_change;
