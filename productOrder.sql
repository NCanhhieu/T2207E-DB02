create table Consumers(
ID int primary key,
Name nvarchar(100) not null,
Address nvarchar(100) not null,
Tel int 
);
create table Products(
ID int primary key,
Name nvarchar(100) not null unique,
Description text,
Unit nvarchar(100) not null,
Price decimal(12,4) not null check(Price > 0),
);
create table Orders(
Code int primary key,
Dayorder date check(Dayorder < getdate()),
TotalPrice decimal(12,4) not null check(TotalPrice > 0),
Qty int not null,
STT int,
ConsumerID int foreign key references Consumers(ID) not null
);

Create table ProductOrder(
ProductID int foreign key references Products(ID) not null,
OrderCode int foreign key references Orders(Code) not null
);