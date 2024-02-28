CREATE PROCEDURE AddCustomerOrder
    @ReturnDate smalldatetime
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO CustomerOrder (ReturnDate)
    VALUES (@ReturnDate);
END;


EXEC AddCustomerOrder
    @ReturnDate = '2023-02-28 12:00:00';