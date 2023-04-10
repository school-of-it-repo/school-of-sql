/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------

Find # no of visited floor and maximum
no. of visited floor and unique resources at each name level




*/
create table schoolofit.list_of_fruits
(name varchar(20));

insert into schoolofit.list_of_fruits
values
('apple'),('apple'),('apple'),('banana')
,('banana'),('banana'),('orange'),('orange'),('watermelon'),('watermelon')
,('apple'),('mango'),('plums');


explain with _data as
(
select name as _fruits,length(name) as _length from schoolofit.list_of_fruits order by name desc
)
select * from _data order by _fruits asc;

explain with _data as
(
select name as _fruits,length(name) as _length from schoolofit.list_of_fruits
)
select * from _data order by _fruits asc;