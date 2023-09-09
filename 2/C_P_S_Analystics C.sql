/*c. The distinct country where our customers come from.*/
SELECT DISTINCT s.CountryRegionCode, cu.Name AS Country

FROM Sales.SalesTerritory s
INNER JOIN Person.CountryRegion cu ON s.CountryRegionCode = cu.CountryRegionCode