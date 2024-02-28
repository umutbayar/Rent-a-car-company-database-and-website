create table Customer(
CustomerID int not null,
FirstName nvarchar(40) not null,
LastName nvarchar(40) not null,
Mail nvarchar(40) not null,
Gender varchar(10) CHECK(Gender IN ('MAN','WOMAN')),
PhoneNumber nvarchar(11) unique,
PRIMARY KEY(CustomerId)
)

create table CustomerAddress(
CustomerID int not null,
Province nvarchar(40),
District nvarchar(40),
Street nvarchar(40),
ApartmentNumber nvarchar(40),
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
)

create table CustomerOrder(
OrderID int IDENTITY(100,1),
StartDate smalldatetime  DEFAULT CURRENT_TIMESTAMP,
ReturnDate smalldatetime,
PRIMARY KEY (OrderId)
)

create table OrderLine(
CustomerID int ,
OrderID int,
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
FOREIGN KEY (OrderID) REFERENCES CustomerOrder(OrderID)
)

create table Car(
LicencePlat nvarchar(40) not null,
Color nvarchar(10),
Brand nvarchar(30),
FuelType nvarchar(20),
Price int,
AvailableStartDate smalldatetime,
AvailableEndDate smalldatetime,
PRIMARY KEY (LicencePlat)
)

CREATE NONCLUSTERED INDEX idx_PriceNonClustered
ON Car (Price);

create table Payment(
BillID int IDENTITY(500,1),
OrderDate smalldatetime,
OrderAmount int,
PaymentType nvarchar(20),
TaxAmount int,
PRIMARY KEY (BillID)
)

ALTER TABLE Payment
DROP COLUMN TaxAmount
ALTER TABLE Payment
ADD TaxAmount AS (OrderAmount * 0.18)

create table CarOrderLine(
OrderID int,
LicencePlat nvarchar(40),
CarType nvarchar(25),
FOREIGN KEY (OrderID) REFERENCES CustomerOrder(OrderID),
FOREIGN KEY (LicencePlat) REFERENCES Car(LicencePlat)
)

create table PaymentLine(
CustomerID int,
BillID int,
OrderID int,
FOREIGN KEY (OrderID) REFERENCES CustomerOrder(OrderID),
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
FOREIGN KEY (BillID) REFERENCES Payment(BillID),
)

create table Reports(
ReportsID int IDENTITY(1000,1),
ReportsContext nvarchar(200),
ReportsDate smalldatetime  DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (ReportsID)
)

create table ReportsLine(
CustomerID int,
ReportsID int,
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
FOREIGN KEY (ReportsID) REFERENCES Reports(ReportsID)
)