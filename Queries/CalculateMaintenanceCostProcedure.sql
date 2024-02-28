CREATE PROCEDURE CalculateMaintenanceCost
    @LicencePlat nvarchar(40)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @CarPrice INT;
    DECLARE @MaintenanceCost INT;
    SELECT @CarPrice = Price
    FROM Car
    WHERE LicencePlat = @LicencePlat;
    SET @MaintenanceCost = CAST(@CarPrice * 0.12 AS INT);
    PRINT 'Maintenance Cost for LicencePlat ' + @LicencePlat + ': ' + CAST(@MaintenanceCost AS NVARCHAR(10));

END;

EXEC CalculateMaintenanceCost @LicencePlat = '34 BYV 361';

