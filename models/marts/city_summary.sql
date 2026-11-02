-- Per city: how many orders, how many paid, and the paid revenue.
select
  city,
  count(*) as orders,
  countif(status = 'PAID') as paid_orders,
  sum(if(status = 'PAID', amount, 0)) as paid_revenue,
  safe_divide(countif(status = 'PAID'), count(*)) as paid_share
from {{ ref('stg_orders') }}
group by city
