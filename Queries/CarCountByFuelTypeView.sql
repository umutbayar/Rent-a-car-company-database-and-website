CREATE VIEW CarCountByFuelTypeView
AS
SELECT 
    FuelType,
    COUNT(LicencePlat) AS CarCount
FROM Car
GROUP BY FuelType;

SELECT * FROM CarCountByFuelTypeView