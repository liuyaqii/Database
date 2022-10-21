select Id,ShipCountry,'Northamerican' as place
from "Order"
where Id>=15445 and ShipCountry in ('USA','Mexico','Canada')
UNION
select Id,ShipCountry,'Otherplace' as place
from "Order"
where Id>=15445 and ShipCountry not in ('USA','Mexico','Canada')
order by Id;

