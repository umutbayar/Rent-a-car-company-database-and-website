CREATE PROCEDURE CalculateTotalTaxForAllPayments
AS
BEGIN
    SET NOCOUNT ON

    DECLARE @TotalTax INT

    SELECT @TotalTax = SUM(TaxAmount)
    FROM Payment
    PRINT 'Total Tax for All Payments: ' + CAST(@TotalTax AS NVARCHAR(10))

END;

EXEC CalculateTotalTaxForAllPayments