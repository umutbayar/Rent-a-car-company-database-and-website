CREATE PROCEDURE DeleteCustomerOrder
    @OrderID int
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM CustomerOrder
    WHERE OrderID = @OrderID;
END;

 