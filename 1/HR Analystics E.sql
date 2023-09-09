/*e. Find the First name, Last name, Country, addresses, phone number (With phone
number prefix based on country), age and department of all staff in the organizational
levels being investigated.*/

SELECT p.FirstName as [First name], p.LastName as [Last name], c.Name as Country, a.AddressLine1 as Address,
		c.CountryRegionCode + ph.PhoneNumber as [Phone number], DATEDIFF(YEAR, e.BirthDate, GETDATE()) AS Age, d.Name AS Department
FROM AdventureWorks2022.HumanResources.Department d
INNER JOIN AdventureWorks2022.HumanResources.EmployeeDepartmentHistory edh ON d.DepartmentID = edh.DepartmentID
INNER JOIN AdventureWorks2022.HumanResources.Employee e ON edh.BusinessEntityID = e.BusinessEntityID
INNER JOIN AdventureWorks2022.Person.Person p ON e.BusinessEntityID = p.BusinessEntityID
INNER JOIN AdventureWorks2022.Person.PersonPhone ph ON p.BusinessEntityID = ph.BusinessEntityID
INNER JOIN AdventureWorks2022.Person.BusinessEntityAddress b ON p.BusinessEntityID = b.BusinessEntityID
INNER JOIN AdventureWorks2022.Person.Address a ON b.AddressID = a.AddressID
INNER JOIN AdventureWorks2022.Person.StateProvince s ON a.StateProvinceID = s.StateProvinceID
INNER JOIN AdventureWorks2022.Person.CountryRegion c ON s.CountryRegionCode = c.CountryRegionCode

WHERE e.OrganizationLevel IN (1, 2);
