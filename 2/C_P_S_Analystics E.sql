/*e. How many products in Product SubCategory 'Cranksets' have been sold to
countries outside USA.*/

SELECT SUM(sod.OrderQty) AS TotalCranksetSold
FROM Sales.SalesTerritory sh
INNER JOIN Sales.SalesOrderHeader soh ON sh.TerritoryID = soh.TerritoryID
INNER JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
INNER JOIN Production.Product p ON sod.ProductID = p.ProductID
INNER JOIN Production.ProductSubcategory ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID
WHERE ps.Name = 'Cranksets' AND sh.CountryRegionCode != 'US';
