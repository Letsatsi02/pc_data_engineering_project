--creating dim priority table
drop table [pc_sales_staging].[dbo].[Dim_Priority]
create table[pc_sales_staging].[dbo].[Dim_Priority](
[PriorityID] INT IDENTITY (1,1) PRIMARY KEY,
[Priority] nvarchar (250) not null,
LoadDate datetime default getdate()
)
--inserting the values into dim priority 
Insert into [pc_sales_staging].[dbo].[Dim_Priority]([Priority])
Select Distinct [Priority]
from [pc_sales_staging].[dbo].[raw_pc_data]
--Testing
select * from [pc_sales_staging].[dbo].[Dim_Priority]