/*b. What is the ID, full name and phone numbers of the customers?*/

SELECT c.CustomerID, CONCAT(p.FirstName, ' ', p.LastName) AS FullName, ph.PhoneNumber
FROM Sales.Customer as c
INNER JOIN Sales.Store s ON c.PersonID = s.SalesPersonID
INNER JOIN Person.Person p ON s.BusinessEntityID = p.BusinessEntityID
INNER JOIN Person.PersonPhone ph ON p.BusinessEntityID = ph.BusinessEntityID;
