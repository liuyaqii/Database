select z.ProductName,z.CompanyName,z.ContactName
from (select ProductName,CompanyName,ContactName,min(OrderDate)
     from Customer c,Product p,"Order" o ,OrderDetail od
     where o.CustomerId=c.Id and od.OrderId=o.Id and od.ProductId=p.Id and p.Discontinued=1
     group by ProductName) z
group by z.ProductName;





