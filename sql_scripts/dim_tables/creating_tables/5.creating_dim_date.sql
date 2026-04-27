--creating the dimension date table
DROP TABLE IF EXISTS [pc_sales_staging].[dbo].[Dim_date];
create table [pc_sales_staging].[dbo].[Dim_date](
[dateID] INT IDENTITY (1,1) PRIMARY KEY,
[Ship_date] nvarchar (250) not null,
[Purchase_date] nvarchar (250) not null,
LoadDate datetime default getdate()
);
--insert values into dimension date table
insert into [pc_sales_staging].[dbo].[Dim_date] ([Ship_date],[Purchase_date])
Select Distinct[Ship_date],[Purchase_date]
FROM [pc_sales_staging].[dbo].[raw_pc_data];
--Testing--
Select * from [pc_sales_staging].[dbo].[Dim_date] 

