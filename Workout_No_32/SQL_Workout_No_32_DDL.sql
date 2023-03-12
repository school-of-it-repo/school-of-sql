/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------
Understanding SQL Joins and union concepts

*/


create table schoolofit.left_table
(id int);

create table schoolofit.right_table
(id int);


insert into
    schoolofit.left_table (id)
values
    (1),(3),(6),(7),(10);

insert into
    schoolofit.right_table (id)
values
    (1),(2),(3),(9),(null);

-------------------------
    -- INNER JOIN
--------------------------
select
	_left.id as _left_id
	,_right.id as _right_id
from
	schoolofit.left_table _left
inner join schoolofit.right_table _right
	on _left.id=_right.id;

-------------------------
    -- LEFT  JOIN
--------------------------
select
	_left.id as _left_id
	,_right.id as _right_id
from
	schoolofit.left_table _left
left join schoolofit.right_table _right
	on _left.id=_right.id;

-------------------------
    -- RIGHT  JOIN
--------------------------
select
	_left.id as _left_id
	,_right.id as _right_id
from
	schoolofit.left_table _left
right join schoolofit.right_table _right
	on _left.id=_right.id;

-------------------------
    -- FULL  JOIN
--------------------------
select
	_left.id as _left_id
	,_right.id as _right_id
from
	schoolofit.left_table _left
full join schoolofit.right_table _right
	on _left.id=_right.id;

-------------------------
    -- CROSS  JOIN
--------------------------
select
	_left.id as _left_id
	,_right.id as _right_id
from
	schoolofit.left_table _left
cross join schoolofit.right_table _right;


-------------------------
    -- UNION  JOIN
--------------------------
select id as id from schoolofit.left_table
union
select id as id from schoolofit.right_table;

-------------------------
    -- UNION ALL JOIN
--------------------------
select id as id from schoolofit.left_table
union all
select id as id from schoolofit.right_table;



