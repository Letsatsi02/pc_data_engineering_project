--creating dim payment table
drop table [pc_sales_staging].[dbo].[Dim_payment]
create table[pc_sales_staging].[dbo].[Dim_payment](
[PaymentID] INT IDENTITY (1,1) PRIMARY KEY,
[Payment_Method] nvarchar (250) not null,
LoadDate Datetime default getdate()
)
Select * from [pc_sales_staging].[dbo].[Dim_payment]
--inserting the values into dimension payment
insert into [pc_sales_staging].[dbo].[Dim_payment] (Payment_Method)
Select distinct Payment_Method
from [pc_sales_staging].[dbo].[raw_pc_data]
