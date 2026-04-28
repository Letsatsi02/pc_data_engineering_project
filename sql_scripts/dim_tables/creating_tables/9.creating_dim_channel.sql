--creating dim channel table
create table [pc_sales_staging].[dbo].[Dim_Channel](
[ChannelID] INT IDENTITY (1,1) PRIMARY KEY,
[Channel] nvarchar (250) not null,
LoadDate datetime default getdate()
)
--inserting the values into dim channel
insert into [pc_sales_staging].[dbo].[Dim_Channel]([Channel])
Select distinct [Channel]
from [pc_sales_staging].[dbo].[raw_pc_data]
--Testing
select * from [pc_sales_staging].[dbo].[Dim_Channel]



