/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------

Write an SQL query to Find the person who does belongs
to the same group.

For Example : Person ‘John’ from to ‘Group-A’ and associated peoples are
 ‘jack’,’gery’


*/

create table schoolofit.peoples
(
id serial
,name varchar(50)
,group_name varchar(50)
);

insert into schoolofit.peoples
(name,group_name)
values
('john','Group-A'),
('smith','Group-B'),
('kevin','Group-C'),
('rose','Group-D'),
('jack','Group-A'),
('andy','Group-B'),
('rayan','Group-B'),
('gery','Group-A'),
('emman','Group-C'),
('isac','Group-C');

select
    id
    ,name
    ,group_name
 from schoolofit.peoples;