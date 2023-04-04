/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Problem statement: find  first and second delivery method





*/
drop table schoolofit.delivery_method;
create table schoolofit.delivery_method
(
order_id int ,
ordered_by int,
delivery_method varchar(20)
);

insert into schoolofit.delivery_method
(order_id,ordered_by,delivery_method)
values
(1,1,'HOME'),
(1,1,'OFFICE'),
(2,2,'OFFICE'),
(2,2,'HOME'),
(3,1,'OFFICE'),
(3,1,'PARK'),
(4,1,'OFFICE');

select
	*
from
	schoolofit.delivery_method;

select
	order_id
	,ordered_by
	,(array_agg(delivery_method))[1]  as _first_delivery_option
	,coalesce ((array_agg(delivery_method))[2],'N/A')  as _second_delivery_option
from
	schoolofit.delivery_method
group by
	1,2
order by order_id;
