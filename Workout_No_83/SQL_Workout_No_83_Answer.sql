/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Problem statement:





*/


with recursive print_character as
(
	select
		'*' as _ch
		,1 as _length

    union all
    	select
    		p._ch||'*',p._length + 1
    	from
    		print_character p
    	where
    		p._length < 10


)

select _ch from print_character


with recursive print_character as
(
	select
		repeat('*',1) as _ch
		,1 as _length

    union all
    	select
    		repeat('*',p._length + 1),p._length + 1
    	from
    		print_character p
    	where
    		p._length < 10


)

select _ch from print_character