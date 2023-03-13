select
	sales_id
	,product
	,sales_dated_on
	,sales_amount
	,sum(sales_amount) over(order by sales_dated_on rows between unbounded preceding and current row) as _running_total
	,(sales_amount *1.0)
	/sum(sales_amount) over(rows between unbounded preceding and unbounded following) * 100 as "_revenue_percentage"
from
	schoolofit.sales_metrics
order by sales_dated_on;