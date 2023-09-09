/*a. What is the revenue and profit from each country outside the USA?*/

SELECT t.CountryRegionCode, SUM(soh.TotalDue) AS Revenue, SUM(soh.TotalDue - soh.SubTotal) AS Profit
FROM Sales.SalesOrderHeader AS soh
INNER JOIN Sales.SalesTerritory AS t ON soh.TerritoryID = t.TerritoryID

WHERE t.CountryRegionCode != 'US'
GROUP BY t.CountryRegionCode;
