/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Problem statement: show each employee with their path to the CEO


*/
create table schoolofit.org_structure
(
id serial
,first_name varchar(50)
,last_name varchar(50)
,superior_id int
);
/
insert into schoolofit.org_structure
(first_name,last_name,superior_id)
values
('Person','A',null),
('Person','B',1),
('Person','C',1),
('Person','D',1),
('Person','E',2),
('Person','F',2),
('Person','G',3),
('Person','H',3),
('Person','I',4),
('Person','J',4);
/
select * from schoolofit.org_structure ;