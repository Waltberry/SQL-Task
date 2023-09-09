/*f. We are interested to know the top 10 customers by revenue, showing their
CustomerID, full name, Country, email address,*/

/*SELECT TOP 10 c.CustomerID, CONCAT(p.FirstName, ' ', p.LastName) AS FullName--, c.CountryRegionCode, c.EmailAddress
FROM Sales.Customer c
INNER JOIN Sales.Store s ON c.PersonID = s.SalesPersonID
INNER JOIN Person.Person p ON s.BusinessEntityID = p.BusinessEntityID
INNER JOIN Person.PersonPhone ph ON p.BusinessEntityID = ph.BusinessEntityID
INNER JOIN (
    SELECT CustomerID, SUM(TotalDue) AS TotalRevenue
    FROM Sales.SalesOrderHeader
    GROUP BY CustomerID
    ORDER BY TotalRevenue DESC
) AS RevenueRank ON c.CustomerID = RevenueRank.CustomerID
ORDER BY RevenueRank.TotalRevenue DESC; */

/*
SELECT DISTINCT s.CountryRegionCode, cu.Name AS Country

FROM Sales.SalesTerritory s
INNER JOIN Person.CountryRegion cu ON s.CountryRegionCode = cu.CountryRegionCode*/