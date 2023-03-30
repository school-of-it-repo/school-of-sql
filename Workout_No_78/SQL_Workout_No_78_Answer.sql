/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Problem statement: Print below expected output using Recursive

create table schoolofit.letters(id varchar(20));
insert into schoolofit.letters(id) values ('a'),('b');



Expected output:

x  |
---+
a  |
b  |
aa |
ba |
ab |
bb |
aaa|
baa|
aba|
bba|
aab|
bab|
abb|
bbb|

*/

create table schoolofit.letters(id varchar(20));
insert into schoolofit.letters(id) values ('a'),('b');



with recursive lett(x) as
(
	 select ''
	 union all
	 select id || lett.x from
	 schoolofit.letters,lett where length(lett.x) < 3
)
select x from lett
where x <> ''