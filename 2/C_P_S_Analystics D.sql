/*d. Show Customer that has placed at least five orders (Need subqueries to solve
this)*/

SELECT c.CustomerID
FROM Sales.Customer c
WHERE (
    SELECT COUNT(*)
    FROM Sales.SalesOrderHeader
    WHERE CustomerID = c.CustomerID
) >= 5;
