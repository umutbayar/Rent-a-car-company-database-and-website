CREATE TRIGGER tr_UpdateCarStatus
ON CarOrderLine
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Car
    SET AvailableStartDate = NULL, AvailableEndDate = NULL
    FROM Car
    INNER JOIN inserted ON Car.LicencePlat = inserted.LicencePlat;
END;