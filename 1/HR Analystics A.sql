/* a. Print all the record of staff on organizational level 1 and 2 – Detailing
BusinessEntityID, Organizational level, Job titles, hire date, Birthdate, Marital status, and Gender required.
b. Arrange the employees in the order of when they were employed. */

SELECT BusinessEntityID, OrganizationLevel, JobTitle, HireDate, BirthDate, MaritalStatus, Gender
FROM AdventureWorks2022.HumanResources.Employee
WHERE OrganizationLevel IN (1, 2)
ORDER BY HireDate;