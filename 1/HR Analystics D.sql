/* d. We are interested in knowing information about staff that are at organizational level 1
and 2. Detailing BusinessEntityID, Firstname, Lastname, Gender, Marital Status, City,
Province, and country where they stay. */

SELECT e.BusinessEntityID, p.FirstName, p.LastName, e.Gender, e.MaritalStatus as [Marital Status], a.City, s.Name as Province, c.Name as Country
FROM AdventureWorks2022.HumanResources.Employee e
INNER JOIN AdventureWorks2022.Person.Person p ON e.BusinessEntityID = p.BusinessEntityID
INNER JOIN AdventureWorks2022.Person.BusinessEntityAddress b ON p.BusinessEntityID = b.BusinessEntityID
INNER JOIN AdventureWorks2022.Person.Address a ON b.AddressID = a.AddressID
INNER JOIN AdventureWorks2022.Person.StateProvince s ON a.StateProvinceID = s.StateProvinceID
INNER JOIN AdventureWorks2022.Person.CountryRegion c ON s.CountryRegionCode = c.CountryRegionCode

WHERE e.OrganizationLevel IN (1, 2);
