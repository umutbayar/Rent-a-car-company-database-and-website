CREATE VIEW AverageCarPricesView
AS
SELECT 
    Brand,
    AVG(Price) AS AveragePrice
FROM Car
GROUP BY Brand;


SELECT * FROM AverageCarPricesView;
