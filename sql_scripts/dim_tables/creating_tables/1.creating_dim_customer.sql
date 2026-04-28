-- creating the dimesion table
drop table [pc_sales_staging].[dbo].[Dim_Customer]
create table[pc_sales_staging].[dbo].[Dim_Customer]
([CustomerID] INT IDENTITY (1,1) PRIMARY KEY,
[Customer_Name] nvarchar (250) Not Null,
[Customer_Surname] nvarchar (250) Not Null,
[Customer_Contact_Number] nvarchar (250) Not Null,
[Customer_Email_Address] nvarchar (250) Not Null,
LoadDate DateTime Default getdate()
)
Select * From [pc_sales_staging].[dbo].[Dim_Customer]
-- inserting the values into dimesion_customer table
Insert into [pc_sales_staging].[dbo].[Dim_Customer] (Customer_Name,Customer_Surname,Customer_Contact_Number,Customer_Email_Address)
Select Distinct Customer_Name,Customer_Surname,Customer_Contact_Number,Customer_Email_Address
from [pc_sales_staging].[dbo].[raw_pc_data]
-- Testing
Select * From [pc_sales_staging].[dbo].[Dim_Customer]