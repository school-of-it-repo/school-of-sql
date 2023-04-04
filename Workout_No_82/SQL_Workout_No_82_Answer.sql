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

with recursive travel as
(
	select
		name :: text as _path
		,id as last_id
		,0 as total_distance
		,1 as count_places
	from
		schoolofit.city
	where
		name ='Place-1'

	union all

	select
		t._path || ' --> ' || c.name
		,c.id
		,t.total_distance + r.distance_km
		,t.count_places+1
	from
		travel t
	join schoolofit.route r on
		t.last_id = r.from_place
	join schoolofit.city c on
		c.id = r.to_place


	)
select
	_path
	,total_distance
	,count_places _no_hops_count
from
	travel
where
	last_id=6

order by
	total_distance





