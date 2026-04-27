--creating the dimension store table
drop table if exists [pc_sales_staging].[dbo].[Dim_Store]
create table [pc_sales_staging].[dbo].[Dim_Store](
[dateID] int identity (1,1) primary key,
[Shop_Name] nvarchar (250) not null,
[shop_Age] nvarchar (250) not null,
loadDate datetime default getdate()
)
--insert values into dimension date 
insert into  [pc_sales_staging].[dbo].[Dim_Store] ([Shop_Name],[Shop_Age])
Select distinct [Shop_Name],[Shop_Age]
from [pc_sales_staging].[dbo].[raw_pc_data];
--Testing--
Select * from [pc_sales_staging].[dbo].[Dim_Store] 
