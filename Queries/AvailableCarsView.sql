CREATE VIEW AvailableCarsView
AS
SELECT 
    LicencePlat,
    Color,
    Brand,
    FuelType,
    Price
FROM Car
WHERE GETDATE() BETWEEN AvailableStartDate AND AvailableEndDate;

SELECT * FROM AvailableCarsView;