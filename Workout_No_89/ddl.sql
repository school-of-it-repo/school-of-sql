/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------

Group the occupation.
Note : The empty cell data for columns with less than the maximum number of names per occupation
(in this case, the Professor and Actor columns) are filled with NULL values.

*/

create table schoolofit.Occupations
(
name varchar(20)
,occupation varchar(30)
);

insert into schoolofit.Occupations
(name,occupation)
values
('Samantha','Doctor'),
('Julia','Actor'),
('Maria','Actor'),
('Meera','Singer'),
('Ashely','Professor'),
('Ketty','Professor'),
('Christeen','Professor'),
('Jane','Actor'),
('Jenny','Doctor'),
('Priya','Singer');


 select *
  from schoolofit.Occupations