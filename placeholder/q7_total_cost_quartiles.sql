

select Companyname,CustomerId,totalcost
from (select * ,ntile(4) over (order by totalcost)z
      from (select ifnull(Customer.CompanyName,'MISSING_NAME')Companyname,
                   "Order".CustomerId,round(sum(Quantity*UnitPrice),2)totalcost
            from "Order" inner join OrderDetail on OrderDetail.OrderId="Order".Id
            left join Customer on "Order".CustomerId=Customer.Id
            group by "Order".CustomerId))
where z=1
order by totalcost;