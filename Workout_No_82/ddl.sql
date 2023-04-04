/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Problem statement: Find the best route.





*/
create table schoolofit.city
(
id serial,
name varchar(20)
);

insert into schoolofit.city
(name)
values
('Place-1'),
('Place-2'),
('Place-3'),
('Place-4'),
('Place-5'),
('Place-6'),
('Place-7');

select *
from schoolofit.city ;

create table schoolofit.route
(
from_place int,
to_place int,
distance_km int
);

insert into schoolofit.route
(from_place,to_place,distance_km)
values
(1,2,10),
(1,3,5),
(2,6,5),
(2,5,1),
(3,5,2),
(3,4,8),
(4,5,1),
(4,7,4),
(5,6,4),
(6,7,9);

select
	*
from
	schoolofit.route;