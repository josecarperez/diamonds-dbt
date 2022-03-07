select
    color, avg(price) as price
from
    {{ source('default','diamonds')}}
group by color
order by price desc