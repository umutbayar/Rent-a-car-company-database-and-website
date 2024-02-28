CREATE PROCEDURE DecreaseCarPrices
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE Car
    SET Price = Price - CAST(Price * 0.10 AS INT)
	From Car 
    PRINT 'Vehicle Values ​​updated'
END;

EXEC DecreaseCarPrices;