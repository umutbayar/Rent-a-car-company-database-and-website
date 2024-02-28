CREATE VIEW CustomerCountByProvinceView
AS
SELECT 
    Province,
    COUNT(CustomerID) AS CustomerCount
FROM CustomerAddress
GROUP BY Province;


SELECT * FROM CustomerCountByProvinceView;