CREATE PROCEDURE UpdateCustomer
    @CustomerID int,
    @FirstName nvarchar(40),
    @LastName nvarchar(40),
    @Mail nvarchar(40),
    @Gender varchar(10),
    @PhoneNumber nvarchar(11)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Customer
    SET FirstName = @FirstName,
        LastName = @LastName,
        Mail = @Mail,
        Gender = @Gender,
        PhoneNumber = @PhoneNumber
    WHERE CustomerID = @CustomerID;
END;

