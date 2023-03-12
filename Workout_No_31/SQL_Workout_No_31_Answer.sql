with _cleaned_data as (
select
	regexp_split_to_table(likes, ',') as dishes
from
	schoolofit.food
),
find_no_of_likes as (
select
	dishes
	,
	count(*) as _no_of_likes
	,
	dense_rank () over (
order by
	count(*) desc) as _most_likes_rank
from
	_cleaned_data
group by
	dishes

)
select
	dishes
	,
	_no_of_likes as number_of_likes
	,
	_most_likes_rank as rank_position
from
	find_no_of_likes
where
	_most_likes_rank = 1;