CREATE PROCEDURE AddCar
    @LicencePlat nvarchar(40),
    @Color nvarchar(10),
    @Brand nvarchar(30),
    @FuelType nvarchar(20),
    @AvailableStartDate smalldatetime,
    @AvailableEndDate smalldatetime
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Car (LicencePlat, Color, Brand, FuelType, AvailableStartDate, AvailableEndDate)
    VALUES (@LicencePlat, @Color, @Brand, @FuelType, @AvailableStartDate, @AvailableEndDate);
END;

EXEC AddCar 
    @LicencePlat = '23 KC 110',
	@Color='Gray',
    @Brand = 'Toyota', 
    @FuelType = 'Petrol', 
    @AvailableStartDate = '2024-01-01', 
    @AvailableEndDate = '2024-01-31'