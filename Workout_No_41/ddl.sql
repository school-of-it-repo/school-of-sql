/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------

Problem statement: we found that lot of duplicate entry made in ‘interest’ column in the table.
Write an SQL query to remove duplicate entry and keep unique values.

*/

create table schoolofit.remove_duplicate_value
(id serial
,name varchar(50)
,interest varchar(1000)
);

insert into schoolofit.remove_duplicate_value
(name,interest)
values
('Person-A','shopping,gaming,watching-movies,football,shopping'),
('Person-B','gaming,watching-movies,football'),
('Person-C','gaming,watching-movies,football,gaming'),
('Person-D','gaming,watching-movies,football,shopping'),
('Person-E','reading,gaming'),
('Person-F','shopping,reading,watching-movies,football,reading'),
('Person-G','chatting,chatting,watching-movies,chatting,chatting'),
('Person-H','gaming,gaming,watching-movies,gaming,shopping');

/

select
	id
	,name
	,interest
from
	schoolofit.remove_duplicate_value;

/