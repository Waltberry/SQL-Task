/*a. Display the number of customers we have in the business not from USA.*/

SELECT COUNT(*) AS NonUSACustomer

FROM Sales.Customer as c
INNER JOIN Sales.SalesTerritory s ON c.TerritoryID = s.TerritoryID

WHERE s.CountryRegionCode != 'US';
