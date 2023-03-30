/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Write an SQL query to find Level-2 employees



*/

create table schoolofit.hierarchical_tab
(
id int,
name varchar(20),
manager_id int
);

insert into schoolofit.hierarchical_tab
(id,name,manager_id)
values
(1,'Person-1',null),

(2,'Person-2',1),
(3,'Person-3',1),

(4,'Person-4',2),
(5,'Person-5',2),
(6,'Person-6',2),
(7,'Person-7',3),
(8,'Person-8',3),
(9,'Person-9',3),


(10,'Person-10',4),
(11,'Person-11',5),
(12,'Person-12',5),
(13,'Person-13',6),
(14,'Person-14',7),
(15,'Person-15',8),
(16,'Person-16',9);


select
	*
from
	schoolofit.hierarchical_tab ;

with recursive recur as
(
	select
		id
		,name
		,manager_id
		,0 as _level
	from
		schoolofit.hierarchical_tab
	where
		manager_id is null

	union all

	select
		ht.id
		,ht.name
		,ht.manager_id
		,r._level + 1
	from
		schoolofit.hierarchical_tab ht
		,recur r
	where ht.manager_id = r.id
)
select id,name,manager_id from recur
where _level=2
