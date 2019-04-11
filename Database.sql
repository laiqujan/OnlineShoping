Create table Register(Username varchar(25) not null primary key,pass varchar(30) not null ,email varchar(30) not null
,mobileno varchar(15) not null,Address1 varchar(150) not null,Address2 varchar(150)
,postcode bigint not null,city varchar(20) not null)

create Table Item(ID int not null IDENTITY(1,1),Name varchar(30) not null,Quantity int not null
,ProductDescription varchar(5000) not null,Color varchar(20) not null,Size int not null,Price int not null
,Picadd varchar(200) not null, primary key(ID,Size,Color))

Create Table ItemOrder(Username varchar(25) not null references Register(Username)
,ONumber int not null  primary key identity(1,1),Name varchar(30) not null,Quantity int not null
,Price bigint not null,TotalPrice bigint not null,Picadd varchar(200) not null,isConformed int null)


CREATE TRIGGER trgAfterUpdate ON [dbo].[ItemOrder]
FOR UPDATE
AS
    declare @name varchar(30);
	declare @quan int;
	select @name=i.Name from inserted i;
	select @quan=i.Quantity from inserted i;	
    update Item set Quantity=Quantity-@quan where Name=@name;

GO
