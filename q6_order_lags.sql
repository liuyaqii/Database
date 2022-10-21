
select z.Id,z.OrderDate,z.previousdate,round(julianday(OrderDate)-julianday(previousdate),2)
from (select Id,OrderDate,lag(OrderDate,1,OrderDate) over(order by OrderDate) previousdate
      from "Order"
      where CustomerId='BLONP'
      order by OrderDate
      limit 10) z;