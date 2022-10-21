
select CompanyName,round(round(sum(CASE WHEN (ShippedDate>"Order".RequiredDate)THEN 1 ELSE 0 END ),4)/count(*)*100,2) as percentage
from "Order",Shipper
where "Order".ShipVia=Shipper.Id
group by CompanyName
order by percentage;