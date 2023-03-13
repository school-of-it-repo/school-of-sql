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


WITH take10(list_of_numbers) AS
(SELECT 0
  UNION ALL
 SELECT
  list_of_numbers+1
  FROM take10
  WHERE list_of_numbers < 10)
SELECT * FROM take10;