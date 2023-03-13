with _data as (
select
	lower(regexp_split_to_table('welcOme to School Of IT','')) as _char
)
select
	_char
	,count(*) _no_of_characters
from
	_data
group by
	_char
order by
case when  regexp_replace(_char,'\s+','','g') <>'' then count(*) else -1 end desc;


