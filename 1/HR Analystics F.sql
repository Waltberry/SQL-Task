/*f. Find the current salaries of all staff and rank them based on organizational level.*/

SELECT p.FirstName, p.LastName, eph.Rate, 
       DENSE_RANK() OVER (PARTITION BY e.OrganizationLevel ORDER BY eph.Rate DESC) AS SalaryRank
FROM AdventureWorks2022.HumanResources.EmployeePayHistory eph
INNER JOIN AdventureWorks2022.HumanResources.Employee e ON eph.BusinessEntityID = e.BusinessEntityID
INNER JOIN AdventureWorks2022.Person.Person p ON e.BusinessEntityID = p.BusinessEntityID
