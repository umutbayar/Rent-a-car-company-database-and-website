create procedure GetCustomerOrderData
as
Select c.LicencePlat,c.Color,c.FuelType,c.AvailableStartDate,c.AvailableEndDate,o.OrderID,cl.CarType,cu.CustomerID,cu.FirstName,cu.LastName,cu.Mail,cu.Gender,cu.PhoneNumber
From Car c , CarOrderLine cl,Customer cu ,OrderLine o
where o.CustomerID=cu.CustomerID and o.OrderID=cl.OrderID and cl.LicencePlat=c.LicencePlat

Exec GetCustomerOrderData