CREATE TRIGGER AfterInsertOrderLine
ON OrderLine
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @NewOrderID INT;
    DECLARE @NewCustomerID INT;
    SELECT @NewOrderID = i.OrderID,
           @NewCustomerID = i.CustomerID
    FROM inserted i
    INNER JOIN CustomerOrder co ON i.OrderID = co.OrderID
	INNER JOIN Customer c ON C.CustomerID =Ý.CustomerID
    DECLARE @NewBillID INT;
    INSERT INTO Payment (OrderDate, OrderAmount, PaymentType, TaxAmount)
    VALUES (GETDATE(), 0, 'Not Paid Yet', 0);
    SET @NewBillID = SCOPE_IDENTITY();
    INSERT INTO PaymentLine (CustomerID, BillID, OrderID)
    VALUES (@NewCustomerID, @NewBillID, @NewOrderID);
END;


