--creating the dimension location table
drop table [pc_sales_staging].[dbo].[Dim_Location]
create table [pc_sales_staging].[dbo].[Dim_Location](
[LocationID] int identity (1,1) primary key,
[Country_or_state] nvarchar (250) not null,
[Province_or_City] nvarchar (250) not null,
[Continent] nvarchar (250) not null,
loadDate datetime default getdate()
)
--inserting the values into dimension_location table
insert into [pc_sales_staging].[dbo].[Dim_Location] (Country_or_state,Province_or_City,Continent)
Select distinct Country_or_state,Province_or_City,Continent
from [pc_sales_staging].[dbo].[raw_pc_data]
--Testing--
select * from [pc_sales_staging].[dbo].[Dim_Location] 

