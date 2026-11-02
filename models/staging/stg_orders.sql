-- One row per order, cleaned: city names trimmed, statuses upper-case.
select
  order_id,
  initcap(trim(city)) as city,
  upper(status) as status,
  cast(amount as numeric) as amount
from {{ source('shop', 'shop_orders') }}
