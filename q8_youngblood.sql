SELECT RegionDescription, FirstName, LastName, bday
FROM
    (
        SELECT RegionId I,EmployeeId,FirstName,LastName,Birthdate,MAX(Employee.Birthdate)  bday
        FROM Employee
                 INNER JOIN EmployeeTerritory ON Employee.Id = EmployeeTerritory.EmployeeId
                 INNER JOIN Territory ON TerritoryId = Territory.Id
        GROUP BY RegionId
    )
        INNER JOIN Region ON Region.Id = I
GROUP BY EmployeeId
ORDER BY I;