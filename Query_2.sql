
/*Создадим таблицы People и OrderProduct*/
CREATE TABLE People(
CustomerId UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID() PRIMARY KEY,
Name VARCHAR(150) NOT NULL,
RegistrationDateTime DateTime NOT NULL 
)




CREATE TABLE OrderProduct(
ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID() PRIMARY KEY,
ProductName VARCHAR(150) NOT NULL,
CustomerId UNIQUEIDENTIFIER NOT NULL,
PurchaiseDatetime DateTime NOT NULL 
FOREIGN KEY(CustomerId) REFERENCES dbo.People(CustomerId) 
)

/*Заполняем таблицы данными*/

INSERT INTO dbo.People(Name, RegistrationDateTime) VALUES('Olya', CONVERT(DateTime, '2015-05-01' , 111))
INSERT INTO dbo.People(Name, RegistrationDateTime) VALUES('Tolya', CONVERT(DateTime,'2015-07-12' , 111))
INSERT INTO dbo.People(Name, RegistrationDateTime) VALUES('Katay', CONVERT(DateTime,'2016-04-29', 111))
INSERT INTO dbo.People(Name, RegistrationDateTime) VALUES('Misha', CONVERT(DateTime,'2016-03-15' , 111))

INSERT INTO dbo.OrderProduct(ProductName, CustomerId, PurchaiseDatetime)
		 VALUES('milk','B4FDE8B4-4065-4ED9-AC9F-155C94AEAF3C', CONVERT(DateTime, '2016-03-15 15:00:00' , 111))
INSERT INTO dbo.OrderProduct(ProductName, CustomerId, PurchaiseDatetime)
		 VALUES('sour cream','B4FDE8B4-4065-4ED9-AC9F-155C94AEAF3C', CONVERT(DateTime, '2016-03-15 15:00:00' , 111))

INSERT INTO dbo.OrderProduct(ProductName, CustomerId, PurchaiseDatetime)
		 VALUES('milk','34D48343-3749-4C24-8AB5-94AA785FB06A', CONVERT(DateTime, '2016-04-29 17:00:00' , 111))

INSERT INTO dbo.OrderProduct(ProductName, CustomerId, PurchaiseDatetime)
		 VALUES('sour cream','474470F8-3FEF-463C-86DD-A133EC5EF253', CONVERT(DateTime, '2015-05-01 14:00:00' , 111))

INSERT INTO dbo.OrderProduct(ProductName, CustomerId, PurchaiseDatetime)
		 VALUES('milk','46D7DF64-ACD1-4CB3-9744-C0CC21C2FDBD', CONVERT(DateTime, '2015-07-12 13:30:00' , 111))


