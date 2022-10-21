select c.CategoryName ,count(*) b
,round(avg(UnitPrice),2) c,min(UnitPrice) d, max(UnitPrice)e,sum(CASE WHEN UnitsOnOrder>=10 then UnitsOnOrder else 0 end)f
from Product p,Category c
where c.Id=p.CategoryId
group by c.CategoryName
order by CategoryId;