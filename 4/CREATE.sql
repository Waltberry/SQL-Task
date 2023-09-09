/*a. Using question (2f) create a table and insert the results for management to
reward customers.*/

CREATE TABLE TopCustomers (
    CustomerID INT PRIMARY KEY,
    FullName NVARCHAR(255),
    CountryRegionCode NVARCHAR(5),
    EmailAddress NVARCHAR(255),
    CONSTRAINT UC_CustomerID UNIQUE (CustomerID)
);


INSERT INTO 
